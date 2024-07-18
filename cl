#!/data/data/com.termux/files/usr/bin/bash
#XINHAO_HAN
#
#
#     version 1.0
#
#
#
#
#  有什么问题?
#
#  目前运作，不是APP启动后只执行1次，而是您创建一次会话窗口，开机命令就会执行一次
#
#  如何解决
#
#  该问题是指每创建一个bash[会话窗口]从而会默认与bash同时启动,它不是一个BUG,而是您使用当中的特殊需求
#
#
#开机启动命令脚本
#版本 1.0 ,所有的启动脚本命令可加入此sh中
#echo "开机脚本已运行(~/.xinhao_history/start_command.sh)"
#--------------------------------------------
#历史命令启动sh
#cd ~ > /dev/null&
#chmod 777 .xinhao_histor_mulu 
#/history.sh > /dev/null &
#./.xinhao_history/history.sh > /dev/null &
#--------------------------------------------
myPath="web"
if [ ! -d $myPath ];then
echo "看样子你还是第一次使用这个呢"
termux-setup-storage
echo "请选择网站项目部署的文件夹(尽量简单)"
read -p "请输入文件夹: " x
mkdir "/storage/emulated/0/"$x
ln -s "/storage/emulated/0/"$x web
cd  ~/web
echo "正在创建代码"
cp -r ~/origin/ ~/web/
cd ~/web/origin/
git pull
npm install
echo "项目已部署到手机目录/$x/origin,请重启软件"
fi

