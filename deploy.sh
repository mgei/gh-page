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
