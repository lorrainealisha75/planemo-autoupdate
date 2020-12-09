echo "Starting autoupdate..."
pip3 install wheel
sudo pip3 install virtualenv
virtualenv .au
source .au/bin/activate

# pip install conda
pip install https://github.com/simonbray/planemo/archive/autoupdate-sb.zip  # install from my fork for now
pip install -e planemo/
planemo --help

# git credentials
git config --global user.email "lorrainealisha75@gmail.com"
git config --global user.name "Lorraine Coelho"

echo "Folder before clonning is:"
pwd
#planemo clone --skip_fork --branch planemo-pr11-`date +%F-%H-%m` git@github.com:lorrainealisha75/galaxytools
planemo clone --skip_fork --branch planemo-1 git@github.com:lorrainealisha75/galaxytools
echo "Cloning successful"
git remote add upstream git@github.com:lorrainealisha75/galaxytools
#cd galaxytools/
echo "Folder after cloning is:"
pwd
echo "Commit"
git commit --allow-empty -m 'New test commit from planemo'
echo "Push"
#git push -u origin planemo-pr11-`date +%F-%H-%m`
git push -u origin planemo-1
echo "Create pull request"
planemo pull_request upstream
