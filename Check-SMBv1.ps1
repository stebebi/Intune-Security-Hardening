# Check if SMBv1 is enabled  
$smbv1Status = Get-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol"  

if ($smbv1Status.State -eq "Enabled") {  
    Write-Host "SMBv1 is enabled (Non-Compliant)"  
    exit 1  # Intune marks as non-compliant  
} else {  
    Write-Host "SMBv1 is disabled (Compliant)"  
    exit 0  # Intune marks as compliant  
}  
