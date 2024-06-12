# HOW TO RUN .PS1 FILES
FIRST METHOD:
- Right click the .ps1 file and click "Run with PowerShell"
- Now go over the SmartScreen prompts if necessary. (Note: In Windows 11 you need to show all the details to see the "RUN" button).
- Enjoy the script!!

SECOND METHOD:
- Run a new empty Windows Powershell instance.
- Type the following command: "Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process" (without the quotation marks).
- Type "A" on the Powershell propt to continue.
- Nextly, locate the .ps1 script in File Explorer and copy the path to it without any quotation marks (Example: "C:\Users\\(YOUR USERNAME)\Downloads").
- Now type the following command: "(PASTE THE LOCATION COPIED BEFORE)\WindowsChecker.ps1"
- Enjoy the script!!

POSSIBLE ISSUES:
- You may have disabled the ability to run PowerShell scripts for security purposes. You can know this by typing the following command "Get-ExecutionPolicy -List" and checking the Machine Policy state. If it is set to restricted, that means that you are unable to run PowerShell scripts. For more information about how to disable it, there is a great video from ThioJoe called "Disable These 3 Windows Settings Now! (For Security)". This setting is found from the minute 4:22 to 8:27. You might wanna disable it just for this time but if you dont run powershell scripts very frequently I do recommend turning it on.
- On the other hand, there is a chance that you mistyped commands so try another method or retry the methods.
- Dont hesitate to search the web on how how to run PowerShell scripts or by typing the error given by PowerShell.
