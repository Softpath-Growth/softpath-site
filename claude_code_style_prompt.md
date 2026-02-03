# Claude Code Prompt: Softpath Website Style Update & Deployment

## Context

Softpath.co is a Jekyll site using the Minimal Mistakes theme, hosted on Firebase. The goal is to dramatically improve the visual appearance without changing the color scheme (red accent, dark text, light background) or switching themes.

You have two files to work with:
1. `softpath_custom_styles.scss` - Custom SCSS that adds visual hierarchy, cards, buttons, and layout improvements
2. `softpath_website_content_styled.md` - Updated page content with HTML structure that uses the new CSS classes

## Part 1: Add Custom Styles

### Step 1: Locate the SCSS directory

In Minimal Mistakes, custom styles typically go in:
- `_sass/` directory (for partials)
- `assets/css/main.scss` (imports)

Or there may be a `_sass/minimal-mistakes/` directory structure.

Look for where custom overrides are added. Common locations:
- `_sass/_custom.scss`
- `_sass/minimal-mistakes/_custom.scss`
- Direct inclusion in `assets/css/main.scss`

### Step 2: Add the custom stylesheet

Create or update the custom SCSS file with the contents of `softpath_custom_styles.scss`.

If using Minimal Mistakes default structure, create `_sass/_custom.scss` and ensure it's imported in `main.scss`:

```scss
// In assets/css/main.scss, add at the end:
@import "custom";
```

Or if there's already a custom file, append the styles.

### Step 3: Verify SCSS compiles

```bash
bundle exec jekyll build
```

Check for any SCSS compilation errors.

## Part 2: Update Page Content

### Step 4: Update each page

Reference `softpath_website_content_styled.md` for the exact content. Each page needs:

**Homepage (index.html or index.md):**
- Hero section with `.hero-section` class
- Services grid with `.services-grid` and `.service-card` classes
- Styled CTA button with `.btn` class

**About page:**
- Hero section
- Highlight box with `.highlight-box` class
- CTA link with `.cta-link` class

**Services page:**
- Multiple section blocks with `.section-block` class
- Feature lists with `.feature-list` and `.feature-list--check` classes
- Tools list with `.tools-list` class
- Process steps with `.process-steps` and `.process-step` classes
- Highlight box for the audit callout

**Work page:**
- Case studies with `.case-study`, `.case-study__type` classes
- Section dividers

**Contact page:**
- Contact methods with `.contact-method` classes

### Step 5: Handle Markdown + HTML

Jekyll/Minimal Mistakes allows HTML within Markdown files. The content doc uses this approach. Make sure:
- Front matter is preserved (layout, title, permalink)
- HTML blocks are not indented (would be treated as code blocks)
- Blank lines exist between Markdown and HTML sections

## Part 3: Test Locally

### Step 6: Build and serve

```bash
bundle exec jekyll serve
```

### Step 7: Verify each page

Check:
- [ ] Homepage: Hero section styled, service cards display in grid, CTA button has red background
- [ ] About: Highlight box has left border accent, lead text is larger
- [ ] Services: Section blocks have bottom borders, feature lists have red bullets/checks, process steps show numbered circles
- [ ] Work: Case studies display as cards with hover effects
- [ ] Contact: Contact methods display as styled blocks
- [ ] All pages: Typography looks clean, spacing feels intentional
- [ ] Mobile: Check responsive behavior at 768px breakpoint

### Step 8: Check for regressions

- Navigation still works
- Blog posts still display correctly
- Footer renders properly
- No broken layouts or missing content

## Part 4: Deploy

### Step 9: Build for production

```bash
bundle exec jekyll build
```

### Step 10: Deploy to Firebase

```bash
firebase deploy
```

## File Reference

### softpath_custom_styles.scss

This file contains:
- CSS custom properties (variables) for colors
- Typography refinements
- Masthead/navigation styles
- Hero section styles
- CTA button styles (`.btn`, `.cta-link`)
- Service card styles (`.service-card`, `.services-grid`)
- Feature list styles (`.feature-list`)
- Section dividers (`.section-divider`, `.section-block`)
- Highlight box (`.highlight-box`)
- Case study cards (`.case-study`)
- Tools list (`.tools-list`)
- Process steps (`.process-steps`, `.process-step`)
- Contact method blocks (`.contact-method`)
- Footer improvements
- Responsive adjustments
- Utility classes

### Key CSS Classes to Use

| Class | Purpose |
|-------|---------|
| `.hero-section` | Page intro with larger text |
| `.lead` | Larger intro paragraph |
| `.btn` | Primary CTA button (red background) |
| `.cta-link` | Text link with arrow |
| `.service-card` | Bordered card for services |
| `.services-grid` | Grid container for service cards |
| `.feature-list` | Styled bullet list |
| `.feature-list--check` | Checkmark variant |
| `.highlight-box` | Callout box with left border |
| `.section-block` | Section with bottom border |
| `.section-divider` | Horizontal rule |
| `.case-study` | Work example card |
| `.case-study__type` | Category label |
| `.tools-list` | Pill-style tool tags |
| `.process-steps` | Container for process |
| `.process-step` | Individual step with number |
| `.contact-method` | Contact option block |

## Troubleshooting

**Styles not applying:**
- Check that SCSS is being imported
- Clear Jekyll cache: `bundle exec jekyll clean`
- Check browser dev tools for CSS errors

**Layout broken:**
- Ensure HTML in Markdown is not indented
- Check for unclosed tags
- Verify front matter is valid YAML

**Deployment fails:**
- Check Firebase configuration
- Verify `_site/` directory was generated
- Run `firebase login` if auth expired

## Validation Checklist

Before considering this done:

- [ ] Custom SCSS file added and imported
- [ ] All five pages have updated content with proper HTML structure
- [ ] Site builds without errors
- [ ] All new CSS classes render correctly
- [ ] Mobile responsive (check at 768px)
- [ ] Navigation works
- [ ] Blog posts unaffected
- [ ] Deployed to Firebase
- [ ] Live site reflects changes
