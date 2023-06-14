此sign收集于网络，是python版，我对其进行docker化：

~~注意，此sign目前发现只能跑M系列库~~ \n
目前已经可以跑M和KR的库 \n

**2023/06/14** \n
M系列调用请添加变量 export M_API_SCAN_SIGN_URL="http://服务器IP:17840/sign" \n
点开链接访问出现此错误 \n
sign error \n
是正常的，直接调用就好了 \n

KR系列调用请添加变量 export JD_SIGN_KRAPI="http://服务器IP:17840/signkr" \n
点开链接访问出现此错误 \n
Method Not Allowed \n
The method is not allowed for the requested URL. \n
是正常的，直接调用就好了 \n

**2023/05/27**
部署完成以后打开 http://服务器ip:17840 出现以下英文页面，

Not Found

The requested URL was not found on the server. If you entered the URL manually please check your spelling and try again.

说明已经部署成功了，正常调用就行了。

**2023/04/23**
更新以支持KR和M系列

拉取命令如下

docker run -dit \\  
--name pysign \\  
--restart always \\  
-e TZ=Asia/Shanghai \\  
-p 17840:80 \\  
fifaty/jdsign:main
  
自动识别服务器架构

