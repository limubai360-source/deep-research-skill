# HTML Report Template

Use this reference when the user asks deep-research to produce a polished HTML report, web report, static report page, or an HTML version of a research memo.

## Design Goals

- Preserve the full research content. Do not compress the report just because it is converted to HTML.
- Make the page feel like a serious research brief, not a marketing landing page.
- Keep the first viewport useful: title, concise subtitle, metadata, and the beginning of the report should all be reachable without a large hero taking over the screen.
- Prefer neutral, readable styling over decorative effects. Use cards for report sections and repeated timeline events, not for nested decoration.
- Include a sticky table of contents on desktop and a normal top TOC on mobile.
- Use source links directly in the report; do not hide citations in decorative UI.

## Layout Rules

- Page max width: about 1120-1180px.
- Desktop layout: two columns, 240-280px TOC + fluid article column.
- Hero height: compact. Use `min-height: 240-280px`, not full-screen or half-screen.
- H1 size: `clamp(30px, 4vw, 50px)` or smaller for long Chinese titles. Avoid oversized titles that wrap awkwardly across the first viewport.
- Subtitle: 16-18px, max width about 900px, no more than 2-3 lines when possible.
- Section cards: 8px radius, subtle border, restrained shadow.
- Timeline cards: use a vertical line and compact event cards. Events should contain full text when the research calls for detail.
- Mobile: collapse to one column, keep hero compact, avoid horizontal overflow.

## Recommended CSS Skeleton

```html
<style>
  :root {
    --ink: #17202a;
    --muted: #596779;
    --line: #d9e1ea;
    --panel: #ffffff;
    --paper: #f5f7fb;
    --brand: #176b87;
    --brand-2: #b14f2a;
    --shadow: 0 18px 50px rgba(39, 58, 84, 0.12);
  }

  * { box-sizing: border-box; }

  body {
    margin: 0;
    color: var(--ink);
    background: linear-gradient(180deg, #eef4f8 0%, #f9fafc 36%, #f5f7fb 100%);
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", sans-serif;
    line-height: 1.72;
  }

  a { color: var(--brand); text-decoration-thickness: 1px; text-underline-offset: 3px; }

  .page { max-width: 1180px; margin: 0 auto; padding: 42px 24px 72px; }

  .hero {
    min-height: 260px;
    display: grid;
    align-items: end;
    padding: 32px 0 28px;
    border-bottom: 1px solid var(--line);
  }

  .eyebrow {
    margin: 0 0 16px;
    color: var(--brand-2);
    font-size: 14px;
    font-weight: 700;
    letter-spacing: 0;
    text-transform: uppercase;
  }

  h1 {
    max-width: 1060px;
    margin: 0;
    font-size: clamp(30px, 4vw, 50px);
    line-height: 1.12;
    letter-spacing: 0;
  }

  .subtitle {
    max-width: 920px;
    margin: 16px 0 0;
    color: var(--muted);
    font-size: 17px;
    line-height: 1.7;
  }

  .meta { display: flex; flex-wrap: wrap; gap: 10px; margin-top: 18px; }

  .pill {
    display: inline-flex;
    align-items: center;
    min-height: 34px;
    padding: 6px 12px;
    border: 1px solid #cbd7e2;
    border-radius: 999px;
    background: rgba(255, 255, 255, 0.72);
    color: #425267;
    font-size: 14px;
  }

  .layout { display: grid; grid-template-columns: 270px minmax(0, 1fr); gap: 40px; margin-top: 30px; }

  .toc {
    position: sticky;
    top: 24px;
    align-self: start;
    padding: 18px;
    border: 1px solid var(--line);
    border-radius: 8px;
    background: rgba(255, 255, 255, 0.82);
    box-shadow: 0 8px 22px rgba(39, 58, 84, 0.06);
  }

  .toc strong { display: block; margin-bottom: 10px; font-size: 14px; color: var(--muted); }
  .toc a { display: block; padding: 7px 0; color: #344357; font-size: 14px; text-decoration: none; }

  .section {
    margin-bottom: 34px;
    padding: 30px;
    border: 1px solid var(--line);
    border-radius: 8px;
    background: var(--panel);
    box-shadow: var(--shadow);
  }

  .section h2 { margin: 0 0 18px; font-size: 28px; line-height: 1.25; letter-spacing: 0; }
  .section h3 { margin: 24px 0 10px; color: #27384f; font-size: 19px; letter-spacing: 0; }
  .lead { font-size: 18px; color: #263346; }

  .callout {
    margin: 20px 0;
    padding: 18px 20px;
    border-left: 4px solid var(--brand);
    background: #eef7f9;
    border-radius: 6px;
  }

  .timeline { position: relative; padding-left: 24px; }
  .timeline::before { content: ""; position: absolute; top: 8px; bottom: 8px; left: 7px; width: 2px; background: linear-gradient(var(--brand), #6554a8, var(--brand-2)); }
  .event { position: relative; margin: 0 0 20px; padding: 18px 20px; border: 1px solid #dbe3ec; border-radius: 8px; background: #fbfcfe; }
  .event::before { content: ""; position: absolute; top: 25px; left: -24px; width: 12px; height: 12px; border: 3px solid #ffffff; border-radius: 50%; background: var(--brand); box-shadow: 0 0 0 1px var(--brand); }
  .date { display: inline-block; margin-bottom: 8px; color: var(--brand-2); font-size: 13px; font-weight: 800; }

  ul, ol { padding-left: 22px; }
  li { margin: 8px 0; }

  .verdict { padding: 22px; border: 1px solid #cad8d1; border-radius: 8px; background: #f0f8f4; }
  .sources { columns: 2; column-gap: 28px; font-size: 14px; }
  .sources li { break-inside: avoid; margin: 0 0 10px; }

  @media (max-width: 880px) {
    .page { padding: 28px 18px 56px; }
    .hero { min-height: 240px; }
    .layout { display: block; }
    .toc { position: static; margin-bottom: 24px; }
    .section { padding: 22px; }
    .sources { columns: 1; }
  }
</style>
```

## HTML Structure

```html
<main class="page">
  <header class="hero">
    <div>
      <p class="eyebrow">Deep Research · Topic</p>
      <h1>Report title</h1>
      <p class="subtitle">One concise sentence describing the research question and decision context.</p>
      <div class="meta">
        <span class="pill">Date: YYYY-MM-DD</span>
        <span class="pill">Mode: Standard research</span>
        <span class="pill">Core judgment: ...</span>
      </div>
    </div>
  </header>

  <div class="layout">
    <nav class="toc" aria-label="目录">
      <strong>目录</strong>
      <a href="#summary">执行摘要</a>
      <a href="#timeline">时间线</a>
      <a href="#findings">关键发现</a>
      <a href="#sources">来源</a>
    </nav>

    <article>
      <section class="section" id="summary">...</section>
      <section class="section" id="timeline">
        <div class="timeline">
          <div class="event"><span class="date">2026-01</span><h3>Event</h3><p>Full finding text.</p></div>
        </div>
      </section>
      <section class="section" id="sources"><ul class="sources">...</ul></section>
    </article>
  </div>
</main>
```

## Content Rules

- HTML conversion must be content-preserving: the HTML version should contain the same substantive findings, caveats, timeline details, and source links as the Markdown/report version.
- Do not turn a deep report into a short landing page. Visual hierarchy should help reading, not replace the research.
- For long titles, reduce font size or widen the title container rather than allowing awkward oversized wrapping.
- Do not use full-screen hero sections for research reports.
- If the report includes corrected framing, use neutral labels such as "Research Scope", "Terminology", or "Assumptions".
- After generating HTML, verify with a browser or static server when possible: title exists, TOC links exist, section count is plausible, source links are present, and the first viewport shows the report beginning rather than only a hero.
