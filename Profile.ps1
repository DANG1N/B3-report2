<# This script creates a powershell profile that means we can use the sudo command (like linux) to force admin use of the following command.

I will put it in $PSHOME\Profile.ps1

#>

function sudo {
    Start-Process @args -verb runas
}