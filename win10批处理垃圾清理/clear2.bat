@echo off
color 0a
echo ★☆ ★☆ ★☆ ★☆ ★☆★☆★☆ ★☆ ★☆ ★☆ ★☆★
echo ★☆ ★☆ ★☆ ★☆ ★☆★☆★☆ ★☆ ★☆ ★☆ ★☆★
echo.★☆ ☆★
echo.★☆ ☆★
echo.★☆ 小海清理系统垃圾文件，请稍等...... ☆★
echo ★☆ ☆★
echo.★☆ ☆★
echo ★☆ ★☆ ★☆ ★☆ ★☆★☆★☆ ★☆ ★☆ ★☆ ★☆★
echo ★☆ ★☆ ★☆ ★☆ ★☆★☆★☆ ★☆ ★☆ ★☆ ★☆★

echo 正在清除系统临时文件 *.tmp *._tmp *.log *.chk *.old ，请稍等...
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old

echo 清空垃圾箱，备份文件和预缓存脚本...
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp

echo 删除补丁备份目录
RD %windir%\$hf_mig$ /Q /S

echo 把补丁卸载文件夹的名字保存成2950800.txt
dir %windir%\$NtUninstall* /a:d /b >%windir%\2950800.txt

echo 从2950800.txt中读取文件夹列表并且删除文件夹
for /f %%i in (%windir%\2950800.txt) do rd %windir%\%%i /s /q

echo 删除2950800.txt
del %windir%\2950800.txt /f /q

echo 删除补丁安装记录内容（下面的del /f /s /q %systemdrive%\*.log已经包含删除此类文件）
del %windir%\KB*.log /f /q

echo 清理系统盘无用文件...
%windir%\system32\sfc.exe /purgecache

echo 优化预读信息...
%windir%\system32\defrag.exe %systemdrive% -b

rem cooke和最近历史还是保留吧...
rem del /f /q %userprofile%\COOKIES s\*.*
rem del /f /q %userprofile%\recent\*.*

echo 清空IE临时文件目录...
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
del /f /s /q "C:\Documents and Settings\Administrator\Local Settings\History"
del /f /s /q "C:\Documents and Settings\Administrator\Local Settings\Temporary Internet Files"
del /f /s /q "C:\Documents and Settings\Administrator\Local Settings\Temp"
del /f /s /q "C:\Documents and Settings\Administrator\Local Settings\Temp\_xl7vss_"

echo ★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★
echo ★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★
echo ★☆ ☆★
echo.★☆ ☆★
echo.★☆ ☆★
echo ★☆ ☆★
echo ★☆ 恭喜您！小海已为你清理系统垃圾！ ☆★
echo.★☆ ☆★
echo ★☆ ☆★
echo.★☆ ☆★
echo ★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★
echo ★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★

echo. & pause 