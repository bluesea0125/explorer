# Oriental Walt Explorer
### BOWER IS DEPRECATED. IT WILL WORK AFTER CONVERTING INTO YARN.
![Oriental Walt Explorer Screenshot](http://i.imgur.com/NHFYq0x.png)

# INSTALL
### [nodejs 6.x](https://github.com/bluesea0125/UseCases/blob/master/Ethereum2GSG/Ethereum/Dashboard/explorer.md#install-node-6x)
### [nodejs 8.x](https://github.com/bluesea0125/UseCases/blob/master/Ethereum2GSG/Ethereum/Dashboard/Installation.md#install-node-guide)
### bower
    $ sudo npm install -g bower
### yarn
    $ curl -o- -L https://yarnpkg.com/install.sh | bash
### bower-away
    sudo npm install -g bower-away
### http-server
    sudo npm install -g http-server
### explorer
    $ git clone https://github.com/bluesea0125/explorer
    $ cd explorer
    $ bower install
    
    ############################################################################ 
    # - Bower2Yarn(https://bower.io/blog/2017/how-to-migrate-away-from-bower/) #
    # ref: https://github.com/sheerun/bower-away                               # 
    # bower-away                                                               # 
    ############################################################################

    [ eth2owt: sed -i 's/eth_/owt_/g' app/web3/dist/web3.js]
    [ DownLoad JS, CSS files from Remote to Local. Change the path to them in index.html]
    [ web3.min.js to web3.js: sed -i 's/web3\.min\.js/web3\.js/g' app/index.html]
    [delete cache:  rm ~/.cache -rf]
### web3.js
    $ npm run-script web.js
# RUN
    #############################################################################################
    # DO NOT USE npm start. npm install MAKES TROUBLE.                                          #                    
    # WHILE USING bower2yarn, yarn WORKS, but npm install DOESN'T HANDLE DEPENDENCIES INDICATED #
    # BY @bower_components IN package.json                                                      #
    #############################################################################################
    $ ./owt  --rpc --rpccorsdomain "http://localhost:8000" --rpcport 8545
    $ http-server ./app -a localhost -p 8000 -c-1
### LICENSE
    GPL (see LICENSE)
