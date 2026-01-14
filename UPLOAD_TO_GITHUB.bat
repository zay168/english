@echo off
echo ===================================================
echo   TV NEWS SHOW - GITHUB UPLOADER
echo ===================================================
echo.
echo 1. Creating Git Repository...
git init
echo.

echo 2. Adding All Files...
git add .
echo.

echo 3. Committing Files...
git commit -m "Final Commit - Jan 2026 Broadcast Edition"
echo.

echo 4. PREPARING TO UPLOAD...
echo ---------------------------------------------------
echo INSTRUCTIONS:
echo 1. Go to GitHub.com and create a NEW Empty Repository.
echo 2. Copy the URL (e.g., https://github.com/YourName/tv-news.git)
echo 3. Paste it below when asked.
echo ---------------------------------------------------
echo.
set /p repo_url="Paste GitHub URL here: "

echo.
echo 5. Linking Remote Repository...
git remote add origin %repo_url%
git branch -M main

echo.
echo 6. UPLOADING... (You may be asked to sign in)
git push -u origin main
echo.

echo ===================================================
echo   DONE! Your show is online.
echo ===================================================
pause
