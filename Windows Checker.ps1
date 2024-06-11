While($true){
    Clear-Host
    $SystemProcesses = @("*CompPkgSrv*", "*xx", "*chost*", "*tHost*", "*vhost*", "*lhost*", "*eHost*", "*hostw*", "*lsass*", "*dwm*", "AUEPDU", "*csrss*", "*sqlwriter*", "*smss*", "*LsaIso*", "MsMpEng", "*win*", "*wmi*", "*System*", "*runtime*", "*Registry*", "Memory Compression", "explorer", "*defender*", "*screen*", "*broker*", "services")

    Write-Host ""
    $OptionChosen = Read-Host "         -APP PROCESSES-(A)        -STARTUP APPS-(S)        -WINDOWS PROCESSES-(W)        -END-         "

    if($OptionChosen -like "*app processes*" -or $OptionChosen -eq "a")
    {
        while($true)
        {
            clear
            Write-Host ""
            Write-Host "App processes that are currently running in the background. Consider reducing them if your computer is slow. Search the web for more info."
            Write-Host ""

            Get-Process | Where-Object {
                $processName = $_.ProcessName
                $excluded = $false

                foreach($name in $SystemProcesses)
                {
                    if($processName -like $name)
                    {
                        $excluded = $true
                        break
                    }
                }
                -not $excluded
            } | Format-Table -AutoSize

            Write-Host ""
            $appQ = Read-Host "                -RETURN-(R)                     -REFRESH-(F)                   -END-                 "

            if($appQ -like "*end*")
            {
                break
            }
            elseif($appQ -like "*return*" -or $appQ -eq "r")
            {
                Clear-Host
                break
            }            
            elseif($appQ -like "*refresh*" -or $appQ -eq "f")
            {
                clear
                Clear-Host
            }
        }

        if($appQ -like "*end*")
        {
            break
        }
    }
    elseif($OptionChosen -like "*startup apps*" -or $OptionChosen -eq "s")
    {
        while($true)
        {
            clear
            Write-Host ""
            Write-Host "Apps that start as soon as the computer turns on. Consider searching how to disable them to help reduce boot time and overall performance. These apps are located in the Registry Editor."
            Write-Host ""
            Write-Host "                        {3} = DISABLED                      {2}/{6} = ENABLED                  "
            Write-Host ""

            Get-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run | Get-ItemProperty | ForEach-Object {$_.PSObject.Properties | Where-Object { $_.Name -ne "PSPath" -and $_.Name -ne "PSParentPath" -and $_.Name -ne "PSChildName" -and $_.Name -ne "PSDrive" -and $_.Name -ne "PSProvider" } |
            ForEach-Object {[PSCustomObject]@{PSChildName = $_.Name
            Value = $_.Value}}} | Format-Table -AutoSize
            Write-Host ""
            Get-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\StartupFolder | Get-ItemProperty | ForEach-Object {$_.PSObject.Properties | Where-Object { $_.Name -ne "PSPath" -and $_.Name -ne "PSParentPath" -and $_.Name -ne "PSChildName" -and $_.Name -ne "PSDrive" -and $_.Name -ne "PSProvider" } |
            ForEach-Object {[PSCustomObject]@{PSChildName = $_.Name
            Value = $_.Value}}} | Format-Table -AutoSize
            Write-Host ""
            Get-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run | Get-ItemProperty | ForEach-Object {$_.PSObject.Properties | Where-Object { $_.Name -ne "PSPath" -and $_.Name -ne "PSParentPath" -and $_.Name -ne "PSChildName" -and $_.Name -ne "PSDrive" -and $_.Name -ne "PSProvider" } |
            ForEach-Object {[PSCustomObject]@{PSChildName = $_.Name
            Value = $_.Value}}} | Format-Table -AutoSize
            Write-Host ""
            Get-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run32 | Get-ItemProperty | ForEach-Object {$_.PSObject.Properties | Where-Object { $_.Name -ne "PSPath" -and $_.Name -ne "PSParentPath" -and $_.Name -ne "PSChildName" -and $_.Name -ne "PSDrive" -and $_.Name -ne "PSProvider" } |
            ForEach-Object {[PSCustomObject]@{PSChildName = $_.Name
            Value = $_.Value}}} | Format-Table -AutoSiz
            Write-Host ""
            Get-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\StartupFolder | Get-ItemProperty | ForEach-Object {$_.PSObject.Properties | Where-Object { $_.Name -ne "PSPath" -and $_.Name -ne "PSParentPath" -and $_.Name -ne "PSChildName" -and $_.Name -ne "PSDrive" -and $_.Name -ne "PSProvider" } |
            ForEach-Object {[PSCustomObject]@{PSChildName = $_.Name
            Value = $_.Value}}} | Format-Table -AutoSize

            Write-Host ""
            $appQ = Read-Host "                -RETURN-(R)                     -REFRESH-(F)                   -END-                 "

            if($appQ -like "*end*")
            {
                break
            }
            elseif($appQ -like "*return*" -or $appQ -eq "r")
            {
                Clear-Host
                break
            }
            elseif($appQ -like "*refresh*" -or $appQ -eq "f")
            {
                clear
                Clear-Host
            }
        }

        if($appQ -like "*end*")
        {
            break
        }
    }
    elseif($OptionChosen -like "*windows processes*" -or $OptionChosen -eq "w")
    {
        while($true)
        {
            clear
            Write-Host ""
            Write-Host "Windows processes that are currently running. Stop this processes as a final measure as they may lead to unwanted behaviours."
            Write-Host ""

            Get-Process | Where-Object {
            $processName = $_.ProcessName
            $included = $false

            foreach($name in $SystemProcesses)
            {
                if($processName -like $name)
                {
                    $included = $true
                    break
                }
            }
            $included
            } | Format-Table -AutoSize

            Write-Host ""
            $appQ = Read-Host "                -RETURN-(R)                     -REFRESH-(F)                   -END-                 "

            if($appQ -like "*end*")
            {
                break
            }
            elseif($appQ -like "*return*" -or $appQ -eq "r")
            {
                Clear-Host
                break
            }            
            elseif($appQ -like "*refresh*" -or $appQ -eq "f")
            {
                clear
                Clear-Host
            }
        }

        if($appQ -like "*end*")
        {
            break
        }
    }
    elseif($OptionChosen -like "*end*")
    {
        break
    }
}
Exit