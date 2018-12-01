@echo off
Title Batch Auto Hide Start By Aincrad
:Comandline
IF ["%~1"]==["-e"] goto o
 
:Crear vbs
set Batch=%~dpnx0
(
echo set objshell ^= createobject^("wscript.shell"^)
echo objshell^.run "%Batch% -e"^,vbhide ) > %temp%\bas.vbs
start %temp%\bas.vbs
exit
 
:o
::::::::::::::::::::::::::::::::
:: Tu código aquí...           :
::::::::::::::::::::::::::::::::