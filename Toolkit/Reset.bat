@echo off
color 21
TITLE 一键还原路由器脚本  --华工路由器正式群出品
set routerPasswd=admin
pushd "%CD%"
CD /D "%~dp0"
echo ◇◇◆◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
echo ◇◇◆◆◇◆◆◆◆◆◆◆◆◇◇◇◇◆◆◆◆◆◆◆◆◆◆◆◆◇
echo ◇◇◆◆◇◇◇◇◆◆◇◇◇◇◇◇◇◆◇◇◇◇◆◆◇◇◇◇◇◇
echo ◇◇◇◆◇◇◇◇◆◆◇◇◇◇◇◇◇◆◇◆◆◆◆◆◆◆◆◆◇◇
echo ◇◆◆◆◇◇◇◆◆◆◆◇◇◇◇◇◇◆◇◆◇◇◇◇◇◇◇◆◇◇
echo ◇◇◇◆◇◇◇◆◆◇◆◆◇◇◇◇◇◆◇◆◆◆◆◆◆◆◆◆◇◇
echo ◇◇◇◆◇◇◆◆◆◇◆◆◇◇◇◇◇◆◇◆◇◇◇◇◇◇◇◆◇◇
echo ◇◇◇◆◇◆◆◇◆◇◇◆◆◇◇◇◇◆◇◆◆◆◆◆◆◆◆◆◇◇
echo ◇◇◇◆◆◆◆◇◆◇◇◆◆◇◇◇◇◆◇◇◆◆◇◆◇◆◆◇◇◇
echo ◇◇◇◆◆◆◇◇◆◇◇◇◆◆◇◇◇◆◇◇◆◆◇◆◇◆◆◆◇◇
echo ◇◇◆◆◆◆◇◇◆◇◇◇◇◇◇◇◆◆◇◆◆◇◇◆◇◇◆◆◇◇
echo ◇◆◆◆◆◆◆◆◆◆◆◆◆◇◇◇◆◆◆◆◆◆◇◆◇◇◇◆◆◇
echo ◇◆◆◇◇◆◆◆◆◆◆◆◆◆◇◇◆◆◆◇◆◆◆◆◇◇◇◆◆◇
echo ◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
echo.&echo =========================================================
echo 	本脚本由#华工路由器正式群#提供
echo 	注意：登陆路由器密码必须为%routerPasswd%，否则必然失败
echo.&echo =========================================================
echo.
echo 提示：保证路由先能连通再执行脚本
echo 提示：保证路由先能连通再执行脚本
echo 提示：保证路由先能连通再执行脚本
pause
:_PING
echo.
ping -a 192.168.1.1
IF %errorlevel% EQU 0 ( goto _OK ) else ( goto _FAIL )

:_OK
pause
echo 提示：准备在路由执行!!!!!!还原!!!!!!脚本
echo 提示：准备在路由执行!!!!!!还原!!!!!!脚本
echo 提示：准备在路由执行!!!!!!还原!!!!!!脚本
pause
echo y|plink -P 22 -pw %routerPasswd% root@192.168.1.1 "echo y|firstboot && reboot"
echo 提示：如果没报错提示，等待路由重启完毕就执行成功了
pause
exit
:_FAIL 
echo 提示：无法连接路由
pause
exit