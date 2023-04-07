此sign收集于网络，是python版，我对其进行docker化：

注意，此sign目前发现只能跑M系列库

拉取命令如下

docker run -dit  \
--name pysign \
--restart always \
-e TZ=Asia/Shanghai \
-p 17840:80 \
fifaty/jdsign:main

自动识别服务器架构


