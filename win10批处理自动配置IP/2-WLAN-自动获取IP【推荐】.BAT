@echo //-=-=-=-=-=-=-=-=-=-=-=-=-=-=
@echo //  【自动获取】
@echo //  设置IP，子网掩码，网关
@echo //-=-=-=-=-=-=-=-=-=-=-=-=-=-=

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"


netsh interface ip set address name="WLAN" source=dhcp 
netsh interface ip set address name="本地连接" source=dhcp 
netsh interface ip set address name="无线网络连接" source=dhcp 
netsh interface ip set address name="以太网" source=dhcp 


@echo //-=-=-=-=-=-=-=-=-=-=-=-=-=-=
@echo //  设置DNS
@echo //-=-=-=-=-=-=-=-=-=-=-=-=-=-=
netsh interface ip set dns name = "WLAN" static addr = none   
netsh interface ip set dns name = "本地连接" static addr = none   
netsh interface ip set dns name = "无线网络连接" static addr = none   
netsh interface ip set dns name = "以太网" static addr = none   
@echo //  自动获取IP设置完成！
@pause