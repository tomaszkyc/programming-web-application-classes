## Podłączenie do bazy

Aby podłączyć się do lokalnej bazy MSSQL (serwera lub kontenera Docker): 
```
aspnet_regsql.exe -S (local)\SQLEXPRESS -U sa -P P@ssw0rd123$$ -A all -d AdventureWorksLT
```