echo "Starting autoupdate..."
pip3 install wheel
sudo pip3 install virtualenv
virtualenv .au
source .au/bin/activate

# git credentials
git config --global user.email "lorrainealisha75@gmail.com"
git config --global user.name "Lorraine Coelho"

# Fork and clone repo
gh repo fork simonbray/duck --clone --remote
cd duck/
echo "Fork and clone successful"

#Create an empty commit
#git commit --allow-empty -m 'New test commit from planemo'



