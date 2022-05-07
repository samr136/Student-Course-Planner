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
$sql1 = "Select Elective.Elective_ID,Elective_Name, Credits, Department_Name from Elective,Department where Elective.Department_ID= Department.Department_ID and  Elective.Elective_ID='$id'";
$result1 = mysqli_query($conn, $sql1);

$sql2 = "Select Description from Elective where Elective.Elective_ID='$id'";
$result2 = mysqli_query($conn, $sql2);

$sql3 = "Select Schedule_Time, Schedule_Days,Schedule_Term, Elective_rating, Professor_Name, Professor_Email from Elective_Schedule, Professor where Professor.Professor_ID= Elective_Schedule.Professor_ID and Elective_ID='$id'";
$result3 = mysqli_query($conn, $sql3);

$sql4="Select Elective_Registration.Student_ID, Student_Name, Student_Email,Student_Semester from Student, Elective_Registration where Elective_Registration.Student_ID=Student.Student_ID and Elective_ID='$id'";
$result4= mysqli_query($conn, $sql4);
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
        <h1 style="color:#04AA6D;"><?php echo $id;?></h1>
        <!-- TABLE CONSTRUCTION-->
        <table id="myTable">
            <tr>
              <th>Elective Name</th>
                <th>Credits</th>
                <th>Department</th>
            </tr>
            <!-- PHP CODE TO FETCH DATA FROM ROWS-->
            <?php   // LOOP TILL END OF DATA 
                while($rows=$result1->fetch_assoc())
                {
             ?>
            <tr>
                <!--FETCHING DATA FROM EACH 
                    ROW OF EVERY COLUMN-->
                <td width="200px"><?php echo $rows['Elective_Name'];?></td>
                <td width="50px"><?php echo $rows['Credits'];?></td>
                <td width="250px"><?php echo $rows['Department_Name'];?></td>
            </tr>
            <?php
                }
             ?>
        </table>
           <form>
            <br>
          
        </form>

        <div class="descp">
        <h3 style="color:#04AA6D";>Description </h3>
            <?php   // LOOP TILL END OF DATA 
                while($rows=$result2->fetch_assoc())
                {
             ?>
                <p style="width:50%";><?php echo $rows['Description'];?></p>
            <?php
                }
             ?>
           </div>
           <form>
            <br><br><br>
          
        </form>
        <!-- TABLE CONSTRUCTION-->
        <h3 style="color:#04AA6D";>Schedule </h3>
        <table id="myTable1">
            <tr>
                <th>Time</th>
                <th>Days</th>
                <th>Term</th>
                <th>Rating</th>
                <th>Professor</th>
                <th>Professor's Email</th>
                
            </tr>
            <!-- PHP CODE TO FETCH DATA FROM ROWS-->
            <?php   // LOOP TILL END OF DATA 
                while($rows=$result3->fetch_assoc())
                {
             ?>
            <tr>
                <!--FETCHING DATA FROM EACH 
                    ROW OF EVERY COLUMN-->
        
                <td width="300px"><?php echo $rows['Schedule_Time'];?></td>
                <td width="100px"><?php echo $rows['Schedule_Days'];?></td>
                <td width="250px"><?php echo $rows['Schedule_Term'];?></td>
                <td width="50px"><?php echo $rows['Elective_rating'];?></td>
                <td width="350px"> <?php echo $rows['Professor_Name'];?></td>
                <td width="350px"> <?php echo $rows['Professor_Email'];?></td>
              
            </tr>
            <?php
                }
             ?>
        </table>
 <form>
            <br><br>
          
        </form>
        <!-- TABLE CONSTRUCTION-->
        <h3 style="color:#04AA6D";>Talk to the students who have taken this course </h3>
        <table id="myTable1">
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Student Email</th>
                <th>Semester</th>
                
            </tr>
            <!-- PHP CODE TO FETCH DATA FROM ROWS-->
            <?php   // LOOP TILL END OF DATA 
                while($rows=$result4->fetch_assoc())
                {
             ?>
            <tr>
                <!--FETCHING DATA FROM EACH 
                    ROW OF EVERY COLUMN-->
        
                <td width="30px"><?php echo $rows['Student_ID'];?></td>
                <td width="100px"><?php echo $rows['Student_Name'];?></td>
                <td width="250px"><?php echo $rows['Student_Email'];?></td>
                <td width="30px"><?php echo $rows['Student_Semester'];?></td>
              
            </tr>
            <?php
                }
             ?>
        </table>

        <form>
          <br><br>
        </form>
        <button class="button" onclick="window.location.href='https://webdevdbcourses.prattsi.org/~srastogi/samika/homepage.php'">Go Back</button>

        
        </form>
    </body>
  
</html>





