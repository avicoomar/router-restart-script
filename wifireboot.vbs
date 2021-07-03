set WshShell = WScript.CreateObject("WScript.Shell")

'Open a Telnet connection to router IP'
'Delay of 1 seconds in between using the Sleep 1000ms parameter when entering commands'

WshShell.run"telnet.exe 192.168.1.1"
WScript.Sleep 1000

'Provide username
WshShell.SendKeys"admin"
WshShell.SendKeys("{Enter}")
WScript.Sleep 1000

'Provide user password
WshShell.SendKeys"admin"
WshShell.SendKeys("{Enter}")
WScript.Sleep 1000

'Reboot the router
WshShell.SendKeys"dev reboot"
WshShell.SendKeys("{Enter}")
WScript.Sleep 1000