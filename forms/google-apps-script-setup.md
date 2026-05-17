# Google Apps Script setup for `reflections.html`

The native reflections form submits to a Google Apps Script web app that writes responses to a Google Sheet. One-time setup, ~3 minutes. Free, fully owned by you.

---

## What you'll do

1. Create a new Google Sheet
2. Open the Apps Script editor attached to that sheet
3. Paste the code below
4. Deploy as a web app
5. Copy the web-app URL into `reflections.html`

---

## Step-by-step

### 1. Create the sheet

- Go to **drive.google.com** (signed in with the Google account you want to own these responses)
- New → Google Sheets
- Name it something like **Claude Training — Module 1 Reflections**

### 2. Open the script editor

- In the sheet: **Extensions → Apps Script**
- A new tab opens with `Code.gs` containing an empty `myFunction()`

### 3. Paste the script

Replace the entire contents of `Code.gs` with:

```javascript
// ─── Claude Training reflection-form handler ───
// Receives POST submissions from reflections.html and appends each to
// the sheet this script is attached to.

function doPost(e) {
  try {
    var data = JSON.parse(e.postData.contents);

    var sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();

    // Add headers if the sheet is empty
    if (sheet.getLastRow() === 0) {
      sheet.appendRow([
        'Submitted at',
        'Name',
        'Department',
        'Mission & vision',
        'Role & situation',
        'Values & philosophy',
        'AI hope (if AI could help me...)',
        'Context document (from AI conversation)',
        'Anything else'
      ]);
      // Bold the header row
      sheet.getRange(1, 1, 1, 9).setFontWeight('bold');
      // Freeze the header
      sheet.setFrozenRows(1);
    }

    sheet.appendRow([
      data.submittedAt || new Date().toISOString(),
      data.name || '(anonymous)',
      data.department || '',
      data.mission || '',
      data.role || '',
      data.values || '',
      data.ai_hope || '',
      data.context_doc || '',
      data.anything_else || ''
    ]);

    return ContentService
      .createTextOutput(JSON.stringify({ status: 'ok' }))
      .setMimeType(ContentService.MimeType.JSON);
  } catch (err) {
    return ContentService
      .createTextOutput(JSON.stringify({ status: 'error', message: String(err) }))
      .setMimeType(ContentService.MimeType.JSON);
  }
}

// Optional: a doGet so visiting the URL in a browser returns a friendly message
function doGet() {
  return ContentService.createTextOutput(
    'This endpoint accepts POST submissions from the Claude Training reflections form.'
  );
}
```

- **Save** (⌘+S or Ctrl+S). Name the project **Reflections handler** when prompted.

### 4. Deploy as a web app

- Click **Deploy → New deployment** (top right)
- Click the gear icon next to *Select type* → **Web app**
- Settings:
  - **Description:** `Claude Training reflections`
  - **Execute as:** *Me (your-email@gmail.com)*
  - **Who has access:** **Anyone** *(this is required so the form can POST without auth — the script still runs as you)*
- Click **Deploy**
- The first deployment will prompt you to authorize the script — click through:
  - *Review permissions* → choose your account → *Advanced* → *Go to Reflections handler (unsafe)* → *Allow*
  - Google's "unsafe" warning is normal for personal scripts; you're authorizing your own code.
- Copy the **Web app URL** (looks like `https://script.google.com/macros/s/AKfycb.../exec`)

### 5. Paste the URL into `reflections.html`

Open `reflections.html` in this repo. Near the bottom there's a line:

```javascript
var APPS_SCRIPT_URL = 'PASTE_YOUR_APPS_SCRIPT_WEB_APP_URL_HERE';
```

Replace the placeholder with the URL you just copied. Save, commit, push.

---

## Test it

1. Open `https://your-github-handle.github.io/claude-training/reflections.html` in a browser
2. Fill in the form (leave name blank to test anonymous flow)
3. Submit
4. Open the Google Sheet — you should see a new row with all the responses

---

## Updating the script later

If you change the script:

- Save
- **Deploy → Manage deployments → edit the existing deployment** (pencil icon) → **Version: New version** → **Deploy**

You don't need to change the URL in the HTML — the URL stays the same across versions.

---

## What you can do with responses

- **Pull quotes:** read the Sheet, copy striking lines into Module 2 slides
- **Word cloud:** export the AI-hope column to CSV → paste into wordart.com or jasondavies.com/wordcloud — match Cornell carnelian
- **Aggregate:** use Sheet formulas to find common phrases, count "anonymous" submissions, etc.
- **Anonymity display rule:** when sharing quotes on the site or in slides, render either `firstName + ", " + department` (if both filled) or `"Anonymous, " + department` (if name is blank but department isn't) or just `"Anonymous"` (if both blank). Never render last name.

---

## Privacy notes

- Responses live in **your Google account**, not Cornell's tenant. If institutional data ownership is required later, switch to MS Forms (and we re-wire the endpoint).
- The web app is set to *Anyone*, but only your script runs server-side, and only the script writes to the sheet. No one else can read responses unless you share the sheet.
- The form does not collect IP addresses, browser info, or location.

---

## Troubleshooting

- **"Form endpoint not configured yet"** in the page status line → `APPS_SCRIPT_URL` in `reflections.html` is still the placeholder. Paste your URL.
- **Submissions don't appear in the sheet** → Open Apps Script editor → **Executions** (clock icon, left sidebar). Failed executions show the error.
- **CORS error in browser console** → Should not happen because the form uses `mode: 'no-cors'` and `text/plain` content type. If it does, check that the deployment's *Who has access* is set to **Anyone**.

---

*Last updated: 2026-05-16.*
