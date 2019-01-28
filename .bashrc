### owt
owtpath=/root/bin/owt/build/bin
alias owtinit='$owtpath/owt init $owtpath/../data/genesis.json'
alias owtdel='rm -rf $HOME/.owt'
alias owtnew='$owtpath/owt account new'
alias owtstart='$owtpath/owt --dashboard --vmodule=dashboard=5 --rpc --rpcport 8545 --rpcapi web3,owt,personal --nodiscover console'
alias owtexp="nohup $owtpath/owt --rpc --rpcaddr '0.0.0.0' --rpccorsdomain 'http://192.168.10.$1:8000' --rpcport 8545 > /dev/null 2>&1 &"
alias owtexpd='docker run --rm --network host -d -it falcon0125/yjy:owt bash -c "owt --rpc --rpcaddr 0.0.0.0 --rpccorsdomain http://192.168.10.79:8000 --rpcport 8545"'
alias owthttpd=$'docker run --network host --rm -d -it falcon0125/yjy:owt-exp bash -c \'sed -i "s/79/$1/g" /root/explorer/app/app.js &&  http-server /root/explorer/app -p 8000 -c-1\''
alias owtdoc='owtexpd && owthttpd'
### up
uppath=/root/bin/up/build/bin
alias upinit='$uppath/up init $uppath/../data/genesis.json'
alias updel='rm -rf $HOME/.up'
alias upnew='$uppath/up account new'
alias upstart='$uppath/up --dashboard --vmodule=dashboard=5 --rpc --rpcport 8545 --rpcapi web3,up,personal --nodiscover console'
alias upexp='nohup $uppath/up --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "http://192.168.10.79:8000" --rpcport 8545 > /dev/null 2>&1 &'
alias upexpd='docker run --rm --network host -d -it falcon0125/yjy:up bash -c "up --rpc --rpcaddr 0.0.0.0 --rpccorsdomain http://192.168.10.79:8000 --rpcport 8545"'
alias uphttpd='docker run --network host --rm -d -it falcon0125/yjy:up-exp bash -c "http-server /root/explorer/app -p 8000 -c-1"'
alias updoc='upexpd && uphttpd'
