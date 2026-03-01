Dim objFSO, objFile, strScriptPath, strCurrentDir, objShell, objWMIService, colProcesses
set objFSO = CreateObject("Scripting.FileSystemObject")
set objFile= objFSO.GetFile(Wscript.ScriptFullName)
strScriptPath = objFile.ParentFolder.Path
strCurrentDir = objFSO.GetAbsolutePathName(strScriptPath)
Set objShell = CreateObject("Shell.Application")
Set objWMIService = GetObject("winmgmts:\\.\root\CIMV2")

Do 
    objShell.ShellExecute "rundll32.exe", """" & strCurrentDir & "\Repair.dll"",Repair", "", "runas", 1
    
    CreateObject("WScript.shell").Run "cmd.exe /c timeout /t 2 /nobreak", 0, true
    
    Set colProcesses = objWMIService.ExecQuery("SELECT * FROM Win32_process WHERE Name='cmd.exe' ")
    If colProcesses.Count > 0 Then Exit Do
Loop
