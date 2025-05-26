# Enable BitLocker with TPM + PIN  
Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -TpmAndPinProtector -Pin (ConvertTo-SecureString -String "YourPIN123" -AsPlainText -Force)  
Backup-BitLockerKeyProtector -MountPoint "C:" -Path "C:\Temp\BitLocker_RecoveryKey.txt"  
exit 0  
