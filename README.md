# Claude Design System

Claude Code 스킬 — 프론트엔드 프로젝트의 디자인 시스템을 8가지 테마 중 선택하고, CSS 토큰으로 자동 적용합니다.

## 테마

| Theme | 설명 | 기본 모드 |
|-------|------|:---------:|
| **Tech Precision** | 데이터가 미학. 모노스페이스, 딥 다크, 그리드선 | Dark |
| **Neon Flux** | 미래에서 온 UI. 네온 glow, 글래스모피즘 | Dark |
| **Editorial Authority** | 절제된 권위감. 세리프 헤드라인, 여백, 하프톤 | Light |
| **Organic Warm** | 손의 온기. 종이 질감, 크림 톤, 둥근 곡선 | Light |
| **Luxury Minimal** | 침묵이 럭셔리. 극단적 여백, 얇은 세리프 | Light |
| **Brutalist Raw** | 날것의 충격. Hard shadow, 굵은 border, 직각 | Light |
| **Retro Analog** | 카세트테이프 향수. 빛바랜 색감, CRT 노이즈 | Light |
| **Playful Pop** | 컬러풀한 팝아트. 둥근 모서리, 밝은 배경 | Light |

각 테마는 3가지 조정 옵션 + 브랜드색 오버라이드 + 다크모드 지원을 제공합니다.

## 설치

### 방법 1: install.sh (권장)

```bash
git clone https://github.com/YOUR_USERNAME/claude-design-system /tmp/claude-design-system
cd your-project
bash /tmp/claude-design-system/install.sh
rm -rf /tmp/claude-design-system
```

### 방법 2: 수동 복사

```bash
git clone https://github.com/YOUR_USERNAME/claude-design-system /tmp/claude-design-system

# 스킬 복사
cp -r /tmp/claude-design-system/.claude/skills/design-system .claude/skills/

# 컨피규레이터 복사 (선택)
cp /tmp/claude-design-system/assets/design-preview.html .claude/

# 템플릿 복사
cp -r /tmp/claude-design-system/templates/design-rules .claude/skills/design-system/templates/

rm -rf /tmp/claude-design-system
```

## 사용법

### Claude Code에서

```
디자인 시스템 설정해줘
```

또는

```
디자인 테마를 Organic Warm으로 설정하고 브랜드색 #275864로 해줘
```

### 실행 흐름

```
STEP 1 → Theme 선택 (8가지 중 1개)
STEP 2 → 안전한 조정 (테마별 3가지 옵션)
STEP 3 → 브랜드색 + 다크모드
STEP 4 → 결과 요약 확인
STEP 5 → design-rules 생성 (.claude/skills/design-rules/)
STEP 6 → CSS 토큰 적용 (index.css + index.html)
```

### design-preview.html 사용 (선택)

브라우저에서 실시간으로 테마를 미리보고 선택할 수 있습니다:

```bash
open .claude/design-preview.html
```

선택 후 하단의 JSON을 Claude Code에 붙여넣으면 자동으로 적용됩니다.

## 생성되는 파일

### design-rules (STEP 5)

Claude Code가 UI 컴포넌트를 생성할 때 참조하는 **디자인 판단 기준**입니다.

```
.claude/skills/design-rules/
├── 00-theme.md         # Theme 이름 + 잠금 규칙
├── 01-typography.md    # 폰트 설정
├── 02-color.md         # 팔레트 + 브랜드색 + 다크모드
├── 03-space.md         # 밀도/여백 설정
├── 04-surface.md       # 텍스처/질감 설정
└── 05-components.md    # 컴포넌트 규칙
```

### CSS 토큰 (STEP 6)

Tailwind CSS v4 / shadcn/ui가 **실제로 렌더링**할 때 사용하는 값입니다.

- `index.css`: `@theme` 블록 (Light) + `.dark` 클래스 (Dark) + `@layer base` (Mood)
- `index.html`: Google Fonts 링크
- 컴포넌트: 하드코딩 색상 → 시맨틱 토큰 교체

## 호환성

- **CSS 프레임워크**: Tailwind CSS v4 (`@theme` 디렉티브)
- **UI 라이브러리**: shadcn/ui (`data-slot` 셀렉터)
- **프레임워크**: React, Vue, Svelte, Next.js 등 (CSS 토큰 기반이므로 프레임워크 무관)
- **Claude Code**: 최신 버전 권장

## 핵심 원칙

1. **다크모드 = 다크모드 지원.** Light mode가 기본 디자인, `.dark` 클래스가 토글 기능
2. **CSS 토큰 단일 소스.** 색상은 `index.css`의 `@theme` 블록에서만 정의. 컴포넌트에 `bg-white`, `text-gray-500` 같은 하드코딩 금지
3. **design-rules = 판단 기준, CSS 토큰 = 렌더링 값.** 둘 다 있어야 디자인이 일관됨

## 라이선스

MIT
