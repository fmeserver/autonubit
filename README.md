# autonubit
nubit刷地址
1.下载脚本： 

wget -c https://raw.githubusercontent.com/fmeserver/autonubit/main/autonubit.sh 

2，给权限 

chmod 777 autonubit.sh 

3，后台运行 

nohup /root/autonubit.sh > /dev/null 2>&1 & 

4.每隔30分钟，自动生成一个新key追加在autonubit.txt 
