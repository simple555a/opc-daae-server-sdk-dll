if %1[==[ goto default

if exist ..\..\..\..\x86\DAOnly\OpcDllDaServer.exe 			copy ..\..\..\..\x86\DAOnly\OpcDllDaServer.exe %2\OpcDllDaServer.exe
if exist ..\..\..\x86\DAOnly\OpcDllDaServer.exe    			copy ..\..\..\x86\DAOnly\OpcDllDaServer.exe %2\OpcDllDaServer.exe

if exist ..\..\..\..\License\OpcDllDaAeServer.lfx 				copy ..\..\..\..\License\OpcDllDaAeServer.lfx %2\OpcDllDaAeServer.lfx
if exist ..\..\..\License\OpcDllDaAeServer.lfx 					copy ..\..\..\License\OpcDllDaAeServer.lfx %2\OpcDllDaAeServer.lfx

if exist %2\OpcDllDaServer.exe 								copy %2\OpcDllDaServer.exe %2%1\OpcDllDaServer.exe
if exist %2\OpcDllDaAeServer.lfx 								copy %2\OpcDllDaAeServer.lfx %2%1\OpcDllDaAeServer.lfx
goto done

:default
if exist ..\..\..\..\x86\DAOnly\OpcDllDaServer.exe 			copy ..\..\..\..\x86\DAOnly\OpcDllDaServer.exe OpcDllDaServer.exe
if exist ..\..\..\x86\DAOnly\OpcDllDaServer.exe    			copy ..\..\..\x86\DAOnly\OpcDllDaServer.exe OpcDllDaServer.exe

if exist ..\..\..\..\License\OpcDllDaAeServer.lfx 				copy ..\..\..\..\License\OpcDllDaAeServer.lfx OpcDllDaAeServer.lfx
if exist ..\..\..\License\OpcDllDaAeServer.lfx 					copy ..\..\..\License\OpcDllDaAeServer.lfx OpcDllDaAeServer.lfx

if exist OpcDllDaServer.exe 								copy OpcDllDaServer.exe win32\debug
if exist OpcDllDaAeServer.lfx 									copy OpcDllDaAeServer.lfx win32\debug

:done