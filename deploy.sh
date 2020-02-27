R -e "blogdown::build_site()"

echo Please enter commit message

read commitmessage

git add .
git commit -m "$commitmessage"
git push

cp -r public/* ../mgei.github.io/
cd ../mgei.github.io

git add .
git commit -m "$commitmessage"
git push

cd ..
