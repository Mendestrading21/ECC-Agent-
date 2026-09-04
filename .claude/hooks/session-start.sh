#!/usr/bin/env bash
# SessionStart hook — bootstrap this repo for Claude Code on the web.
#
# Installs the Node and Python toolchains the repo's lint/test lanes need,
# then applies ECC itself into the session's Claude home so its skills,
# agents, commands and rules are live from the first turn.
#
# Overrides:
#   ECC_PROFILE=<name>    install profile (default: full)
#   ECC_ENABLE_HOOKS=1    also install ECC's automatic hook runtime (off by default)
#   ECC_SKIP_PYTHON=1     skip the Python lane

set -euo pipefail

# Local checkouts already have their own environment; only bootstrap the
# ephemeral remote container.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:?CLAUDE_PROJECT_DIR is not set}"

echo "[ecc-bootstrap] repo: $PWD"

# --- Node -------------------------------------------------------------------
# The repo declares yarn@4.9.2 via packageManager, but Corepack cannot fetch
# that release through the sandbox egress proxy, so npm is the working path.
# npm rewrites the Berry-format yarn.lock as a side effect; restore it when it
# was pristine so the hook never leaves a dirty worktree.
yarn_lock_was_clean=0
if git diff --quiet -- yarn.lock 2>/dev/null; then
  yarn_lock_was_clean=1
fi

echo "[ecc-bootstrap] installing Node dependencies"
npm install --no-audit --no-fund --loglevel=error

if [ "$yarn_lock_was_clean" = "1" ]; then
  git checkout -- yarn.lock 2>/dev/null || true
fi

# --- Python -----------------------------------------------------------------
# Secondary lane (src/llm): ruff, mypy and pytest, matching .github/workflows/ci.yml.
# Best effort — a failure here must not stop the session from starting.
if [ "${ECC_SKIP_PYTHON:-}" != "1" ] && command -v python3 >/dev/null 2>&1; then
  echo "[ecc-bootstrap] installing Python dev dependencies"
  # PyYAML ships from the distro without a RECORD file, so pip cannot replace it.
  python3 -m pip install --quiet -e '.[dev]' --ignore-installed PyYAML \
    || echo "[ecc-bootstrap] warning: Python dev dependencies unavailable"
fi

# --- ECC --------------------------------------------------------------------
# Apply ECC into the session's Claude home so its skills, agents, commands and
# rules are loaded for this session.
ecc_profile="${ECC_PROFILE:-full}"
hooks_flag="--no-hooks"
if [ "${ECC_ENABLE_HOOKS:-}" = "1" ]; then
  hooks_flag="--enable-hooks"
fi

echo "[ecc-bootstrap] installing ECC (profile: $ecc_profile, $hooks_flag)"
node scripts/install-apply.js --target claude --profile "$ecc_profile" "$hooks_flag"

# --- Session environment ----------------------------------------------------
# Put the repo's binaries (eslint, markdownlint, c8) on PATH for the session.
if [ -n "${CLAUDE_ENV_FILE:-}" ]; then
  echo "export PATH=\"$PWD/node_modules/.bin:\$PATH\"" >> "$CLAUDE_ENV_FILE"
fi

echo "[ecc-bootstrap] done"
