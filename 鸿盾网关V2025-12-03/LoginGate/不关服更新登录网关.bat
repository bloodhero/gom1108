@echo off
echo 将本程序拷贝到需要更新的登录网关。比如 D:\Mirserver\LoginGate
echo 将新的 LoginGate.exe 改名为 LoginGate.tmp.exe 拷贝到登录网关。
echo 如果使用游戏网关在线更新，将自动将新网关下载为 LoginGate.exe.tmp 可省略上一步
echo 执行本程序
echo 手动关闭登录网关，即 LoginGate.exe 程序，等待程序更新完成。
echo 如果在更新前被控制台重新启动了登录网关，再关一次，直至成功。

move /Y "%~dp0LoginGate.exe.tmp" "%~dp0LoginGate.tmp.exe"

set i=500
:Lf1c741c67e55fd0e


set /A i=%i%-1
ping -n 2 127.1>nul
move /Y "%~dp0LoginGate.tmp.exe" "%~dp0LoginGate.exe"
if %i% gtr 0 (if exist "%~dp0LoginGate.tmp.exe" goto Lf1c741c67e55fd0e)

