# 🎓 Niha's Learning Journey - Complete Setup Guide

## Overview

This guide sets up Niha's AI Full Stack Developer learning journey with:
- 📚 Daily lessons pushed to GitHub
- 🎮 Interactive HTML/CSS/JS playground
- 💬 WhatsApp coaching via AI tutor

---

## 🛠️ Quick Setup (Run on Yash's Mac)

### Step 1: GitHub Authentication

```bash
# Check if logged in
gh auth status

# If not logged in:
gh auth login
# Choose: GitHub.com → HTTPS → Paste token
# Create token: https://github.com/settings/tokens
```

### Step 2: Initialize Repository

```bash
cd ~/.openclaw/workspace/neha-tutor
./setup_github.sh
```

Follow the prompts:
- Enter GitHub username
- Enter repository name (default: `niha-learning`)

### Step 3: Done! 🎉

Repository URL: `https://github.com/YOUR_USERNAME/niha-learning`

---

## 📁 Repository Structure

```
niha-learning/
├── week-01-html-css-git/
│   ├── day-01-html-basics/
│   │   ├── lesson.md      ← Daily lesson content
│   │   └── exercises/     ← Practice files
│   ├── day-02-css-fundamentals/
│   └── ...
├── week-02-javascript/
├── week-03-react/
├── week-04-nodejs/
├── week-05-06-fullstack-projects/
├── week-07-08-interview-prep/
└── playground/
    └── index.html         ← Interactive playground
```

---

## 🎮 Interactive Playground

Open `playground/index.html` in a browser to practice HTML/CSS/JS:

```bash
# Local (double-click file or)
open playground/index.html

# Or deploy to GitHub Pages for online access
```

### Features:
- ✅ Live code preview
- ✅ HTML/CSS/JS tabs
- ✅ Pre-built examples (HTML Basics, CSS, Flexbox, JS, Todo App)
- ✅ Save/load from browser
- ✅ Download as HTML file

---

## 📱 WhatsApp Integration

Niha receives:
- ✅ Daily tasks at 6 AM IST
- ✅ Evening check-ins
- ✅ Help when she messages back

**Setup:**
- Niha's number: +91-9059062905 (already configured)
- Messages route through Broadcaster agent

---

## 🤖 How It Works

### Daily Workflow:

```
6:00 AM IST ──→ Tutor creates lesson.md
               │
               ▼
         Push to GitHub
               │
               ▼
      WhatsApp notification
         to Niha
               │
               ▼
    Niha clones repo, reads,
    practices in playground,
    pushes her exercises
```

### Agent Commands:

```bash
# Push today's lesson
cd ~/.openclaw/workspace/neha-tutor
python github_integration.py push "Week 1 Day 1: HTML Basics"

# Create new lesson
python github_integration.py create-lesson 1 1 "HTML Basics" "<lesson-content>"

# Check status
python github_integration.py status
```

---

## 🎯 8-Week Curriculum

| Week | Focus | Outcome |
|------|-------|---------|
| 1 | HTML/CSS/Git + AI Tools | Portfolio page |
| 2 | JavaScript + AI Prompts | Weather app |
| 3 | React + OpenAI API | AI Chatbot |
| 4 | Node.js + Vector DB | RAG Document App |
| 5-6 | Full Stack Projects | 2 AI Products |
| 7-8 | Interview Prep | DSA + Job Apps |

---

## 📚 Daily Task Format

Each day includes:

```markdown
# Week X, Day Y: Topic

**Duration:** 2-3 hours

## 📖 Lesson Content
[Learning material]

## 🎯 Today's Goals
- [ ] Task 1
- [ ] Task 2

## 📚 Resources
- [Link]()

## 💡 Tips
> Helpful advice
```

---

## 🔧 Troubleshooting

### GitHub CLI not authenticated
```bash
gh auth login
```

### Push fails
```bash
cd ~/.openclaw/workspace/neha-tutor
git pull
git push
```

### WhatsApp not receiving
- Check Broadcaster is running
- Check routing.json has correct number

---

## 🎉 Success Metrics

By Week 8, Niha will have:
- ✅ 6 AI-powered projects
- ✅ Clean GitHub portfolio
- ✅ Interview-ready skills
- ✅ Job offers in Germany!

---

**Let's get coding!** 🚀
