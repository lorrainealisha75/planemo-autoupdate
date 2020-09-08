echo "Starting autoupdate..."
pip3 install wheel
sudo apt install python3-virtualenv
virtualenv .au
source .au/bin/activate
pip install conda
pip install https://github.com/simonbray/planemo/archive/autoupdate-sb.zip  # install from my fork for now
planemo --help

# start updating bgruening repo
git clone git@github.com:bgruening/galaxytools.git
cd galaxytools
planemo autoupdate -r
git diff

