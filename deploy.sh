#!/usr/bin/env bash
# AetherStream GitHub Pages 1-Click Deployment Script
# Run this script on your Arch Linux machine inside the AetherStream directory

set -e

echo "=== AetherStream GitHub Pages Deployment ==="

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    git init
    git branch -M main
fi

git add .
git commit -m "Deploy AetherStream landing page" || echo "No changes to commit."

echo ""
echo "Enter your GitHub repository remote URL"
echo "Example: git@github.com:YOUR_USERNAME/AetherStream.git"
echo "Or: https://github.com/YOUR_USERNAME/AetherStream.git"
read -r -p "Repository URL: " REPO_URL

if [ -n "$REPO_URL" ]; then
    git remote remove origin 2>/dev/null || true
    git remote add origin "$REPO_URL"
    git push -u origin main
    
    echo ""
    echo "======================================================="
    echo "✅ Code successfully pushed to GitHub!"
    echo "Now enable GitHub Pages in 2 clicks:"
    echo "1. Go to your GitHub repo -> Settings -> Pages"
    echo "2. Under 'Build and deployment' -> Source: 'Deploy from a branch'"
    echo "3. Select Branch: 'main' / folder: '/ (root)' -> Click Save"
    echo "Your live site will be: https://YOUR_USERNAME.github.io/AetherStream/"
    echo "======================================================="
fi
