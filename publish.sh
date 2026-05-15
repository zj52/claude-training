#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
# One-shot publisher for the Claude Training site.
# Run from inside this folder, on your Mac (where gh is installed).
#
#   chmod +x publish.sh && ./publish.sh
#
# What it does:
#   1. Ensures gh is authenticated (kicks off device flow if not)
#   2. Creates a public repo named "claude-training" under your account
#   3. Pushes this folder to the main branch
#   4. Enables GitHub Pages from main / root
#   5. Prints the live URL
# ─────────────────────────────────────────────────────────────
set -euo pipefail

REPO_NAME="${1:-claude-training}"

if ! command -v gh >/dev/null 2>&1; then
  echo "✗ gh CLI not found. Install with: brew install gh"
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "→ Authenticating with GitHub (a browser tab will open)…"
  gh auth login --web --git-protocol https --scopes "repo,workflow,write:packages"
fi

OWNER="$(gh api user --jq .login)"
echo "→ Account: $OWNER"
echo "→ Repo:    $OWNER/$REPO_NAME"

if gh repo view "$OWNER/$REPO_NAME" >/dev/null 2>&1; then
  echo "⚠  Repo already exists. Pushing to existing remote."
  git remote remove origin 2>/dev/null || true
  git remote add origin "https://github.com/$OWNER/$REPO_NAME.git"
  git push -u origin main
else
  echo "→ Creating public repo and pushing…"
  gh repo create "$REPO_NAME" --public --source=. --remote=origin --push \
    --description "Claude Training site for Cornell AI Innovation Hub"
fi

echo "→ Enabling GitHub Pages on main / root…"
gh api --method POST "repos/$OWNER/$REPO_NAME/pages" \
  -f "source[branch]=main" -f "source[path]=/" 2>/dev/null \
  || gh api --method PUT "repos/$OWNER/$REPO_NAME/pages" \
       -f "source[branch]=main" -f "source[path]=/" 2>/dev/null \
  || true

PAGES_URL="$(gh api "repos/$OWNER/$REPO_NAME/pages" --jq .html_url 2>/dev/null || echo "")"
if [ -z "$PAGES_URL" ]; then
  PAGES_URL="https://$OWNER.github.io/$REPO_NAME/"
fi

echo ""
echo "✓ Published."
echo "  Repo:  https://github.com/$OWNER/$REPO_NAME"
echo "  Site:  $PAGES_URL"
echo "  (Pages may take ~30s to build before first load)"
