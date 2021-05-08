chcp 65001
@echo off
title 哔哩哔哩视频下载you-get工具
set route_ip=www.bilibili.com
:MAINMENU
cls
color FF
echo ==========================================
echo  哔哩哔哩视频下载you-get工具      
echo  首先会检测网络连通性                                              
echo ==========================================
echo.

@cls


:SEL
echo ==========================================
echo  哔哩哔哩视频下载you-get工具      
echo  20200228  by yanyixiong                                               
echo  下载地址为哔哩哔哩的网页地址
echo    [1]--- 查看下载信息                        
echo    [2]--- 下载默认画质                                     
echo    [3]--- 下载360p画质                                     
echo    [0]--- 退出                                     
echo ==========================================
set select=
set /p select= 请按数字键0到3并回车---^>%=%
if /i "%select%"=="1" goto T1
if /i "%select%"=="2" goto N1
if /i "%select%"=="3" goto N2
if /i "%select%"=="0" goto END
echo 输入无效或超出选择范围，请重新输入
goto SEL



:T1
echo *
echo *
echo *
echo 你选择了查看可选择的清晰度信息，请输入地址：
echo *
echo *
echo *
set url=
set /p url=input(Url)
call activate mkdoc
you-get -i %url% 
goto SEL

:N1
echo *
echo *
echo *
echo 你选择了默认画质（高清）下载：
echo *
echo *
echo *
set url=
set /p url=input(Url)
call activate mkdoc
you-get  %url% 
goto SEL

:N2
echo *
echo *
echo *
echo 你选择了360p下载：
echo *
echo *
echo *
set url=
set /p url=input(Url)
call activate mkdoc
you-get --format=dash-flv360 %url% 
goto SEL


:END
set select=
echo 按任意键退出... & pause > nul
exit


:_FAIL
echo.
echo.
echo 电脑与路由没通过连通性测试，请检查
echo 1.路由没通电
echo 2.网线松了，坏了质量不过关
pause


