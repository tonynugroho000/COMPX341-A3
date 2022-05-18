if [ -z "$1" ]
  then
    echo "No argument supplied (Commit message)"
    echo "Use as 'bash pipeline.sh \"{commit message}\""
    exit
fi

echo "(0) Install"
npm install

echo "(1) Build (Compile the appication)"
if npm run build; then
    echo "Build successful"
else
    echo "Build failed"
    exit
fi

echo "(2) Release (Commit to repo)"
git add .

git commit -m "\"$1\""

git push

echo "(3) Deploy"
npm run start