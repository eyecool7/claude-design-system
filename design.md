# /design

프로젝트의 디자인 DNA를 결정하고 CSS 토큰으로 적용합니다.
**Theme → 안전한 조정** 2단계로 진행합니다.

---

## 실행 전 확인

이 커맨드를 실행하기 전에 design-system 스킬이 설치되어 있는지 확인한다:

```
SKILL_ROOT = .claude/skills/design-system/
TEMPLATE_ROOT = .claude/skills/design-system/templates/design-rules/
```

설치되어 있지 않다면:
```
디자인 시스템 스킬이 설치되어 있지 않습니다.
아래 명령어로 설치 후 다시 실행해주세요:

git clone https://github.com/eyecool7/claude-design-system /tmp/claude-design-system
bash /tmp/claude-design-system/install.sh
rm -rf /tmp/claude-design-system
```

---

## STEP 1 — Theme 선택

아래 8가지 중 하나를 선택하게 안내한다.
이름 + 한 줄 설명 + 키워드만 보여준다.

```
어떤 디자인 테마를 원하시나요?

A. Editorial Authority
   절제된 권위감. 여백이 말하고, 타입이 구조를 만든다.
   → 세리프 헤드라인 / 모노크롬 / 하프톤 / 넓은 여백

B. Brutalist Raw
   날것의 충격. 규칙을 알고 의도적으로 깬다.
   → Hard shadow / 굵은 border / 직각 / 강한 대비

C. Tech Precision
   데이터가 미학이다. 모든 요소는 기능을 따른다.
   → 모노스페이스 / 딥 다크 / 그리드선 / 색 최소화

D. Organic Warm
   손의 온기. 스크린이지만 만질 수 있을 것 같은 느낌.
   → 종이 질감 / 크림 톤 / 둥근 곡선 / 아날로그 타이포

E. Luxury Minimal
   침묵이 럭셔리다. 극단적 여백, 있는 듯 없는 듯.
   → 얇은 세리프 / 극단적 여백 / 골드·실버 포인트

F. Neon Flux
   미래에서 온 UI. 빛이 새어나오는 인터페이스.
   → 네온 glow / 글래스모피즘 / 딥 다크 / 사이버펑크

G. Retro Analog
   카세트테이프의 향수. 빛바랜 아날로그 감성.
   → 빛바랜 색감 / CRT 노이즈 / 레트로 타이포 / 그레인

H. Playful Pop
   컬러풀한 팝아트. 에너지 넘치고 친근하다.
   → 밝은 원색 / 둥근 모서리 / 굵은 아웃라인 / 밝은 배경
```

사용자가 선택하면 STEP 2로 진행한다.

---

## STEP 2 — 안전한 조정 옵션

선택된 Theme에 따라 해당 블록만 보여준다.
각 항목은 A/B/C 형태로 제시. 기술 용어 최소화.

### A. Editorial Authority

```
3가지를 정합니다.

1. 색온도
   A) 차갑게 — 블루·그레이 계열
   B) 따뜻하게 — 크림·세피아 계열

2. 밀도
   A) Airy — 넓은 여백
   B) Compact — 타이트한 그리드

3. 텍스처
   A) Clean — 텍스처 없음
   B) Subtle — 미세한 노이즈
   C) Expressive — 하프톤 느낌

[잠금] 세리프+산세리프 혼합 / 2색 이하 / Soft shadow 없음
```

### B. Brutalist Raw

```
3가지를 정합니다.

1. 배경
   A) 백지 위 — 흰 배경
   B) 역전 — 검은 배경

2. 포인트 색
   A) 원색 1개 — 빨강/노랑/파랑 중
   B) 무채색만

3. 그리드 파괴 강도
   A) Mild — 비대칭이지만 읽기 편함
   B) Full — 요소가 겹치고 넘침

[잠금] 모서리 0px / Hard shadow만 / border 2px 이상
```

### C. Tech Precision

```
3가지를 정합니다.

1. 배경 모드
   A) Dark — 딥 다크
   B) Light — 흰 배경 + 그리드선

2. 포인트 색
   A) Terminal Green
   B) Electric Blue
   C) Amber

3. 정보 밀도
   A) Focused — 핵심만, 여백 많음
   B) Dense — 대시보드처럼 빽빽하게

[잠금] 모노스페이스 헤드라인 / Glow only / 모서리 0~2px
```

### D. Organic Warm

```
3가지를 정합니다.

1. 질감 강도
   A) Subtle — 미세한 종이 느낌
   B) Tactile — 확실히 느껴지는 질감

2. 색 팔레트
   A) Cream & Ink
   B) Earth
   C) Sage

3. 곡선 강도
   A) Soft — 8~16px
   B) Flowing — 유기적 곡선

[잠금] 손글씨 느낌 세리프 / 차가운 색 금지 / Flat 배경 금지
```

### E. Luxury Minimal

```
3가지를 정합니다.

1. 배경
   A) Pure White
   B) Off-Black (#0A0A0A)

2. 포인트 소재
   A) Gold
   B) Silver
   C) 없음 — 타이포만으로

3. 타이포 강도
   A) Whisper — 작고 얇게
   B) Statement — 하나만 크게

[잠금] Light weight 폰트만 / 섹션 패딩 120px 이상 / 2색 이하
```

### F. Neon Flux

```
3가지를 정합니다.

1. 네온 색
   A) Cyan — #00FFFF 계열
   B) Magenta — #FF00FF 계열
   C) Green — #39FF14 계열

2. 글래스 강도
   A) Subtle — 살짝 투명한 패널
   B) Full — 확실한 글래스모피즘

3. 배경 깊이
   A) Deep Black — 순수 어둠
   B) Nebula — 딥 퍼플/네이비 그라디언트

[잠금] 딥 다크 배경 / 네온 glow / 모서리 8px 이상
```

### G. Retro Analog

```
3가지를 정합니다.

1. 연대
   A) 70s — 오렌지·브라운·베이지
   B) 80s — 핑크·퍼플·테알
   C) 90s — 그린·옐로·오렌지

2. 노이즈 강도
   A) Light — 미세한 그레인
   B) Heavy — CRT 스캔라인 느낌

3. 타이포 스타일
   A) Typewriter — 모노스페이스 레트로
   B) Groovy — 레트로 세리프

[잠금] 빛바랜 채도 / 그레인 텍스처 필수 / 완벽한 컬러 없음
```

### H. Playful Pop

```
3가지를 정합니다.

1. 에너지 레벨
   A) Cheerful — 밝고 친근하게
   B) Bold — 강렬하고 임팩트 있게

2. 메인 컬러 톤
   A) Warm — 옐로·코랄·오렌지
   B) Cool — 민트·라벤더·스카이블루
   C) Multi — 여러 색 혼합

3. 모서리 강도
   A) Rounded — 16~24px
   B) Bubbly — 32px+ 또는 pill

[잠금] 밝은 배경 / 굵은 아웃라인 / 무채색 금지
```

---

## STEP 3 — 브랜드 예외 처리

```
마지막으로 2가지만 확인합니다.

1. 브랜드 색상이 있나요?
   있다면 → 헥스코드를 알려주세요 (Accent를 이 색으로 오버라이드)
   없다면 → 테마 기본값 사용

2. 다크모드가 필요한가요?
   예 / 아니오
```

---

## STEP 4 — 요약 확인

아래 형식으로 요약 출력 후 확인받는다:

```
🎨 디자인 DNA 확정

Theme: [선택한 테마]
[조정 1]: [선택값]
[조정 2]: [선택값]
[조정 3]: [선택값]
브랜드색: [있음/없음]
다크모드: [예/아니오]

[잠금 규칙 요약]

이 내용으로 design-rules와 CSS 토큰을 생성할까요?
```

확인받으면 STEP 5 실행.

---

## STEP 5 — design-rules 생성

`.claude/skills/design-rules/` 디렉토리를 생성하고 6개 파일을 출력한다.

```
TEMPLATE_ROOT/.../[theme-name]/ 의 템플릿 파일 6개를 읽고
STEP 2~3의 선택값을 각 파일의 해당 섹션에 오버라이드한 뒤
.claude/skills/design-rules/ 에 저장한다.
```

생성 파일:
- `00-theme.md` — 테마 철학 + 잠금 규칙
- `01-typography.md` — 타입 스케일 + 역할 분배
- `02-color.md` — 팔레트 + 브랜드색 + 다크모드
- `03-space.md` — 밀도 + 여백 시스템
- `04-surface.md` — 질감 + 그림자 + 이미지 처리
- `05-components.md` — 버튼/카드/폼/뱃지 규칙

---

## STEP 6 — CSS 토큰 적용

프로젝트에서 CSS 파일을 찾아 토큰을 주입한다.

```
1. find . -name "*.css" 로 후보 파일 탐색
2. index.css 또는 globals.css 우선 선택
3. 선택된 테마의 CSS 변수 블록을 @theme 또는 :root 에 주입
4. 다크모드 선택 시 .dark { } 블록도 추가
5. 적용 파일 경로를 사용자에게 확인 후 저장
```

토큰 적용 불가 시 (CSS 파일 없음):
```
CSS 파일을 찾지 못했습니다.
design-rules는 생성됐습니다. CSS 토큰은 아래 파일에서 확인하세요:
.claude/skills/design-rules/02-color.md
```

---

## 완료 출력

```
✅ 디자인 시스템 설정 완료

Theme: [테마명]

.claude/skills/design-rules/
├── 00-theme.md
├── 01-typography.md
├── 02-color.md
├── 03-space.md
├── 04-surface.md
└── 05-components.md

CSS 토큰 적용: [파일 경로]

Claude Code가 컴포넌트를 생성할 때 위 규칙을 자동으로 참조합니다.
다시 설정하려면 /design 을 실행하세요.
```

---

## 주의사항

- 테마 선택 시 "좋은 선택", "추천" 코멘트 달지 않는다
- STEP 2 잠금 항목은 절대 조정 옵션으로 열지 않는다
- CSS 토큰 적용 전 반드시 파일 경로를 확인받는다
- 브랜드색이 테마 규칙과 충돌하면 경고 후 사용자 결정을 따른다
- 선택하지 않은 옵션의 내용은 최종 파일에서 제거한다
