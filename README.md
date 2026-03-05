# Claude Design System

Claude Code 스킬 — 프론트엔드 프로젝트의 디자인 시스템을 8가지 테마 중 선택하고, CSS 토큰으로 자동 적용합니다.

---

## 설치

```bash
git clone https://github.com/eyecool7/claude-design-system /tmp/claude-design-system
cd your-project          # ← 실제 프로젝트 폴더로 이동
bash /tmp/claude-design-system/install.sh
rm -rf /tmp/claude-design-system
```

> ```bash
> cd "/Users/name/My Projects/my-app"
> bash /tmp/claude-design-system/install.sh
> ```

설치 후 프로젝트 구조:
```
your-project/
└── .claude/
    ├── commands/
    │   └── design.md          ← /design 커맨드
    ├── skills/
    │   └── design-system/     ← 스킬 + 템플릿
    └── design-preview.html    ← 브라우저 미리보기 (선택)
```

---

## 사용법

설치 후 Claude Code 채팅창에서:

```
/design
```

테마 선택부터 CSS 토큰 적용까지 자동으로 진행됩니다.

### 실행 흐름

```
/design 입력
    │
    ▼
STEP 1  테마 선택 (8가지 중 1개)
    │
    ▼
STEP 2  안전한 조정 (테마별 3가지 옵션)
        ─ 어떻게 조합해도 테마가 깨지지 않는 옵션만 제공
        ─ 잠금 규칙(테마 정체성)은 변경 불가
    │
    ▼
STEP 3  브랜드색 + 다크모드 여부
    │
    ▼
STEP 4  결과 요약 확인 → 승인
    │
    ▼
STEP 5  design-rules 생성 (.claude/skills/design-rules/)
    │
    ▼
STEP 6  CSS 토큰 적용 (index.css 또는 globals.css)
```

---

## 테마

| 테마 | 설명 | 기본 모드 |
|------|------|-----------|
| **Editorial Authority** | 절제된 권위감. 세리프 헤드라인, 여백, 하프톤 | Light |
| **Brutalist Raw** | 날것의 충격. Hard shadow, 굵은 border, 직각 | Light |
| **Tech Precision** | 데이터가 미학. 모노스페이스, 딥 다크, 그리드선 | Dark |
| **Organic Warm** | 손의 온기. 종이 질감, 크림 톤, 둥근 곡선 | Light |
| **Luxury Minimal** | 침묵이 럭셔리. 극단적 여백, 얇은 세리프 | Light |
| **Neon Flux** | 미래에서 온 UI. 네온 glow, 글래스모피즘 | Dark |
| **Retro Analog** | 카세트테이프 향수. 빛바랜 색감, CRT 노이즈 | Light |
| **Playful Pop** | 컬러풀한 팝아트. 둥근 모서리, 밝은 배경 | Light |

각 테마는 **3가지 조정 옵션 + 브랜드색 오버라이드 + 다크모드**를 지원합니다.

---

## design-preview.html (선택)

브라우저에서 8가지 테마를 실시간으로 미리보고 선택할 수 있습니다.

```bash
open .claude/design-preview.html
```

테마 확정 버튼 클릭 → 팝업의 JSON을 Claude Code 채팅창에 붙여넣기 → 자동 적용

![design-preview](assets/preview-configurator.png)

---

## 생성 결과물

### `/design` 실행 후 생성되는 파일

```
.claude/skills/design-rules/
├── 00-theme.md         ← 테마 철학 + 잠금 규칙
├── 01-typography.md    ← 폰트 설정
├── 02-color.md         ← 팔레트 + 브랜드색 + 다크모드
├── 03-space.md         ← 밀도/여백 설정
├── 04-surface.md       ← 텍스처/질감 설정
└── 05-components.md    ← 컴포넌트 규칙
```

이 파일들은 Claude Code가 컴포넌트를 생성할 때 **판단 기준**으로 자동 참조됩니다.

### CSS 토큰

`index.css` (또는 `globals.css`)에 `@theme` 블록으로 주입됩니다.

```css
/* 예시: Tech Precision + Terminal Green */
@theme {
  --color-background: #0A0E17;
  --color-surface: #111827;
  --color-accent: #00FF41;
  --font-mono: "JetBrains Mono", monospace;
  /* ... */
}

.dark {
  /* 다크모드 토큰 */
}
```

---

## 핵심 원칙

1. **테마 = 조합 불가능한 것 + 조합 가능한 것의 분리**
   테마의 정체성을 결정하는 규칙은 잠금. 나머지만 조정 가능.

2. **CSS 토큰 단일 소스**
   색상은 `index.css`의 `@theme` 블록에서만 정의.
   컴포넌트에 `bg-white`, `text-gray-500` 같은 하드코딩 금지.

3. **design-rules = 판단 기준, CSS 토큰 = 렌더링 값**
   둘 다 있어야 디자인이 일관됩니다.

---

## 호환성

- **CSS 프레임워크**: Tailwind CSS v4 (`@theme` 디렉티브)
- **UI 라이브러리**: shadcn/ui (`data-slot` 셀렉터)
- **프레임워크**: React, Vue, Svelte, Next.js 등 (CSS 토큰 기반)

---

## 라이선스

MIT
