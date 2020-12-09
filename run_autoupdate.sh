echo "Starting autoupdate..."
pip3 install wheel
sudo pip3 install virtualenv
virtualenv .au
source .au/bin/activate

# pip install conda
pip install https://github.com/simonbray/planemo/archive/autoupdate-sb.zip  # install from my fork for now
echo "installing planemo"
pip install -e planemo
planemo --help

# git credentials
git config --global user.email "lorrainealisha75@gmail.com"
git config --global user.name "Lorraine Coelho"


# Configure .planemo/yml file
echo "github.com:" >> $HOME/.planemo.yml
echo "	- user: $GITHUB_USERNAME" >> $HOME/.planemo.yml
echo "	  oauth_token: $GITHUB_TOKEN" >> $HOME/.planemo.yml


echo "Folder before cloning is:"
pwd
#planemo clone --skip_fork --branch planemo-pr11-`date +%F-%H-%m` git@github.com:lorrainealisha75/galaxytools
planemo clone --fork --branch planemo-1 git@github.com:simonbray/duck
echo "Cloning successful"
#git remote add upstream git@github.com:lorrainealisha75/duck
cd duck/
echo "Folder after cloning is:"
pwd
echo "Commit"
git commit --allow-empty -m 'New test commit from planemo'
echo "Push"
#git push -u origin planemo-pr11-`date +%F-%H-%m`
git push -u origin planemo-1
echo "Create pull request"
git request-pull git@github.com:simonbray/duck master
#planemo pull_request git@github.com:simonbray/duck master
