# Editing User Data
1. You can edit your repos from Colab instead of VSCode on github.dev/you/repo
2. In Codespace you can edit commits, branches, and use NPM.
3. Enable port forwarding and wrangler inside Codespace.
4. Inject cookies with JS to your SPA frontend inside wrangler.toml
5. Host static websites for free in a new branch called gh-pages.
6. Store environmental variables in TypeScript with GitHub Actions.
7. Cloudflare exist in GitHub Marketplace which also has Snyk.io
8. You can setup webhooks to Slack for deployment alerts. 
9. You can git clone folders with https://download-directory.github.io/
10. Icons are obtained when you have synchronized the browser with your phone.
11. You can save old files with **tags** like I did on the visuals in *rest*
12. Tag branch is also used to synchronize docker tags with git flow.
13. Learn more in https://cli.github.com/manual/gh
14. You are not allowed to make SaaS nor ecommerce in **docs**. 
15. No LICENSE means "All rights reserved." Fork makes the LICENSE permanent.

# Codespace
Track Record without Pull Requests. 
```
git stash #temporary branch# git commit -m "M"
git rev-list --count --all, git rebase -i HEAD~122
sed -i 's/pick/drop/g' .git/rebase-merge/*-todo
git add ., git commit -m "N", git push -u origin
```
Branches and Commits.
``` 
git checkout -b "main", git push origin main, git log
git reset --hard "commit-SHA" git pull origin main
git config pull.rebase true, git push -u origin
git push origin gh-pages --force 
```
Tags and Releases.
```
git tag <name>, git push origin --tags
git push origin <tag>, git fetch
```
Cached Files.
``` git reset --soft HEAD~ && git commit --amend
git checkout --orphan newBranch, git add -A,
git commit -m "Ok", git branch -D main
git branch -m main, git push -f origin main
git gc --aggressive --prune=all 
```