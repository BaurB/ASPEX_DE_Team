$server = "tcp:de-team.database.windows.net,1433" 
$user = "de-team-admin"
$password =  "DEpassword0"
$dbname = "DE-Team-Batayev-Bauyrzhan-DB"
$ConnectionString = ("Server={0};Initial Catalog={1};Persist Security Info=False;User ID={2};Password={3};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;" -f $server, $dbName, $user, $password)

$SqlConnection  = New-Object System.Data.SqlClient.SqlConnection($ConnectionString)
$query = "DROP TABLE IF EXISTS Company;
DROP TABLE IF EXISTS Product;
CREATE TABLE Company
(
    CompanyID BIGINT IDENTITY,
    Name VARCHAR(100),
    Industry VARCHAR(100)
)
CREATE TABLE Product
(
    ProductID BIGINT IDENTITY,
    Name VARCHAR(100),
    Price BIGINT
)
"


$SqlCmd = New-Object System.Data.SqlClient.SqlCommand($query, $SqlConnection )
$SqlConnection.Open()
$SqlCmd.ExecuteNonQuery()
