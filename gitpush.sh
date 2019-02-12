git add -A

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

git push -u origin master

read