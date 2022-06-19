# redecoin-plugin-for-peatio

Is assured you have own peatio image ready, if so lets go.....

go to peatio /lib/peatio and create a folder named redecoin

upload there the 3 files

go to peatio/config/inizializers and open the file blockchain_api.rb, and add this line

Peatio::Blockchain.registry[:redecoin] = Redecoin::Blockchain

then in the same directory open the file wallet_api.rb, and add this line

Peatio::Wallet.registry[:redecoin] = Redecoin::Wallet

rebuild peatio image

add image new to opendax config file

run    rake render:config && rake service:app

go to tower and add your blockchain+coin,wallets

enjoy

donation are welcome

bitcoin

bc1q2vcrgyh464ggw5xsj3j9echnhpwfsyzme0sqqw

litecoin

LhYvLM26a7ftH76LAVu7T3Dox8rfCy1XVU


