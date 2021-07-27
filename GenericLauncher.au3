#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.6.0

	Author:  This is Copyrighted by TWINGSISTEER
	under Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0) 2019
	Script Function: generic bat launcher.
	Put xxx.bat where this file is as xxx.exe the bat will be launched with usual
	parameters. We simply covert the last occurrence of .exe in .bat and run.

#ce ----------------------------------------------------------------------------
#include <FileConstants.au3>
#include <StringConstants.au3>
#ce
; Script Start
$parameters = " "
For $i = 1 To $CmdLine[0]
    $parameters = $parameters & " " & $CmdLine[$i]
Next
Global $cmd = StringReplace ( @scriptname, ".exe", ".bat" , -1 ,  $STR_NOCASESENSE )
Global $gocmd = @ScriptDir & "\" & $cmd
$log = ShellExecuteWait($gocmd,$parameters,@ScriptDir)