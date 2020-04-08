@echo off
git pull origin master
python sink.py
git add .
git commit -m "(automated) update readme.md"
git push origin master
