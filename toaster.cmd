@echo off

rem fetch all remotes
git pull --all

rem fetch + merge master branch
git pull origin master

rem ensure clean working tree, since sink.py will change branches.
git add .
git commit -m "(automated:a) sync origin master"

rem sink.py will check branches and update README.md for master
python sink.py

rem commit updated README.md
git add .
git commit -m "(automated:b) update readme.md"

git push origin master
