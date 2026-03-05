---
description: 프론트엔드 프로젝트의 디자인 시스템을 설정합니다. Theme 선택 → 조정 → design-rules 생성 → CSS 토큰 적용. UI 디자인, 테마 설정, 색상, 폰트, 다크모드, 스타일링 작업 시 사용.
triggers:
  - design system
  - 디자인 시스템
  - 디자인 설정
  - 테마 설정
  - theme setup
  - design tokens
  - CSS 토큰
globs:
  - "src/**/*.css"
  - "src/**/*.tsx"
  - "src/**/*.vue"
  - "src/**/*.svelte"
  - "**/*.css"
  - "**/index.html"
---

# Design System Skill

프로젝트의 디자인 DNA를 결정하고 CSS 토큰으로 적용합니다.
**Theme → 안전한 조정** 2단계로 진행합니다.

## 설치 경로 확인

이 스킬의 파일 위치를 확인한다:

```
SKILL_ROOT = 이 SKILL.md가 있는 디렉토리의 상위 경로
             (예: .claude/skills/design-system/)
```

에셋 파일 위치:
- `design-preview.html`: `[SKILL_ROOT]/../../design-preview.html` 또는 `.claude/design-preview.html`
- 템플릿: `[SKILL_ROOT]/templates/design-rules/[theme-name]/`

---

## 실행 흐름

### STEP 1 — Theme 선택

아래 8가지 중 하나를 선택하게 안내한다.

```
어떤 디자인 테마를 원하시나요?

A. Tech Precision
   데이터가 미학이다. 모든 요소는 기능을 따른다.
   → 모노스페이스 / 딥 다크 / 미세한 그리드선 / 색 최소화

B. Neon Flux
   미래에서 온 UI. 빛나는 네온, 글래스 표면, 그라데이션이 흐른다.
   → 글래스모피즘 / 네온 glow / 다크 배경 필수 / 그라데이션 accent

C. Editorial Authority
   절제된 권위감. 여백이 말하고, 타입이 구조를 만든다.
   → 여백 / 세리프 헤드라인 / 모노크롬 + 포인트 1색 / 하프톤 가능

D. Organic Warm
   손의 온기. 스크린이지만 만질 수 있을 것 같은 느낌.
   → 곡선 / 종이 질감 / 크림·어스톤 / 아날로그 타이포

E. Luxury Minimal
   있는 듯 없는 듯. 침묵이 럭셔리다.
   → 극단적 여백 / 얇은 세리프 / 골드·실버 포인트 / 마이크로 디테일

F. Brutalist Raw
   날것의 충격. 규칙을 알고 의도적으로 깬다.
   → 강한 대비 / 하드 섀도 / 굵은 테두리 / 비대칭 그리드

G. Retro Analog
   카세트테이프 감기는 소리. 빛바랜 색감과 노이즈의 향수.
   → 모노스페이스 / 채도 낮은 빛바랜 색 / CRT 노이즈 / offset shadow

H. Playful Pop
   진지함은 넣어둬! 컬러풀하고 귀엽고 재밌는 팝아트 에너지.
   → 둥근 모서리 / 밝은 배경 / 3색 이상 / Hard shadow + 굵은 border
```

또는 `.claude/design-preview.html`이 존재하면 사용자에게 안내:
```
💡 design-preview.html을 브라우저에서 열어 실시간 미리보기로 테마를 선택할 수도 있습니다.
   → open .claude/design-preview.html
   선택 후 하단의 JSON을 복사해서 붙여넣어 주세요.
```

---

### STEP 2 — 안전한 조정 옵션 제시

선택된 Theme에 따라 해당 블록만 보여준다.

#### A. Tech Precision

```
1. 배경 모드: Dark (딥 다크) / Light (흰 배경 + 그리드선)
2. 포인트 색: Terminal Green / Electric Blue / Amber
3. 정보 밀도: Focused (여백 많음) / Dense (빽빽하게)

[잠금] 모노스페이스 헤드라인 · glow만 허용 · 0~4px 모서리 · 애니메이션 없음
```

#### B. Neon Flux

```
1. 네온 색상: Cyan (사이버펑크) / Magenta (핫 핑크) / Lime (매트릭스)
2. 글래스 강도: Subtle (은은한 반투명) / Heavy (강한 블러 + 반사광)
3. 움직임: Static (정적, glow만) / Pulse (숨 쉬는 glow)

[잠금] 다크 배경 필수 · Glow/Neon 그림자만 · 글래스모피즘 표면 · 그라데이션 accent
```

#### C. Editorial Authority

```
1. 색온도: 차갑게 (블루·그레이) / 따뜻하게 (크림·세피아)
2. 밀도: Airy (넓은 여백) / Compact (타이트한 그리드)
3. 텍스처: Clean (플랫) / Subtle (미세한 노이즈) / Expressive (하프톤)

[잠금] 세리프 헤드라인 + 산세리프 본문 · 2색 이하 · Flat/Hard shadow만
```

#### D. Organic Warm

```
1. 질감 강도: Subtle (미세한 종이) / Tactile (확실한 질감) / Raw Paper (거친 크래프트)
2. 색 팔레트: Cream & Ink / Earth (테라코타) / Sage (세이지 그린)
3. 곡선 강도: Soft (8~16px) / Flowing (유기적 곡선)

[잠금] 세리프/인쇄체 폰트 · 따뜻한 subtle shadow · 흐름 우선 정렬
```

#### E. Luxury Minimal

```
1. 배경: Pure White (순백) / Off-Black (#0A0A0A)
2. 포인트 소재: Gold / Silver / No accent (타이포만)
3. 타이포 강도: Whisper (얇고 작게) / Statement (하나만 크게)

[잠금] 얇은 세리프 · 최소 120px 섹션 패딩 · 2색 이하 · 느린 페이드만
```

#### F. Brutalist Raw

```
1. 배경: 백지 위 (흰 배경) / 역전 (검은 배경)
2. 포인트 색: 빨강 / 노랑 / 파랑 / 무채색만
3. 그리드 파괴: Mild (비대칭이지만 읽기 편함) / Full (겹치고 넘침)

[잠금] Hard shadow만 · 굵은 border 2px+ · 굵은 산세리프 · 0px 모서리
```

#### G. Retro Analog

```
1. 시대: 70s (오렌지·브라운) / 80s (틸·핫핑크, CRT) / 90s (틸·그런지)
2. 노이즈: Static (CRT 스캔라인) / Clean (없음)
3. 낡은 정도: Worn (빛바래고 긁힌) / Fresh (새것 같은 레트로)

[잠금] 모노스페이스/슬래브 세리프 · 채도 낮은 색감 · offset shadow만
```

#### H. Playful Pop

```
1. 컬러 무드: Candy (핑크·옐로·민트) / Retro (오렌지·틸) / Neon Pop (형광)
2. 에너지 레벨: Chill (귀엽지만 차분) / Hyper (튀어나올 듯!)
3. 장식: Minimal (컬러만) / Sticker (이모지 + 스티커 느낌)

[잠금] 밝은 배경 · 둥근 모서리 16px+ · 3색 이상 · Hard shadow + 굵은 border
```

---

### STEP 3 — 브랜드 & 다크모드

```
마지막으로 2가지만 확인합니다.

1. 브랜드 색상이 있나요? → 있다면 헥스코드 입력, 없다면 기본값 사용
2. 다크모드 지원이 필요한가요? → 예 / 아니오
```

---

### STEP 4 — 결과 요약 확인

```
🎨 디자인 DNA 확정

Theme: [이름]
조정 1~3: [선택값]
브랜드색: [색상 또는 기본값]
다크모드: [예/아니오]

[잠금 항목]

이 내용으로 진행할까요?
```

---

### STEP 5 — design-rules 생성

`.claude/skills/design-rules/` 디렉토리에 6개 파일을 생성한다.

```
1. 선택된 Theme의 템플릿 파일 6개를 베이스로 읽는다
   → [SKILL_ROOT]/templates/design-rules/[theme-name]/
   (템플릿이 없으면 가장 유사한 기존 템플릿을 베이스로 사용)

2. STEP 2 조정값으로 오버라이드

3. STEP 3 브랜드색/다크모드 추가

4. .claude/skills/design-rules/ 에 쓴다
```

생성 파일:
```
.claude/skills/design-rules/
├── 00-theme.md         [Theme 이름 + 잠금 규칙]
├── 01-typography.md    [폰트 설정]
├── 02-color.md         [팔레트 + 브랜드색 + 다크모드]
├── 03-space.md         [밀도/여백 설정]
├── 04-surface.md       [텍스처/질감 설정]
└── 05-components.md    [컴포넌트 규칙]
```

---

### STEP 6 — CSS 토큰 추출 & 적용

**프론트엔드 프로젝트에서만 실행한다.** (index.css 또는 글로벌 CSS가 있을 때)

> **핵심 원칙:** design-rules(.md)는 Claude Code가 **판단**할 때 참조하는 규칙이다.
> CSS 토큰은 Tailwind/shadcn/ui가 **실제로 렌더링**할 때 사용하는 값이다.
> 둘 다 있어야 디자인이 일관된다.

#### 6-1. 디자인 값 소스

| 우선순위 | 소스 | 조건 |
|:-------:|------|------|
| 1 | `design-preview.html` THEMES 객체 | `.claude/design-preview.html` 존재 |
| 2 | 이 파일의 Theme별 기본값 | design-preview.html 없음 |

#### 6-2. Theme별 기본 CSS 값

##### Tech Precision
```
bg: #0A0E17, surface: #111827, surface-plus: #1F2937
border: #1F2937, text-primary: #F9FAFB, text-secondary: #9CA3AF
accent: #00FF41, radius: 4px
font-heading: 'JetBrains Mono', monospace
font-body: 'Inter', sans-serif
font-mono: 'JetBrains Mono', monospace
```

##### Neon Flux
```
bg: #05050F, surface: #0A0A20, surface-plus: #12123A
border: #1E1E55, text-primary: #F0F0FF, text-secondary: #8899AA
accent: #00F0FF, radius: 16px
font-heading: 'Space Grotesk', sans-serif
font-body: 'Inter', sans-serif
font-mono: 'JetBrains Mono', monospace
```

##### Editorial Authority
```
bg: #F8F9FA, surface: #F0F2F5, surface-plus: #E4E7EB
border: #D1D5DB, text-primary: #111827, text-secondary: #6B7280
accent: #1A1AFF, radius: 2px
font-heading: 'Cormorant Garamond', serif
font-body: 'Inter', sans-serif
font-mono: 'IBM Plex Mono', monospace
```

##### Organic Warm
```
bg: #FAF7F2, surface: #F2EDE4, surface-plus: #E8E0D2
border: #D5CCBD, text-primary: #2C1810, text-secondary: #6B5B4E
accent: #C26B3B, radius: 16px
font-heading: 'Lora', serif
font-body: 'Source Sans 3', sans-serif
font-mono: 'IBM Plex Mono', monospace
```

##### Luxury Minimal
```
bg: #FFFFFF, surface: #FAFAFA, surface-plus: #F5F5F5
border: #E5E5E5, text-primary: #171717, text-secondary: #737373
accent: #B8860B, radius: 0px
font-heading: 'Cormorant', serif
font-body: 'Inter', sans-serif
font-mono: 'IBM Plex Mono', monospace
```

##### Brutalist Raw
```
bg: #FFFFFF, surface: #F5F5F5, surface-plus: #E5E5E5
border: #000000, text-primary: #000000, text-secondary: #333333
accent: #FF0000, radius: 0px
font-heading: 'Oswald', sans-serif
font-body: 'Inter', sans-serif
font-mono: 'JetBrains Mono', monospace
```

##### Retro Analog
```
bg: #F2E8D5, surface: #EBE0CA, surface-plus: #E0D4BA
border: #C8B898, text-primary: #2A2218, text-secondary: #6B5E4A
accent: #D45B3A, radius: 4px
font-heading: 'Space Mono', monospace
font-body: 'IBM Plex Sans', sans-serif
font-mono: 'Space Mono', monospace
```

##### Playful Pop
```
bg: #FFF8E7, surface: #FFFFFF, surface-plus: #FFF0CC
border: #FFD166, text-primary: #2B2D42, text-secondary: #555B6E
accent: #EF476F, radius: 20px
font-heading: 'Fredoka', sans-serif
font-body: 'Nunito', sans-serif
font-mono: 'JetBrains Mono', monospace
```

#### 6-3. 조정값 오버라이드

```
1. 브랜드색 → --color-primary, --color-accent, --color-ring 교체
2. 곡선 강도 → radius 조정 (Soft: 12px, Flowing: 24px)
3. 텍스처 → @layer base body background-image 반영
4. 팔레트/색온도/시대 → bg, surface, text 교체
```

#### 6-4. Tailwind v4 @theme 매핑

```
bg           → --color-background
surface      → --color-card, --color-popover
surface-plus → --color-secondary, --color-muted
border       → --color-border, --color-input
text-primary → --color-foreground, --color-card-foreground
text-secondary → --color-muted-foreground
accent       → --color-primary, --color-accent, --color-ring
radius       → --radius-lg (sm/md/xl 비례 계산)
font-*       → --font-heading, --font-body, --font-mono
```

생성 CSS 구조:
```css
@import "tailwindcss";

@theme {
  --color-background: [bg];
  --color-foreground: [text-primary];
  --color-card: [surface];
  --color-card-foreground: [text-primary];
  --color-popover: [surface];
  --color-popover-foreground: [text-primary];
  --color-primary: [accent/브랜드];
  --color-primary-foreground: [대비색];
  --color-secondary: [surface-plus];
  --color-secondary-foreground: [text-primary];
  --color-muted: [surface-plus];
  --color-muted-foreground: [text-secondary];
  --color-accent: [accent/브랜드];
  --color-accent-foreground: [대비색];
  --color-destructive: #C44;
  --color-border: [border];
  --color-input: [border];
  --color-ring: [accent/브랜드];
  --radius-sm: [r-4]px; --radius-md: [r-2]px;
  --radius-lg: [r]px; --radius-xl: [r+8]px;
  --font-heading: [font-heading];
  --font-body: [font-body];
  --font-mono: [font-mono];
}
```

#### 6-5. 다크모드 .dark 클래스

다크모드 지원 시에만 생성. Light → Dark 변환:
```
bg → HSL L 8~12%, surface → L +4~6%, border → L +8%
text-primary → 밝게 반전, accent → 밝기 +20%
```

Theme별 다크 톤:
```
Tech/Neon: 이미 다크 기본 → Light 추가 생성
Editorial: #0F1117, Organic: #1A1410, Luxury: #0A0A0A
Brutalist: #000000, Retro 70s/90s: #1A1610, Retro 80s: 이미 다크
Playful: #1A1A2E
```

#### 6-6. Mood CSS (@layer base)

Theme의 잠금 항목을 `@layer base`로 변환. `[data-slot="button"]`, `[data-slot="card"]` 등 shadcn/ui 슬롯 셀렉터 사용.

각 Theme별 mood CSS 참조: design.md 또는 design-preview.html의 moodClass.

#### 6-7. Google Fonts

```html
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=[fonts]&display=swap" rel="stylesheet" />
```

Theme별 폰트:
```
Tech:      JetBrains Mono + Inter
Neon:      Space Grotesk + Inter + JetBrains Mono
Editorial: Cormorant Garamond + Inter + IBM Plex Mono
Organic:   Lora + Source Sans 3 + IBM Plex Mono
Luxury:    Cormorant + Inter + IBM Plex Mono
Brutalist: Oswald + Inter + JetBrains Mono
Retro:     Space Mono + IBM Plex Sans
Playful:   Fredoka + Nunito + JetBrains Mono
```

#### 6-8. 파일 쓰기

```
1. index.css → @import "tailwindcss" + @theme + .dark + @layer base
2. index.html → Google Fonts 링크 추가
3. 하드코딩 색상 → 시맨틱 토큰 교체
   bg-white → bg-background, text-gray-* → text-foreground/text-muted-foreground
   bg-blue-* → bg-primary, border-gray-* → border-border
```

#### 6-9. 검증

```
1. npx tsc --noEmit
2. 브라우저: 배경=bg, 카드 구분됨, 텍스트 읽힘, accent 적용, 폰트 적용
3. 다크모드 토글 확인 (.dark 클래스)
```

---

## 주의사항

- Theme 선택 전에 "좋은 선택"이나 "추천" 코멘트를 달지 않는다
- 잠금 항목은 절대 조정 옵션으로 열어주지 않는다
- design-rules(.md)는 **판단 기준 문장**, CSS 토큰은 **정확한 CSS 값**
- **다크모드 = 다크모드 지원.** Light mode가 기본, `.dark` 클래스가 토글.
  (예외: Tech, Neon, Retro 80s는 다크 기본)
- **CSS 토큰 단일 소스:** 색상은 `@theme` 블록에서만 정의.
  컴포넌트에 `bg-white`, `text-gray-500` 같은 하드코딩 금지.
