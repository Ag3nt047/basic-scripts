Get-ADUser -Filter "SamAccountName -like '*<ACCOUNT NAME>*'" -properties PasswordLastSet, PasswordNeverE
xpires, PasswordExpired, PasswordNeverExpires, msDS-UserPasswordExpiryTimeComputed | ft Name, PasswordLastSet, PasswordN
everExpires, PasswordExpired, PasswordNeverExpires, @{Name="ExpiryDate";Expression={[datetime]::FromFileTime($_."msDS-Us
erPasswordExpiryTimeComputed")}}
