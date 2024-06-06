### Git
```bash
git init
git add docker-compose.yaml ./.docker/ README.md ./src/main.rs
git commit -m "rust demo with docker and alpine"
git status
git remote add origin https://github.com/moukail/rust-demo.git
git remote -v
git config --global credential.helper store
git push -u origin master
```
to pull https://www.atlassian.com/git/tutorials/merging-vs-rebasing
```bash
git pull --rebase
```

to login use personal access token as password with repo scope
https://github.com/settings/tokens/new

#### Change content of file in old commit
you can't use fixup or squash on the first commit
example
```bash
mkdir test_git_fixup
cd test_git_fixup
git init
#
touch test.txt
git add test.txt
git status
git commit -m 'init commit'
#
touch test1.txt
git add test1.txt
git commit -m 'test 1'
#
touch test2.txt
git add test2.txt
git commit -m 'test 2'
#
touch test3.txt
git add test3.txt
git commit -m 'test 3'
# change the content of file from the old commit
echo 'test 1 update 1' > test1.txt
git add test1.txt
git commit -m 'test 1 update 1'
#
git log
# show the commit with message 'test 1'
git show b4c336c09de2586e794afb98f45664d2e1a81c5c
# if we want to merge the content of test1.txt from 2nd and latest commits, we have to move the latest commit bellow the 2nd one then save the changes. hier we need to use the first commit for rebase with interactive mode, then use the same command to change the rebase command from pick to fixup for latest commit.
git rebase -i c2176cbfcf1d4eb257ff89c8347c10fabc03a899
```

### to undo the last commit and keep the changes
```bash
git reset HEAD~1
```

#### to remove the file from the repository but keep it locally
```bash
git rm --cached README.md
git commit -m "Remove README.md from repository"
```

#### to amend the previous commit to remove the file
```bash
git pull --rebase
git rm --cached test.txt
git commit --amend
# This action opens the commit editor, allowing you to adjust the commit message as needed, effectively recreating the commit without the unwanted file.
git push --force
```

### Rust Docs
https://doc.rust-lang.org/book/ch01-01-installation.html

### Docker
#### up
```bash
docker compose up -d --build
```
