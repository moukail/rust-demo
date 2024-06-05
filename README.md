### Git
```bash
git init
git add docker-compose.yaml ./.docker/ README.md ./src/main.rs
git commit -m "rust demo with docker and alpine"
git status
git remote add origin https://github.com/moukail/rust-demo.git
git remote -v
git push -u origin master
```
to pull
```bash
git pull
```


to login use personal access token as password with repo scope
https://github.com/settings/tokens/new

### Rust Docs
https://doc.rust-lang.org/book/ch01-01-installation.html

### Docker
#### up
```bash
docker compose up -d --build
```
