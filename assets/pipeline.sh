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

git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"

git push

echo "(3) Deploy"
npm run start

