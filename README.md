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
### web3.js
    $ npm run-script web3.js    
# MODIFY
    [ eth2owt: sed -i 's/eth_/owt_/g' app/web3/dist/web3.js]
    [ DownLoad JS, CSS files from Remote to Local. Change the path to them in index.html]
    [ web3.min.js to web3.js: sed -i 's/web3\.min\.js/web3\.js/g' app/index.html]
    [ Delete Cache:  rm ~/.cache -rf]
# RUN
### Host
    #############################################################################################
    # DO NOT USE npm start. npm install MAKES TROUBLE.                                          #                    
    # WHILE USING bower2yarn, yarn WORKS, but npm install DOESN'T HANDLE DEPENDENCIES INDICATED #
    # BY @bower_components IN package.json                                                      #
    #############################################################################################
    - remote access
    app/app.js: var owt_node_url = 'http://192.168.10.79:8545'; // TODO: remote URL 
    owt: owt --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "http://192.168.10.79:8000" --rpcport 8545
    npm: http-server ./app -p 8000 -c-1
    - local access
    app/app.js: var owt_node_url = 'http://localhost:8545'; // TODO: remote URL 
    owt: owt  --rpc --rpccorsdomain "http://localhost:8000" --rpcport 8545 
    npm: http-server ./app -a localhost -p 8000 -c-1
### [Docker](https://github.com/bluesea0125/Docker/blob/master/Host2Container.md)
    [MODIFIEY OWT RPC ADDRESS: /root/explorer/app/app.js]
    docker run --network host --rm -d -it falcon0125/yjy:owt-exp bash -c "http-server /root/explorer/app -p 8000 -c-1"
### LICENSE
    GPL (see LICENSE)
