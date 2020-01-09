@echo off
latex shuthesis.ins
xelatex shuthesis.dtx
makeindex -s gind.ist -o shuthesis.ind shuthesis.idx
makeindex -s gglo.ist -o shuthesis.gls shuthesis.glo
xelatex shuthesis.dtx
xelatex shuthesis.dtx
call clean.bat
cls
echo ****************************************************
echo make done!!!
echo ****************************************************
pause
