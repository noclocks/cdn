Function Install-Chocolatey {
    <#
    .SYNOPSIS
        Installs Chocolatey Package Manager
    .DESCRIPTION
        This function installs Chocolatey Package Manager on the local machine.
    .EXAMPLE
        Install-Chocolatey
    #>
    [CmdletBinding(SupportsShouldProcess)]
    [OutputType([Void])]
    Param()

    Begin {
        Write-Information -MessageData "Checking for Chocolatey Installation"
        $ChocolateyInstalled = Test-Path -Path "C:\ProgramData\chocolatey"
        if ($ChocolateyInstalled) {
            Write-Warning -MessageData "Chocolatey is already installed"
            throw
        } else {
            Write-Information -MessageData "No Chocolatey Installation Detected..."
        }

        Write-Information -MessageData "Setting Execution Policy to Bypass"
        $PreExecExecutionPolicy = Get-ExecutionPolicy
        Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

        Write-Information -MessageData "Ensuring Administrative Privileges"
        $IsAdmin = [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")
        if (-not $IsAdmin) {
            Write-Warning -MessageData "You must run this script as an Administrator"
            throw
        } else {
            Write-Information -MessageData "Administrative Privileges Confirmed"
        }
    }

    Process {
        Write-Information -MessageData "Installing Chocolatey"
        Invoke-WebRequest "https://chocolatey.org/install.ps1" -UseBasicParsing | Invoke-Expression
    }

    End {
        Write-Information -MessageData "Restoring Execution Policy"
        Set-ExecutionPolicy -ExecutionPolicy $PreExecExecutionPolicy
        Write-Host "Chocolatey Installation Complete" -ForegroundColor Green
    }
}

Install-Chocolatey
