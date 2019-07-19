Option Explicit

Dim shell, fso
Dim projectPath, rootDir, dotnetVersion, srcFile, dstFile, exeFile, configFile, netFwFile

Set shell = WScript.CreateObject("WScript.Shell")

If WScript.Arguments.Count > 0 Then
    projectPath = WScript.Arguments(0)
    WScript.Echo "Project Path: " & projectPath 
End If

If WScript.Arguments.Count > 1 Then
    rootDir = WScript.Arguments(1)
    WScript.Echo "Root Dir: " & rootDir 
End If

If WScript.Arguments.Count > 2 Then
    dotnetVersion = WScript.Arguments(2)
    WScript.Echo ".NET Version: " & dotnetVersion 
End If

WScript.Echo "" 

Set fso = CreateObject("Scripting.FileSystemObject")

exeFile = rootDir & "Binaries\NET" & dotnetVersion & "\Technosoftware" & dotnetVersion & ".Server.exe"
  
If fso.FileExists(exeFile) Then

  Set srcFile = fso.GetFile(exeFile)
  srcFile.Copy projectPath & "Technosoftware" & dotnetVersion & ".Server.exe"  

  WScript.Echo "Copied Exe File: " & exeFile

End If

configFile = rootDir & "Binaries\NET" & dotnetVersion & "\Technosoftware" & dotnetVersion & ".Server.exe.config"

If fso.FileExists(configFile) Then

  Set srcFile = fso.GetFile(configFile)
  srcFile.Copy projectPath & "Technosoftware" & dotnetVersion & ".Server.exe.config"  

  WScript.Echo "Copied Config File: " & configFile

End If

netFwFile = rootDir & "Binaries\Interop.NetFwTypeLib.dll"
  
If fso.FileExists(netFwFile) Then

  Set srcFile = fso.GetFile(netFwFile)
  srcFile.Copy projectPath & "Interop.NetFwTypeLib.dll"  

  WScript.Echo "Copied Interop.NetFwTypeLib.dll: " & netFwFile

End If
