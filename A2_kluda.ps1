# ----------------------------------------------------------------------
# A2. PowerShell — procesi ar lielāko CPU patēriņu
# ----------------------------------------------------------------------

# Jāizvada pieci procesi ar VISLIELĀKO procesora patēriņu. Izvadās pieci paši mazākie. Atrodi un salabo kļūdu.
#
# Atrodi un salabo. Tad palaid.
# ----------------------------------------------------------------------                                                                                                Rezultātam pievieno arī kolonnu Id.

Get-Process | Sort-Object CPU -desc | Select-Object -first 5 | Format-Table CPU,ProcessName,Id -hidetableheader

    Where-Object { $_.CPU -ne $null } |
    Sort-Object CPU |
    Select-Object -First 5 Name, CPU
