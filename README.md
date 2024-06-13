# OVERVIEW
- The App Processes tab where you can find any apps or backround app processes running.
![App Processes](https://github.com/MartinLXXX6/Windows-Controller-Tool/assets/172432259/91aef9b2-0db1-43b0-9512-b605388b5974)
- The Startup Apps tab (my personal favourite) where you can all the apps/processes that are found in the Windows Registry and might start up with windows at boot time.
TIP: Not everything shown in this tab is starting app, the values indicate it.
![Startup](https://github.com/MartinLXXX6/Windows-Controller-Tool/assets/172432259/43a3ada0-94c0-470d-9e6b-5dec3bb3f7c0)
- Finally, the Windows Processes tab where you can find all the Windows Processes in the backround.
TIP: Be caution about this ones.
![Windows Processes](https://github.com/MartinLXXX6/Windows-Controller-Tool/assets/172432259/4c38b747-aab6-4d3a-aa80-aa559305f2cb)

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
- When attempting the first method, is possible you may encounter an issue where the PowerShell window closes immediately or doesn't appear altogether. This happens in Windows 11 only I believe. Anyways, the second method should work perfectly so just try the second one.
- You may have disabled the ability to run PowerShell scripts for security purposes. You can know this by typing the following command "Get-ExecutionPolicy -List" and checking the Machine Policy state. If it is set to restricted, that means that you are unable to run PowerShell scripts. For more information about how to disable it, there is a great video from ThioJoe called "Disable These 3 Windows Settings Now! (For Security)". This setting is found from the minute 4:22 to 8:27. You might wanna disable it just for this time but if you dont run powershell scripts very frequently I do recommend turning it on.
- On the other hand, there is a chance that you mistyped commands so try another method or retry the methods.
- Dont hesitate to search the web on how to run PowerShell scripts or by typing the error given by PowerShell.
