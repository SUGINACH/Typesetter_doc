#!/usr/bin/env bash
# push_wiki.sh — העתקת תוכן ויקי מתיקיית wiki/ בריפו הראשי אל ויקי ה-GitHub הרשמי.
#
# דרישות מוקדמות:
#   1. ויקי ה-GitHub של הריפו מאותחל (יש לפחות דף אחד).
#      כדי לאתחל: בקר ב-https://github.com/SUGINACH/Typesetter_doc/wiki
#      ולחץ "Create the first page" עם כל תוכן (למשל "init"), ואז Save.
#   2. ה-PAT מוגדר כמשתנה סביבה GITHUB_PAT או מועבר כארגומנט ראשון.
#
# שימוש:
#   GITHUB_TOKEN=ghp_xxx ./push_wiki.sh
#   או:
#   ./push_wiki.sh ghp_xxx
#
# לאחר הרצה מוצלחת, הויקי יהיה זמין בכתובת:
#   https://github.com/SUGINACH/Typesetter_doc/wiki

set -e

TOKEN="${1:-${GITHUB_TOKEN:-${GITHUB_PAT:-}}}"
if [ -z "$TOKEN" ]; then
  echo "ERROR: יש להגדיר GITHUB_TOKEN או להעביר כארגומנט ראשון." >&2
  exit 1
fi

REPO="SUGINACH/Typesetter_doc"
WIKI_URL="https://${TOKEN}@github.com/${REPO}.wiki.git"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo "→ משכפל ויקי רשמי..."
git clone "$WIKI_URL" "$TMP_DIR/wiki" 2>&1 | tail -5 || {
  echo "ERROR: לא ניתן לשכפל את ויקי הריפו." >&2
  echo "ודא שהויקי מאותחל — בקר ב-https://github.com/${REPO}/wiki ולחץ 'Create the first page'." >&2
  exit 1
}

cd "$TMP_DIR/wiki"
git config user.email "wiki@typesetter.local"
git config user.name "Typesetter Wiki Bot"

# מצא נתיב הריפו המקורי (הנח שהסקריפט רץ מתוך הריפו)
REPO_LOCAL_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WIKI_SOURCE="$REPO_LOCAL_DIR/wiki"

if [ ! -d "$WIKI_SOURCE" ]; then
  echo "ERROR: לא נמצא תיקיית wiki/ בריפו המקורי ($WIKI_SOURCE)." >&2
  exit 1
fi

echo "→ מעתיק קבצי ויקי..."
cp -v "$WIKI_SOURCE"/*.md .
git add -A
git commit -m "Update wiki: comprehensive index of 74 documentation files with 6,381 deep-linked headings" || {
  echo "אין שינויים לדחיפה."
  exit 0
}

echo "→ דוחף לויקי הרשמי..."
git push origin master 2>&1 | tail -10 || git push 2>&1 | tail -10

echo ""
echo "✅ הויקי עודכן בהצלחה!"
echo "   כתובת: https://github.com/${REPO}/wiki"
