# Github page

This is the source for building my Github page [mgei.github.io](https://mgei.github.io) using R and blogdown. Blogdown relies on [Hugo](https://gohugo.io/).

When building the site in R with `blogdown::build_site()`, the files go into the *public* folder. Personal Github pages seem not to allow to redirect the web directory to another folder, even though suggested [here](https://help.github.com/en/articles/configuring-a-publishing-source-for-github-pages). Therefore I have a second repository (mgei/mgei.github.io) that is to publish to site.

# deploy.sh

`bash deploy.sh` deploys the site:

1. Builds it with `blogdown::build_site()`
2. commits and pushes to this repo
3. commits and pushes to the github page repo

```bash

R -e "blogdown::build_site()"

echo Please enter commit message

read commitmessage

git add .
git commit -m "$commitmessage"
git push

cd public

git add .
git commit -m "$commitmessage"
git push

cd ..

```
