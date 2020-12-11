		echo "Starting autoupdate..."
        pip3 install wheel
        sudo pip3 install virtualenv
        virtualenv .au
        source .au/bin/activate

        # git credentials
        git config --global user.email "lorrainealisha75@gmail.com"
        git config --global user.name "Lorraine Coelho"

        echo ${{ secrets.PAT }} > token.txt

        # Authenticate
        echo "Authenticating..."
        gh auth login --with-token < token.txt

        # Fork and clone repo
        echo "Begin forking and cloning..."
        gh repo fork simonbray/SARS-CoV-2 --clone --remote

        cd SARS-CoV-2/

        echo "Fork and clone successful"

        # Commit
        echo "Committing..."
        git commit --allow-empty -m 'New test commit from planemo'

        echo "Pushing..."
        git push https://$GITHUB_ACTOR:${{ secrets.PAT }}@github.com/$GITHUB_ACTOR/SARS-CoV-2.git master

        echo "Creating a PR..."
        gh pr create --title "ABC" --body "XYZ" --repo simonbray/SARS-CoV-2