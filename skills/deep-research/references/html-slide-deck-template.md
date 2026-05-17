# HTML Slide Deck Template

Use this reference when the user asks deep-research to convert a report into a PPT-style HTML deck, interactive HTML presentation, slideshow, or slide-style web presentation.

## Purpose

A slide deck is not a full-text report. It should preserve the research's core logic, evidence-backed claims, implications, and recommendations, but may compress wording, split content into slides, and redesign information density for presentation.

## Required Output

- Produce one complete standalone HTML file.
- Include internal CSS and JavaScript.
- Use Tailwind CSS via CDN when internet rendering is acceptable, and include enough custom CSS for layout, transitions, and 16:9 slides.
- Use an open icon library via CDN, such as Font Awesome or Heroicons. Do not use emoji as icons.
- Use semantic `<section>` elements for slides.
- Use a 16:9 full-screen slide stage.
- Add keyboard navigation: ArrowLeft/ArrowRight and PageUp/PageDown.
- Add smooth slide transitions such as fade/slide.
- Add a slide counter and optional visible previous/next controls.
- Include a final thank-you slide with a QR-code placeholder when useful.

## Design Direction

- Style: high-end technology presentation, dark background, bright text, subtle gradients, neon purple/cyan accents.
- Avoid decorative clutter. Use strong typographic hierarchy, aligned grids, cards, diagrams, timelines, and comparison layouts.
- H1 can be large, but must fit in 16:9 without awkward wrapping. Use `clamp()` and a max-width.
- Use cards for key terms, data points, product recommendations, architecture layers, risks, and open-source references.
- Prefer 8-12 slides for a concise executive presentation; use more only when the report requires it.

## Content Adaptation Rules

- Convert research into a presentation narrative, not a page-by-page copy of the report.
- Lead with the central thesis and decision implication.
- Merge dense evidence into timelines, matrices, architecture maps, and comparison cards.
- Move detailed sources and open-source projects to appendix slides.
- If the user is a product manager or asks about business planning, include slides for first-principles analysis, product opportunity, MVP, differentiation, and risks.
- Do not include wording that reveals report construction artifacts, such as "this section was added later" or "should be inserted".

## Recommended Slide Outline

1. Cover: title, subtitle, presenter, date.
2. Agenda: icon card grid.
3. Executive thesis: 1 big judgment + 3 supporting cards.
4. Timeline: major shifts from original RAG to Knowledge Engine.
5. Architecture routes: Agentic RAG, GraphRAG, LLM Wiki, Long Context, Knowledge Engine.
6. Debate: why people say RAG is dead vs what is actually changing.
7. Deep dive: GraphRAG / LLM Wiki / Pinecone or other topic-specific core finding.
8. First-principles product opportunity.
9. MVP and phased roadmap.
10. Open-source landscape appendix.
11. Final recommendation.
12. Thank-you slide with QR placeholder.

## Implementation Notes

- Use a root `.deck` or `.slides` container and absolutely positioned `.slide` sections.
- Example transition pattern: `.slide { opacity: 0; transform: translateX(28px); } .slide.active { opacity: 1; transform: translateX(0); }`.
- Keep slide text short. Prefer 3-5 bullets or 3-4 cards per slide.
- If content overflows, split into another slide instead of shrinking below readable sizes.
- Include source names in small footer text where relevant; detailed links can go to appendix.

## Minimal JS Behavior

- Track `current` slide index.
- `show(index)` clamps range, toggles `.active`, updates counter and progress bar.
- Listen for `keydown` on ArrowRight/PageDown/Space to advance and ArrowLeft/PageUp to go back.
- Buttons call the same `show()` function.
