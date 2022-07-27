$date = Get-Date -Format "yyyyMMddhhmmss";

ping -t $Args[0] |%{(Get-Date).ToString() + " $_"} >> $date-log.txt
