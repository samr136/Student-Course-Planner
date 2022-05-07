<?php
# Create variables to store our db login information
$hn = 'localhost'; 
$un = 'srastogi_mysql'; 
$db = 'srastogi_638'; 
$pw = 'tqTtBA0MfHnq';
# Make the connection to mysql using the credentials above
$conn =new mysqli($hn, $un, $pw, $db);;
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "Select Professor_ID, Professor_Name, Professor_Email, Department_Name from Professor,Department where Professor.Department_ID=Department.Department_ID";
$result = mysqli_query($conn, $sql);
mysqli_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {box-sizing: border-box;}
p.ex1 {
  margin: 35px;
}
#myInput {
  background-image: url('https://www.w3schools.com/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
  border-radius: 4px;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav .login-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
  width:120px;
}

.topnav .login-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background-color: #555;
  color: white;
  font-size: 17px;
  border: none;
  cursor: pointer;
  border-radius: 8px;
}

.topnav .login-container button:hover {
  background-color: green;
}

@media screen and (max-width: 600px) {
  .topnav .login-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .login-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}

table {
  border-collapse: collapse;
  width: 100%;
}
th {
  padding-top: 32px;
  padding-bottom: 32px;
  padding-left:32px;
  padding-right:32px;
  text-align: left;
  background-color: #36454f;
  color: white;
}
td {
  text-align: left;
  padding: 32px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
tr:hover {background-color: #ddd;}
</style>
</head>
<body>
</style>
</head>
<body>

<div class="topnav">
  <a href="homepage.php">Home</a>
  <a class="active" href="Professor.php">Faculty</a>
  <a href="advisor.php">Advisors</a>
  <div class="login-container">
    <form action="/support.php">
      <a href="support.php">Support</a>
    </form>
  </div>
</div>
<div style="margin:50px;">
        <h1 style="color:#04AA6D;">Faculty</h1>
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Professor ID, Professor Name, Elective ID and Department" title="Enter Elective ID">
        <!-- TABLE CONSTRUCTION-->
        <table id="myTable">
            <tr>
                <th>Professor ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Department </th>
            </tr>
            <!-- PHP CODE TO FETCH DATA FROM ROWS-->
            <?php   // LOOP TILL END OF DATA 
                while($rows=$result->fetch_assoc())
                {
             ?>
            <tr>
                <!--FETCHING DATA FROM EACH 
                    ROW OF EVERY COLUMN-->
                <td width="150px"> <a href="professor_details.php/?id=<?php echo $rows['Professor_ID'];?>" style="color:#04AA6D"><?php echo $rows['Professor_ID'];?></a></td>
                <td width="200px"><?php echo $rows['Professor_Name'];?></td>
                <td width="50px"><?php echo $rows['Professor_Email'];?></td>
                <td width="250px"><?php echo $rows['Department_Name'];?></td>
            </tr>

            <?php
                }
             ?>
        </table>
    </body>
    <script>
function myFunction() {
  var input, filter, table, tr, td, cell, i, j;
  filter = document.getElementById("myInput").value.toLowerCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 1; i < tr.length; i++) {
    tr[i].style.display = "none";
    const tdArray = tr[i].getElementsByTagName("td");
    for (var j = 0; j < tdArray.length; j++) {
      const cellValue = tdArray[j];
      if (cellValue && cellValue.innerHTML.toLowerCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
        break;
      }
    }
  }
}
</script>
  
</html>





