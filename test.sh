echo "Starting autoupdate..."
pip3 install wheel
sudo pip3 install virtualenv
virtualenv .au
source .au/bin/activate

# git credentials
git config user.email "lorrainealisha75@gmail.com"
git config user.name "Lorraine Coelho"


abc='https://lorrainealisha75'
echo $abc:$GITHUB_TOKEN"@github.com/abc.git"