# מערכת עימוד ספרים תורניים — תיעוד

## אודות הפרויקט

הריפו [`SUGINACH/Typesetter_doc`](https://github.com/SUGINACH/Typesetter_doc) מכיל את מלוא התיעוד של פרויקט **מערכת עימוד ספרים תורניים** — כלי אינטרנטי לעימוד ספרי קודש (תורה, תלמוד, מפרשים) לפי כללי הדפוס התורני המסורתי.

המערכת פותחה במקביל על ידי **שלושה כלי AI** שונים, כל אחד בתיקייה נפרדת, כדי לאפשר השוואה בין הגישות:

| כלי AI | תיקייה | גרסה |
|--------|--------|------|
| 📘 **Claude** (Anthropic) | `claude_v20/` | IMUD TORANI v20 |
| 💚 **ChatGPT** (OpenAI) | `chatgpt_v23/` | Green V23 |
| 🥇 **z.ai** (GLM) | `zai_v21/` | Gold V21 |

בנוסף, הריפו מכיל:
- 🌐 `shared/` — מסמכים משותפים שאינם ספציפיים לגרסה (מחקרים, תכניות, השוואות)
- 📦 `archive/` — ארכיון היסטורי של מסמכים ישנים
- 📚 `wiki/` — אינדקס ויקי מפורט של כל התיעוד

## מבנה הריפו

```
Typesetter_doc/
├── README.md                  # קובץ זה
├── shared/                    # 🌐 מסמכים משותפים
│   ├── research/              #    מחקרים כלליים
│   ├── plans/                 #    תכניות עבודה וכללים
│   ├── comparisons/           #    השוואות בין-גרסאיות וכלים מתחרים
│   ├── prompts/               #    אוסף פרומטים
│   └── menu_spec/             #    מפרטי תפריט
├── claude_v20/                # 📘 גרסת Claude
│   ├── transcripts/           #    תמלילי שיחות V20.1–V20.5
│   ├── technical/             #    תיעוד טכני
│   └── qa/                    #    אבטחת איכות
├── chatgpt_v23/               # 💚 גרסת ChatGPT
│   ├── transcripts/           #    10 תמלילי שיחות
│   ├── technical/             #    תיעוד טכני
│   ├── issues/                #    קטלוגי בעיות
│   ├── audits/                #    ביקורות
│   └── session/               #    העברות סשן
├── zai_v21/                   # 🥇 גרסת z.ai
│   ├── transcripts/           #    תמלילי שיחות
│   ├── technical/             #    תיעוד טכני
│   ├── issues/                #    קטלוגי בעיות
│   ├── audits/                #    ביקורות
│   └── session/               #    העברות סשן
├── archive/                   # 📦 ארכיון היסטורי
│   ├── research/              #    מחקרים ישנים
│   ├── plans/                 #    תכניות ישנות
│   ├── reports/               #    דוחות ישנים
│   └── qa/                    #    אבטחת איכות ישנה
└── wiki/                      # 📚 אינדקס ויקי
```

## אינדקסים זמינים

שלוש דרכי ניווט משלימות זמינות בויקי:

| אינדקס | שימוש | קישור |
|--------|-------|-------|
| 📚 **לפי קבצים** | עיון בקובץ מסוים | [Home](https://github.com/SUGINACH/Typesetter_doc/wiki/Home) |
| 🎯 **נושאי-היררכי** | הבנת קונספט לעומק (מלמעלה למטה) | [Topical-Index](https://github.com/SUGINACH/Typesetter_doc/wiki/Topical-Index) |
| 🔤 **אלפביתי** | חיפוש מונח מסוים (2,929 מונחים) | [Glossary](https://github.com/SUGINACH/Typesetter_doc/wiki/Glossary) |

## כללי שמות קבצים

- `snake_case` באנגלית לקבצים טכניים
- עברית רק כשהתוכן עברי-בלבד
- ללא רווחים / תאריכים / קידומות מספריות בשמות הקבצים
- כל קובץ מתחיל ב-`frontmatter` YAML עם: `title`, `date`, `version`, `type`, `source`

## קישורים חיצוניים

- **ריפו ראשי:** https://github.com/SUGINACH/Typesetter_doc
- **ויקי רשמי:** https://github.com/SUGINACH/Typesetter_doc/wiki
- **גרסת Claude החיה:** https://suginach.github.io/IMUD_TORANI/

---


## 📁 תיקיות משנה

| תיקייה | תיאור |
|--------|-------|
| [`archive/`](archive/README.md) | תיקיית **ארכיון היסטורי** — מסמכים ישנים מהשלבים הראשונים של הפרויקט, שלא שויכו לגרסה ספציפית. מי… |
| [`chatgpt_v23/`](chatgpt_v23/README.md) | תיקיית גרסת **ChatGPT (OpenAI)** — V23 (Green). מכילה את כל התיעוד שנוצר על ידי ChatGPT. מאופיינת… |
| [`claude_v20/`](claude_v20/README.md) | תיקיית גרסת **Claude (Anthropic)** — V20 (IMUD TORANI). מכילה את כל התיעוד שנוצר על ידי Claude במ… |
| [`shared/`](shared/README.md) | תיקיית **מסמכים משותפים** — מכילה מסמכים שאינם ספציפיים לגרסה אחת של התוכנה, אלא רלוונטיים לכל הג… |
| [`zai_v21/`](zai_v21/README.md) | תיקיית גרסת **z.ai (GLM)** — V21 (Gold). מכילה את כל התיעוד שנוצר על ידי z.ai. מאופיינת בשילוב של… |


## 📄 קבצים בתיקייה זו

| קובץ | שורות | כותרות | תיאור |
|------|-------|--------|-------|
| [`README.MD`](README.MD) | 51 | 6 | קובץ `README` — 51 שורות, 6 כותרות. # Typesetter_doc — מאגר תיעוד מערכת עימוד ספרים תור… |


## 📋 פירוט קבצים

### [`README.MD`](README.MD)

קובץ `README` — 51 שורות, 6 כותרות. # Typesetter_doc — מאגר תיעוד מערכת עימוד ספרים תורניים מאגר זה מכיל את מלוא התיעוד של פרויקט **מערכת עימוד ספרים תורניי…

<details><summary>תקציר תוכן</summary>

```
# Typesetter_doc — מאגר תיעוד מערכת עימוד ספרים תורניים מאגר זה מכיל את מלוא התיעוד של פרויקט **מערכת עימוד ספרים תורניים**, שפותחה במקביל על ידי שלושה כלי AI שונים (Claude, ChatGPT, z.ai), כל אחד בתי
```

</details>

---

## 🔗 קישורים

- [הריפו ב-GitHub](https://github.com/SUGINACH/Typesetter_doc)
- [הויקי הרשמי](https://github.com/SUGINACH/Typesetter_doc/wiki)
- [דף הבית של הריפו](README.md)

---

_README זה נוצר אוטומטית. נכון ל-2026-10-28._