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
$id = isset($_GET['id']) ? $_GET['id'] : '';
$sql1= "Select Professor_ID, Professor_Name, Professor_Email, Education, biography, Department_Name from Professor, Department where Professor.Department_ID=Department.Department_ID and Professor_ID='$id'";

$result1 = mysqli_query($conn, $sql1);

$sql2 ="Select Elective_Schedule.Elective_ID, Elective_Name, Schedule_Time, Schedule_Days, Schedule_Term from Elective_Schedule,Elective where Professor_ID='$id' and Elective_Schedule.Elective_ID=Elective.Elective_ID";
$result2 = mysqli_query($conn, $sql2);
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
.button {
  background-color: #04AA6D;; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 8px;
}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #36454f;
  color: white;
}

table {
  border-collapse: collapse;
  width: 50%;
}

th {
  text-align: left;
  padding: 32px;
  background-color: #36454f;

}
td {
  text-align: left;
  padding: 32px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
tr:hover {background-color: #ddd;}

#myTable1 tr:nth-child(odd) {background-color: #D3D3D3;}
.desc {
  background-color: #ddd;
  width: 50%;
  border: #ddd;
  padding: 50px;
  margin: 20px;

}
</style>
</head>
<body>
</style>
</head>
<body>



<div style="margin:50px;">
      
        <?php   // LOOP TILL END OF DATA 
                while($rows=$result1->fetch_assoc())
                {
             ?>
              <h1 style="color:#04AA6D;"><?php echo $rows['Professor_Name'];?></h1>
            <h3 style="color:#04AA6D;"><?php echo $rows['Professor_Email']." | ". "ID: ".$rows['Professor_ID']." | ".$rows['Department_Name'] ;?></h3>

            <form><br></form>
               <div class="descp">
          
              <h3 style="color:#04AA6D;">Education</h3> 
               <p style="width:50%";><?php echo $rows['Education'];?></p>
               <form><br></form>

               <h3 style="color:#04AA6D;">Biography</h3> 
               <p style="width:50%";><?php echo $rows['biography'];?></p>

            <?php
                }
             ?>
            <form><br><br></form>

            <h3 style="color:#04AA6D";>Courses Taught </h3>
        <table id="myTable">
            <tr>
                <th>Elective ID</th>
                <th>Elective Name</th>
                <th>Schedule Time</th>
                <th>Schedule Days</th>
                <th>Schedule Term</th>
                
            </tr>
            <!-- PHP CODE TO FETCH DATA FROM ROWS-->
            <?php   // LOOP TILL END OF DATA 
                while($rows=$result2->fetch_assoc())
                {
             ?>
            <tr>
                <!--FETCHING DATA FROM EACH 
                    ROW OF EVERY COLUMN-->
        
                 <td width="100px"><?php echo $rows['Elective_ID'];?></td>
                <td width="550px"> <?php echo $rows['Elective_Name'];?></td>
                <td width="300px"><?php echo $rows['Schedule_Time'];?></td>
                <td width="200px"><?php echo $rows['Schedule_Days'];?></td>
                <td width="300px"><?php echo $rows['Schedule_Term'];?></td>
               
           
              
            </tr>
            <?php
                }
             ?>
        </table>
        <form><br><br></form>

        <button class="button" onclick="window.location.href='https://webdevdbcourses.prattsi.org/~srastogi/samika/Professor.php'">Go Back</button>

        
        </form>
    </body>
    <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
  
</html>





