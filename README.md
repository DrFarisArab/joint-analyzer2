# Joint Angle Analyzer — Android APK

## Get the APK in 3 steps

### Step 1 — Create a free GitHub account
Go to https://github.com and sign up (free). If you already have one, log in.

### Step 2 — Upload this project
1. Click **"+"** → **"New repository"** → name it `joint-analyzer` → **Create repository**
2. Click **"uploading an existing file"**
3. Drag the entire contents of this zip (all folders and files) into the upload window
4. Click **"Commit changes"**

### Step 3 — Download the APK
1. Click the **"Actions"** tab (top of your repo)
2. You'll see a workflow run called **"Build APK"** — wait ~3 minutes for it to finish (green ✓)
3. Click on it → scroll down to **"Artifacts"** → download **JointAnalyzer-v1.0-debug.zip**
4. Inside the zip is `app-debug.apk` — send it to your Android phone and install it

> **First-time install on Android:** Go to Settings → Security → enable "Install from unknown sources" (or "Install unknown apps" for your browser/file manager).

---

## What the app does
- Full-screen camera view (portrait)
- Tap **"Enable Camera"** → camera opens + AI model loads (~5 sec on WiFi)
- Select which joints to track from the picker
- Live angle overlay on screen with **MIN / MAX** recorded per joint per session
- Tap **↺ Reset** to start a new measurement session

## Requirements
- Android 6.0 (Marshmallow) or newer
- Internet connection on first load (loads MediaPipe AI model from CDN, ~6MB)
- Camera permission (the app will request it on first launch)

## Notes
- The debug APK is not signed for Play Store but installs fine via sideloading
- 0° = neutral/extended, angles increase with flexion (AAOS convention)
- Elbow, Knee, Hip: 0° = straight, increases as joint bends
- Ankle: reports DF (dorsiflexion) and PF (plantarflexion) separately
