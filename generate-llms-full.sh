#!/bin/bash
# generate-llms-full.sh
# Auto-generates llms-full.txt by concatenating content from key pages and posts.
# Run as part of the deploy process: ./generate-llms-full.sh
#
# This creates a comprehensive text file that AI systems can use to understand
# everything Softpath offers and has written about.

OUTPUT="llms-full.txt"
SITE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "# Softpath - Full Content Index" > "$OUTPUT"
echo "" >> "$OUTPUT"
echo "> This file contains the full text content of softpath.co for AI systems." >> "$OUTPUT"
echo "> Last generated: $(date -u +%Y-%m-%dT%H:%M:%SZ)" >> "$OUTPUT"
echo "> Website: https://softpath.co" >> "$OUTPUT"
echo "> Contact: noah@softpath.co" >> "$OUTPUT"
echo "> See also: https://softpath.co/llms.txt for a summary version." >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Function to extract content from markdown files (strip front matter)
extract_content() {
    local file="$1"
    local title="$2"
    echo "---" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
    echo "## $title" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
    # Strip YAML front matter (between --- markers) and output content
    awk '/^---$/{if(++c==2){found=1;next}}found{print}' "$file" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
}

# Function to extract front matter field
get_field() {
    local file="$1"
    local field="$2"
    awk -v field="$field:" '/^---$/{if(++c==2)exit} c==1 && $0 ~ field{gsub(/^[^:]+: *"?/,"",$0); gsub(/"$/,"",$0); print}' "$file" | head -1
}

echo "# ABOUT SOFTPATH" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Softpath is a fractional growth consultancy founded by Noah Manion." >> "$OUTPUT"
echo "We specialize in marketing infrastructure, paid acquisition, and analytics" >> "$OUTPUT"
echo "for B2C and B2B2C companies in the \$2M-\$100M revenue range." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Noah Manion has 13+ years of experience in performance marketing," >> "$OUTPUT"
echo "managing paid spend from \$1K to \$1M+ monthly across Meta, Google, and TikTok." >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Core pages
echo "# SERVICES" >> "$OUTPUT"
extract_content "$SITE_DIR/pages/services.md" "Marketing Infrastructure & Paid Acquisition Services"

echo "# ABOUT" >> "$OUTPUT"
extract_content "$SITE_DIR/pages/about.md" "About Softpath"

echo "# CLIENT WORK" >> "$OUTPUT"
extract_content "$SITE_DIR/pages/work.md" "Selected Client Work"

# Blog posts (newest first)
echo "# BLOG POSTS" >> "$OUTPUT"
echo "" >> "$OUTPUT"

for post in $(ls -r "$SITE_DIR"/_posts/*.md "$SITE_DIR"/_posts/*.markdown 2>/dev/null); do
    title=$(get_field "$post" "title")
    date=$(get_field "$post" "date")
    if [ -n "$title" ]; then
        extract_content "$post" "$title (${date%% *})"
    fi
done

# Projects
echo "# PROJECTS" >> "$OUTPUT"
echo "" >> "$OUTPUT"

for project in "$SITE_DIR"/_projects/*.md; do
    title=$(get_field "$project" "title")
    if [ -n "$title" ]; then
        extract_content "$project" "$title"
    fi
done

echo "" >> "$OUTPUT"
echo "# CONTACT" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "- Book a Discovery Call: https://cal.com/noahmanion" >> "$OUTPUT"
echo "- Email: noah@softpath.co" >> "$OUTPUT"
echo "- Website: https://softpath.co" >> "$OUTPUT"
echo "- LinkedIn: https://www.linkedin.com/in/noahmanion" >> "$OUTPUT"

echo "Generated llms-full.txt with $(wc -l < "$OUTPUT") lines."
