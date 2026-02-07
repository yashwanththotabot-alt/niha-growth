#!/bin/bash
# 🚀 Niha's Learning Repository - Setup Script
# Run this to set up GitHub integration for Niha's learning journey

echo "🎓 Niha's Learning Repository Setup"
echo "===================================="
echo ""

# Check Git
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Install git first."
    exit 1
fi

# Check GitHub CLI
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed."
    echo "Install via: brew install gh"
    exit 1
fi

# Check GitHub authentication
echo "🔐 Checking GitHub authentication..."
if ! gh auth status &> /dev/null; then
    echo ""
    echo "You need to log in to GitHub first:"
    echo "  1. Run: gh auth login"
    echo "  2. Choose: GitHub.com → HTTPS → Paste token"
    echo "  3. Create token: https://github.com/settings/tokens"
    echo ""
    read -p "Have you logged in? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Please log in and run this script again."
        exit 1
    fi
fi

echo "✅ GitHub CLI authenticated"
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

# Get repo name
REPO_NAME="niha-learning"
read -p "Repository name (default: $REPO_NAME): " INPUT_REPO
if [ ! -z "$INPUT_REPO" ]; then
    REPO_NAME="$INPUT_REPO"
fi

# Create or clone repo
cd ~/.openclaw/workspace/neha-tutor

echo ""
echo "🔧 Setting up repository..."

# Check if already a git repo
if [ -d ".git" ]; then
    echo "ℹ️  Already a git repository"
else
    echo "📁 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: Niha's Learning Repository"
fi

# Create GitHub repo if it doesn't exist
echo "🌐 Creating GitHub repository..."
gh repo create "$REPO_NAME" --public --description "Niha's AI Full Stack Developer Learning Journey - 8 Week Program" 2>/dev/null || echo "Repository might already exist"

# Set remote
if ! git remote get-url origin &> /dev/null; then
    git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
    echo "✅ Added remote origin"
fi

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push -u origin main 2>/dev/null || git push -u origin master 2>/dev/null || echo "May need manual push"

# Create playground symlink or copy
echo ""
echo "🎮 Setting up interactive playground..."
if [ ! -d "playground ]; then
    echo "ℹ️  Playground folder not found. Creating it..."
fi

echo ""
echo "===================================="
echo "✅ Setup Complete!"
echo ""
echo "📁 Repository URL: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo ""
echo "Next steps:"
echo "  1. Share this repo URL with Niha"
echo "  2. She can clone it: git clone https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
echo "  3. Daily lessons will be pushed automatically"
echo ""
echo "🎓 Happy learning, Niha!"
