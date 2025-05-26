# Disable SMBv1  
Disable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -NoRestart  
Write-Host "SMBv1 disabled successfully."  
exit 0  
