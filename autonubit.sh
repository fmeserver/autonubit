#!/bin/bash
while true; do

# 写入新数据到文件
echo address >>autonubit.txt
/root/nubit-node/bin/nkey list --p2p.network nubit-alphatestnet-1 --node.type light >>autonubit.txt
echo mnemonic >>autonubit.txt
cat /root/nubit-node/mnemonic.txt >>autonubit.txt
echo  AUTH KEY   >>autonubit.txt
/root/nubit-node/bin/nubit light auth admin --node.store /root/.nubit-light-nubit-alphatestnet-1 >>autonubit.txt
echo ------ >>autonubit.txt

# 删除上个文件和数据
pm2 stop ecosystem.config.js --env production
sleep 3
rm -rf .nubit-light-nubit-alphatestnet-1

# 启动新进程
curl -sL1 https://nubit.sh/start.sh -o $HOME/nubit-node/start.sh
sleep 3
pm2 start ecosystem.config.js --env production

  sleep 1800
done