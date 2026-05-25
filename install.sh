#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="deep-research"
REPO_URL="${DEEP_RESEARCH_SKILL_REPO:-https://github.com/limubai360-source/deep-research-skill.git}"
HOST="auto"

usage() {
  cat <<'USAGE'
Install deep-research skill.

Usage:
  ./install.sh --host codex
  ./install.sh --host claude
  ./install.sh --host openclaw
  curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host codex

Options:
  --host codex|claude|openclaw|auto
  --help
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --host)
      HOST="${2:-}"
      shift 2
      ;;
    --host=*)
      HOST="${1#--host=}"
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

case "$HOST" in
  codex|claude|openclaw|auto) ;;
  *)
    echo "Invalid --host: $HOST" >&2
    usage >&2
    exit 1
    ;;
esac

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd || pwd)"
SOURCE_DIR="$SCRIPT_DIR"

if [ ! -f "$SOURCE_DIR/skills/$SKILL_NAME/SKILL.md" ]; then
  if ! command -v git >/dev/null 2>&1; then
    echo "git is required when install.sh is not run from a cloned repository." >&2
    exit 1
  fi
  TMP_DIR="$(mktemp -d)"
  trap 'rm -rf "$TMP_DIR"' EXIT
  git clone --depth 1 "$REPO_URL" "$TMP_DIR/deep-research-skill"
  SOURCE_DIR="$TMP_DIR/deep-research-skill"
fi

if [ ! -f "$SOURCE_DIR/skills/$SKILL_NAME/SKILL.md" ]; then
  echo "Cannot find skills/$SKILL_NAME/SKILL.md in $SOURCE_DIR" >&2
  exit 1
fi

detect_host() {
  if [ -n "${CODEX_HOME:-}" ] || [ -d "$HOME/.codex" ]; then
    echo "codex"
  elif [ -n "${CLAUDE_HOME:-}" ] || [ -d "$HOME/.claude" ] || command -v claude >/dev/null 2>&1; then
    echo "claude"
  elif [ -n "${OPENCLAW_HOME:-}" ] || [ -d "$HOME/.openclaw" ]; then
    echo "openclaw"
  else
    echo "codex"
  fi
}

if [ "$HOST" = "auto" ]; then
  HOST="$(detect_host)"
fi

case "$HOST" in
  codex)
    SKILLS_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"
    ;;
  claude)
    SKILLS_ROOT="${CLAUDE_HOME:-$HOME/.claude}/skills"
    ;;
  openclaw)
    SKILLS_ROOT="${OPENCLAW_HOME:-$HOME/.openclaw}/skills"
    ;;
esac

TARGET="$SKILLS_ROOT/$SKILL_NAME"
mkdir -p "$SKILLS_ROOT"
rm -rf "$TARGET"
cp -R "$SOURCE_DIR/skills/$SKILL_NAME" "$TARGET"

echo "Installed $SKILL_NAME for $HOST:"
echo "  $TARGET"
echo ""
echo "Restart or reload your agent session if it does not pick up new skills automatically."

if [ "$HOST" = "claude" ]; then
  CLAUDE_COMMANDS="${CLAUDE_HOME:-$HOME/.claude}/commands"
  mkdir -p "$CLAUDE_COMMANDS"
  cp "$SOURCE_DIR/.claude/commands/deep-research.md" "$CLAUDE_COMMANDS/deep-research.md"
  echo "Claude Code slash command installed:"
  echo "  $CLAUDE_COMMANDS/deep-research.md"
fi

if [ "$HOST" = "openclaw" ]; then
  echo ""
  echo "OpenClaw note:"
  echo "  Tell OpenClaw to read $TARGET/SKILL.md for deep research tasks."
  echo "  If your OpenClaw setup uses a different skills directory, set OPENCLAW_HOME before running this script."
fi
