ping -t $Args[0] |%{(Get-Date).ToString()+" "+ $_}
