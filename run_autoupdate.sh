echo "Starting autoupdate..."
pip3 install wheel
sudo pip3 install virtualenv
virtualenv .au
source .au/bin/activate


# Install gh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh


# pip install conda
pip install git@github.com:simonbray/planemo/archive/autoupdate-sb.zip  # install from my fork for now
#echo "installing planemo"
#pip install -e planemo
#planemo --help

# git credentials
git config --global user.email "lorrainealisha75@gmail.com"
git config --global user.name "Lorraine Coelho"

# Fork and clone repo
gh repo fork git@github.com:simonbray/duck --clone --remote
cd duck/
echo "Fork and clone successful"

#Create an empty commit
#git commit --allow-empty -m 'New test commit from planemo'



