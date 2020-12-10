echo "Starting autoupdate..."
pip3 install wheel
sudo pip3 install virtualenv
virtualenv .au
source .au/bin/activate

# git credentials
git config user.email "lorrainealisha75@gmail.com"
git config user.name "Lorraine Coelho"

echo "httpslorrainealisha75:@github.com/abc.git"$GITHUB_TOKEN