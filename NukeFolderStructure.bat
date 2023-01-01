:: Date format at the start of the folder name
for /f "skip=1" %%i in ('wmic os get localdatetime') do if not defined fulldate set fulldate=%%i
:: Change to "set year=%fulldate:~0,4%" to display year as four digits ie "2023"
set year=%fulldate:~2,2%
set month=%fulldate:~4,2%
set day=%fulldate:~6,2%
set foldername=%year%%month%%day%_ProjectNameHere

:: The actual folder structure
md %foldername%\3D
md %foldername%\AEF
md %foldername%\Blender
md %foldername%\Audio
md %foldername%\C4D
md %foldername%\Docs
md %foldername%\Footage
md %foldername%\Houdini
md %foldername%\Images\HDRI
md %foldername%\NUKE
md %foldername%\Outputs\3dRenders
md %foldername%\Prem
md %foldername%\Tex