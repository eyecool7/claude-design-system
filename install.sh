#!/bin/bash

# Claude Design System — install.sh
# Usage: bash /tmp/claude-design-system/install.sh
# Run from your project root directory.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$(pwd)"

echo ""
echo "🎨 Claude Design System 설치 중..."
echo "   대상 경로: $TARGET_DIR"
echo ""

# .claude 디렉토리 구조 생성
mkdir -p "$TARGET_DIR/.claude/commands"
mkdir -p "$TARGET_DIR/.claude/skills/design-system/templates"

# 스킬 복사
cp -r "$SCRIPT_DIR/.claude/skills/design-system/." \
      "$TARGET_DIR/.claude/skills/design-system/"

echo "   ✓ design-system 스킬 설치"

# /design 커맨드 복사
cp "$SCRIPT_DIR/commands/design.md" \
   "$TARGET_DIR/.claude/commands/design.md"

echo "   ✓ /design 커맨드 설치"

# design-preview.html 복사 (선택)
if [ -f "$SCRIPT_DIR/assets/design-preview.html" ]; then
  cp "$SCRIPT_DIR/assets/design-preview.html" \
     "$TARGET_DIR/.claude/design-preview.html"
  echo "   ✓ design-preview.html 설치"
fi

echo ""
echo "✅ 설치 완료!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  Claude Code 채팅창에서 실행:"
echo ""
echo "    /design"
echo ""
echo "  브라우저 미리보기 (선택):"
echo ""
echo "    open .claude/design-preview.html"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
