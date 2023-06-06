# Durée d'exécution du script en minute
$duree_en_minute = 720

# Occurrence de rafraichissement en seconde
$refresh_en_seconde = 5

# Quel navigateur internet utilisez-vous (Google Chrome, Firefox, Opera, Brave...)
$navigateur = "Brave"

$timeout = new-timespan -Minutes $duree_en_minute
$sw = [diagnostics.stopwatch]::StartNew()
while ($sw.elapsed -lt $timeout){
	[void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")
	[Microsoft.VisualBasic.Interaction]::AppActivate($navigateur) 
	[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms") 
	[System.Windows.Forms.SendKeys]::SendWait("{F5}")
	$dateheure = Get-Date
	Write-Host "Rafraichissement :"$dateheure
	start-sleep -seconds $refresh_en_seconde
}
