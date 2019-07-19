if %1[==[ goto default

if exist ..\..\..\..\binaries\OpcDllDaAeServer.exe 			copy ..\..\..\..\binaries\OpcDllDaAeServer.exe %2\OpcDllDaAeServer.exe
if exist ..\..\..\binaries\OpcDllDaAeServer.exe    			copy ..\..\..\binaries\OpcDllDaAeServer.exe %2\OpcDllDaAeServer.exe

if exist ..\..\..\..\License\OpcDllDaAeServer.lfx 				copy ..\..\..\..\License\OpcDllDaAeServer.lfx %2\OpcDllDaAeServer.lfx
if exist ..\..\..\License\OpcDllDaAeServer.lfx 					copy ..\..\..\License\OpcDllDaAeServer.lfx %2\OpcDllDaAeServer.lfx

if exist %2\OpcDllDaAeServer.exe 								copy %2\OpcDllDaAeServer.exe %2%1\OpcDllDaAeServer.exe
if exist %2\OpcDllDaAeServer.lfx 								copy %2\OpcDllDaAeServer.lfx %2%1\OpcDllDaAeServer.lfx
goto done

:default
if exist ..\..\..\..\binaries\OpcDllDaAeServer.exe 			copy ..\..\..\..\binaries\OpcDllDaAeServer.exe OpcDllDaAeServer.exe
if exist ..\..\..\binaries\OpcDllDaAeServer.exe    			copy ..\..\..\binaries\OpcDllDaAeServer.exe OpcDllDaAeServer.exe

if exist ..\..\..\..\License\OpcDllDaAeServer.lfx 				copy ..\..\..\..\License\OpcDllDaAeServer.lfx OpcDllDaAeServer.lfx
if exist ..\..\..\License\OpcDllDaAeServer.lfx 					copy ..\..\..\License\OpcDllDaAeServer.lfx OpcDllDaAeServer.lfx

if exist OpcDllDaAeServer.exe 								copy OpcDllDaAeServer.exe win32\debug
if exist OpcDllDaAeServer.lfx 									copy OpcDllDaAeServer.lfx win32\debug

:done