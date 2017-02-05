#update packages for install
sudo apt-get update

# install curl and git (if they aren't there already)
sudo apt-get install curl git

# install nvm (which will be used for installing node)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# install node
nvm install 0.10.16

# now logout of the SSH and log back in

# nvm 
mkdir myapp
cd myapp
npm init
# change the entry point index.js to app.js

# install express
npm install express --save

# save this content to app.js:
var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('Hello World!')
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})

# do that by:
vim app.js
# to edit: i
# to close: :wq

# to run the server
node app.js

# to view the page, go to: [ip address of server]:3000
