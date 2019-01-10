# OWTExplorer
### BOWER IS DEPRECATED. IT WILL WORK AFTER CONVERTING INTO YARN.
![OWTExplorer Screenshot](http://i.imgur.com/NHFYq0x.png)

### INSTALL
    $ curl -o- -L https://yarnpkg.com/install.sh | bash
    $ sudo npm install -g bower
    $ git clone https://github.com/etherparty/explorer
    $ cd explorer
    $ bower install
    ############################################################################ 
    # - Bower2Yarn(https://bower.io/blog/2017/how-to-migrate-away-from-bower/) #
    # ref: https://github.com/sheerun/bower-away                               # 
    # sudo npm install -g bower-away                                           #
    # bower-away                                                               # 
    ############################################################################
    [ DownLoad JS, CSS files from Remote to Local. Change the path to them in index.html]
### RUN
    #############################################################################################
    # DO NOT USE npm start. npm install MAKES TROUBLE.                                          #                    
    # WHILE USING bower2yarn, yarn WORKS, but npm install DOESN'T HANDLE DEPENDENCIES INDICATED #
    # BY @bower_components IN package.json                                                      #
    #############################################################################################
    $ gsg --rpc --rpccorsdomain "http://localhost:8000"
    $ http-server ./app -a localhost -p 8000 -c-1

### LICENSE
    GPL (see LICENSE)
