# generic tooling
brew install google-cloud-sdk
brew install --cask docker
brew tap aws/tap
brew install jq
brew install awscli
brew install aws-sam-cli
brew install cloudformation-cli
brew install aws-cdk
brew install --cask chromedriver

# python
brew install python3

# jess suggestion for running python locally
brew install pyenv


# postgres
brew install postgresql
brew services start postgresql

createuser --interactive --pwprompt
# this script assumes creating a user called "tenet_user" - adjust as necessary for your local setup
createdb -O tenet_user tenet_local
createdb -O tenet_user tenet_local_pytest

psql -U tenet_user -D tenet_local -c "GRANT ALL ON DATABASE tenet_local TO tenet_user;"
psql -U tenet_user -D tenet_local -c "GRANT ALL ON DATABASE tenet_local_pytest TO tenet_user;"