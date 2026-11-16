@echo off
chcp 65001 >nul
echo ========================================================
echo DANG DAY KHO SLIDE TOAN 12 LEN GITHUB PAGES...
echo Repo: https://github.com/BuiQuy77/toan12-slides.git
echo ========================================================

cd /d "%~dp0"

if not exist .git (
    git init
)

git config user.name "BuiQuy77"
git config user.email "buiquy77@gmail.com"

git remote remove origin 2>nul
git remote add origin https://github.com/BuiQuy77/toan12-slides.git

git add .
git commit -m "Deploy interactive Manim Slides for Toan 12"
git branch -M main

echo.
echo Dang push len branch main...
git push -u origin main --force

echo.
echo ========================================================
echo HOAN TAT! Vui long bat GitHub Pages tai:
echo https://github.com/BuiQuy77/toan12-slides/settings/pages
echo (Chon Branch: main, Thu muc: / (root), roi bam Save)
echo ========================================================
pause
