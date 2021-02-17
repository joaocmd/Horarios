echo --------
echo Pulling from git
git pull

echo 
echo --------
echo Install dependencies and build
npm i --prod
npm run build

echo 
echo --------
echo Backup previous deploy
rm -rf build_backup
cp -r build_deploy/ ./build_backup

echo 
echo --------
echo Remove previous deploy and copy new one
rm -rf build_deploy
cp -r build/ ./build_deploy