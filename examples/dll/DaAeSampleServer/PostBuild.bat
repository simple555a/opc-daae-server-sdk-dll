if %1[==[ goto default

if exist ..\..\..\..\x86\OpcDllDaAeServer.exe 			copy ..\..\..\..\x86\OpcDllDaAeServer.exe %2\OpcDllDaAeServer.exe
if exist ..\..\..\x86\OpcDllDaAeServer.exe    			copy ..\..\..\x86\OpcDllDaAeServer.exe %2\OpcDllDaAeServer.exe

if exist ..\..\..\..\License\OpcDllDaAeServer.lfx 		copy ..\..\..\..\License\OpcDllDaAeServer.lfx %2\OpcDllDaAeServer.lfx
if exist ..\..\..\License\OpcDllDaAeServer.lfx 			copy ..\..\..\License\OpcDllDaAeServer.lfx %2\OpcDllDaAeServer.lfx

if exist %2\OpcDllDaAeServer.exe 						copy %2\OpcDllDaAeServer.exe %2%1\OpcDllDaAeServer.exe
if exist %2\OpcDllDaAeServer.lfx 						copy %2\OpcDllDaAeServer.lfx %2%1\OpcDllDaAeServer.lfx
goto done

:default
if exist ..\..\..\..\x86\OpcDllDaAeServer.exe 			copy ..\..\..\..\x86\OpcDllDaAeServer.exe OpcDllDaAeServer.exe
if exist ..\..\..\x86\OpcDllDaAeServer.exe    			copy ..\..\..\x86\OpcDllDaAeServer.exe OpcDllDaAeServer.exe

if exist ..\..\..\..\License\OpcDllDaAeServer.lfx 		copy ..\..\..\..\License\OpcDllDaAeServer.lfx OpcDllDaAeServer.lfx
if exist ..\..\..\License\OpcDllDaAeServer.lfx 			copy ..\..\..\License\OpcDllDaAeServer.lfx OpcDllDaAeServer.lfx

if exist OpcDllDaAeServer.exe 							copy OpcDllDaAeServer.exe win32\debug
if exist OpcDllDaAeServer.lfx 							copy OpcDllDaAeServer.lfx win32\debug

:done