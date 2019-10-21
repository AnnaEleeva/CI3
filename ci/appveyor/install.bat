set DOWNLOAD_DIR=c:\downloads
mkdir %DOWNLOAD_DIR%

set RAGEL_DOWNLOAD_URL=http://downloads.yorickpeterse.com/files/ragel-68-visualstudio2012.7z
mkdir %DOWNLOAD_DIR%\ragel
appveyor DownloadFile %RAGEL_DOWNLOAD_URL% -FileName %DOWNLOAD_DIR%\ragel\ragel.7z
7z e -y %DOWNLOAD_DIR%\ragel\ragel.7z -o%DOWNLOAD_DIR%\ragel
set PATH=%DOWNLOAD_DIR%\ragel;%PATH%

del "c:\Program Files (x86)\MSBuild\14.0\Microsoft.Common.targets\ImportAfter\Xamarin.Common.targets"
del "c:\Program Files (x86)\MSBuild\4.0\Microsoft.Common.targets\ImportAfter\Xamarin.Common.targets"