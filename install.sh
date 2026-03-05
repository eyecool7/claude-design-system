#!/bin/bash
# Claude Design System — installer
# Usage: bash install.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_DIR="$(pwd)"

echo "🎨 Claude Design System 설치"
echo "   대상: $TARGET_DIR"
echo ""

# 1. Copy skill
mkdir -p "$TARGET_DIR/.claude/skills/design-system"
cp "$SCRIPT_DIR/.claude/skills/design-system/SKILL.md" "$TARGET_DIR/.claude/skills/design-system/SKILL.md"
echo "✅ SKILL.md → .claude/skills/design-system/"

# 2. Copy design-preview.html
cp "$SCRIPT_DIR/assets/design-preview.html" "$TARGET_DIR/.claude/design-preview.html"
echo "✅ design-preview.html → .claude/"

# 3. Copy templates
mkdir -p "$TARGET_DIR/.claude/skills/design-system/templates"
cp -r "$SCRIPT_DIR/templates/design-rules" "$TARGET_DIR/.claude/skills/design-system/templates/"
echo "✅ templates/ → .claude/skills/design-system/templates/"

echo ""
echo "🎉 설치 완료!"
echo ""
echo "사용법:"
echo "  1. Claude Code에서: 디자인 시스템 설정해줘"
echo "  2. 또는 브라우저에서 미리보기: open .claude/design-preview.html"
echo ""
