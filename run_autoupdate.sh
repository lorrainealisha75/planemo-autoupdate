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

rm -rf galaxytools
planemo clone --skip_fork --branch planemo-pr-`date +%F-%H-%m-%S` git@github.com:lorrainealisha75/galaxytools
echo "Cloning successful"
cd galaxytools/
echo "Folder:"
pwd
echo "Commit"
git commit --allow-empty -m 'new test commit from planemo'
echo "Pull Request"
planemo pull_request -p -m "planemo test pr 11"
