@echo off
git pull origin
git pull origin master
git add .
git commit -m "(automated:a) update readme.md"
python sink.py
git add .
git commit -m "(automated:b) update readme.md"
git push origin master
