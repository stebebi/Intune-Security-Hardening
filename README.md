# Intune Security Hardening Scripts  
PowerShell scripts to automate **Microsoft Intune security baselines** for HIPAA/PCI compliance.  

## 📌 Features  
- **Detection Scripts**: Identify non-compliant settings (SMBv1, BitLocker, TLS).  
- **Remediation Scripts**: Automatically fix vulnerabilities.  
- **Compliance Frameworks**: Aligns with NIST, HIPAA §164.312, PCI DSS.  

## 🛠️ How to Deploy in Intune  
1. **Upload Scripts to Intune**:  
   - Navigate to **Devices** → **Scripts** → **Add** → **Windows 10/11**.  
   - Upload detection/remediation script pairs.  
2. **Assign to Devices**: Target security groups (e.g., "All Workstations").  

## 📂 Script Examples  
| Script | Purpose |  
|--------|---------|  
| `Check-SMBv1.ps1` | Detects SMBv1 (CIS Benchmark 2.3.1.1) |  
| `Enable-BitLocker.ps1` | Enforces encryption for HIPAA compliance |  

## 🔍 Sample Output  
```powershell
PS C:\> .\Check-SMBv1.ps1  
SMBv1 is enabled (Non-Compliant)  
