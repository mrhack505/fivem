@echo off
set ROOT=%CD%
cd %~dp0

set NUGET=%CD%\..\..\..\code\tools\ci\nuget.exe

mkdir lib\net45\

%ROOT%\code\tools\ci\xz.exe -cd %ROOT%/caches/diff/fivereborn/citizen/clr2/lib/mono/4.5/ref/CitizenFX.Core.Client.dll.xz > lib\net45\CitizenFX.Core.Client.dll
%ROOT%\code\tools\ci\xz.exe -cd %ROOT%/caches/diff/fivereborn/citizen/clr2/lib/mono/4.5/ref/CitizenFX.Core.Client.xml.xz > lib\net45\CitizenFX.Core.Client.xml

%NUGET% pack CitizenFX.Core.Client.nuspec -Exclude build.bat -Version "1.0.%CI_PIPELINE_ID%"
%NUGET% push CitizenFX.Core.Client.1.0.%CI_PIPELINE_ID%.nupkg -ApiKey %NUGET_TOKEN% -Source https://api.nuget.org/v3/index.json

del CitizenFX.Core.Client.1.0.%CI_PIPELINE_ID%.nupkg