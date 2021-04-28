Add-Type -AssemblyName System.Windows.Forms
 
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{
    Multiselect = $true
}
 
[void]$FileBrowser.ShowDialog()
$FileBrowser.FileNames
Remove-Item -Confirm $FileBrowser.FileNames