#provides access to windows forms inc cursor control
Add-Type -AssemblyName System.Windows.Forms
while ($true)
{
  $Pos = [System.Windows.Forms.Cursor]::Position
  $x = ($pos.X) + 1
  $y = ($pos.Y) + 1
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  Start-Sleep -Seconds 69
}

param($minutes = 60)

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
  Start-Sleep -Seconds 
  $myshell.sendkeys("SCROLLOCK")
}