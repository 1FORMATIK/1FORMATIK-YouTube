$timeout = new-timespan -Minutes 1440
$sw = [diagnostics.stopwatch]::StartNew()
while ($sw.elapsed -lt $timeout){
    $iteration = Get-Random -Minimum 30 -Maximum 100
    [void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")
    [Microsoft.VisualBasic.Interaction]::AppActivate("New World") 
    [void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms") 
    [System.Windows.Forms.SendKeys]::SendWait("Z")
    start-sleep -seconds $iteration
    write-host "Activation du script :: $(Get-Date -format 'U')"
}
