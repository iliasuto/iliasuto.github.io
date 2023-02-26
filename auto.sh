SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
cd $SCRIPT_DIR



echo '=======> 推送到GITHUB <======='

echo '==> Prepare to Push'
git add .
git commit -m 'auto update by script'

echo '==> Start Push'
git push

echo '==> Push Complete'
echo ''


echo '=======> 部署HEXO <======='

hexo clean && hexo g -D
echo ''

echo '=======> All Done <======='