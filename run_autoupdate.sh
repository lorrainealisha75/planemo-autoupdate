echo "Starting autoupdate..."
pip3 install wheel
sudo apt install python3-virtualenv
virtualenv .au
source .au/bin/activate
# pip install conda
# pip install https://github.com/simonbray/planemo/archive/autoupdate-sb.zip  # install from my fork for now
pip install -e planemo/
planemo --help

# git credentials
git config --global user.email "lorrainealisha75@gmail.com"
git config --global user.name "lorrainealisha75"

planemo clone https://github.com/lorrainealisha75/planemo.git
cd planemo/
git branch
git checkout -b planemo-test
git commit --allow-empty -m 'new test commit from planemo'
git push -u origin planemo-test
planemo pull_request -m "planemo test pr"
