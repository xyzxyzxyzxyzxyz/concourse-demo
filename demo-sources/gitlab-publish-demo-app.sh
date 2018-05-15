REPO_URL=http://localhost:30003/root/concourse-demo-app.git

# Commit project to GitLab

cd concourse-demo-app
git init
git config --local user.name "Administrator"
git config --local user.email "admin@example.com"
git remote add origin ${REPO_URL}
git add .
git commit -m "Initial commit"
git push -u origin master




