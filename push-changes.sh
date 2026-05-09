#!/bin/bash

cd "$(dirname "$0")"

# Check for changes
if ! git diff-index --quiet HEAD --; then
    echo "📦 Committing changes..."
    git add -A
    git commit -m "Update wishlist $(date +%Y-%m-%d\ %H:%M:%S)"
    
    echo "🚀 Pushing to GitHub..."
    git push origin main
    echo "✅ Done!"
else
    echo "✨ No changes to push."
fi
