#!/bin/bash
# Netlify Deploy Script for Union Glen Website
# Run this after installing Netlify CLI

echo "==================================="
echo "Union Glen - Netlify Deploy"
echo "==================================="

# Check if netlify CLI is installed
if ! command -v netlify &> /dev/null; then
    echo "Installing Netlify CLI..."
    npm install -g netlify-cli
fi

# Navigate to website folder
cd "$(dirname "$0")"

echo ""
echo "Deploying to Netlify..."
echo ""

# Deploy to Netlify
netlify deploy --prod --dir=. --site=union-glen-condos

echo ""
echo "==================================="
echo "Done! Check the URL above."
echo "==================================="
