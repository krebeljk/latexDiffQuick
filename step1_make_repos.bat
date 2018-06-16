:: This fetches the LaTeX repository.
:: The paths:
::    ...\grandparent\parent\step1_make_repos.bat <- this file
:: Your LaTeX folder should be:
::    ...\grandparent\repo
:: Or change below ...
@ECHO OFF
setlocal
SET parent=%~dp0
ECHO parent=%parent%
FOR %%a IN ("%parent:~0,-1%") DO SET grandparent=%%~dpa
ECHO grandparent=%grandparent%

xcopy /s /I /h "%grandparent%repo" "%parent%repo1"
xcopy /s /I /h "%grandparent%repo" "%parent%repo2"
