$server = "tcp:de-team.database.windows.net,1433" 
$user = "de-team-admin"
$password =  "DEpassword0"
$dbname = "DE-Team-Batayev-Bauyrzhan-DB"
$ConnectionString = ("Server={0};Initial Catalog={1};Persist Security Info=False;User ID={2};Password={3};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;" -f $server, $dbName, $user, $password)

$SqlConnection  = New-Object System.Data.SqlClient.SqlConnection($ConnectionString)
$query = "
INSERT INTO Company VALUES (1, 'Apple', 'BigTech');
INSERT INTO Product VALUES (1,'IPhone', 799)
"


$SqlCmd = New-Object System.Data.SqlClient.SqlCommand($query, $SqlConnection )
$SqlConnection.Open()
$SqlCmd.ExecuteNonQuery()
