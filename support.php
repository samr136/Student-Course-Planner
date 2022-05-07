<?php
$message_sent=false;
if(isset($_POST['email']) && $_POST['email']!='')
{
//Data Sanitization
if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))

//form submission
{$username= $_POST['name'];
$email= $_POST['email'];
$subject= $_POST['subject'];
$message= $_POST['message'];


$to = "srastogi@pratt.edu";
$body = "";

$body .= "From:".$username."\r\n";
$body .= "Email:".$email."\r\n";
$body .= "Message:".$message."\r\n";
mail($to, $subject, $body);


$message_sent= true;
}
}
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="webform.css" media="all">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script src="main.js"></script>
</head>
<style>
  :root{
    --font-color:#555;
    --font-hover-color:orange;
}
body{
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
    font-family:"Raleway", sans-serif;
    background-color:#e9e9e9;
}

.container{
    width:500px;
    box-shadow: 0 15px 35px rgba(50,50,93,.1),0 5px 15px rgba(0,0,0,.07);
    padding:2em;
    background-color:#fff;
}
.form-group{
    margin-bottom:1.5em;
    transition:all .3s;
}
.form-label{
    font-size:.75em;
    color:var(--font-color);
    display:block;
    opacity:0;
    transition: all .3s;
    transform:translateX(-50px);
}
.form-control{
    box-shadow:none;
    border-radius:0;
    border-color:#ccc;
    border-style:none none solid none;
    width:100%;
    font-size:1.25em;
    transition:all .6s;
}
.form-control::placeholder{
    color:#aaa;
}
.form-control:focus{
    box-shadow:none;
    border-color:var(--font-hover-color);
    outline:none;
}
.form-group:focus-within{
    transform:scale(1.1,1.1);
}

.form-control:invalid:focus{
    border-color:red;
}
.form-control:valid:focus{
    border-color:green;
}

.btn{
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
.btn:hover{
    border-color:var(--font-hover-color);
    color:var(--font-hover-color);
}
textarea{
    resize:none;
}



.focused > .form-label{
    opacity:1;
    transform:translateX(0px);

}</style>
<body>
    <?php
    if($message_sent):
        ?>
        <h3 style="color:#04AA6D;"> Thanks, the team will get back to you in 3-5 business days      </h3>
        <form><br><br></form>
       
                <button type="submit" class="btn" onclick="window.location.href='https://webdevdbcourses.prattsi.org/~srastogi/samika/homepage.php'">Go Back</button>
          

    <?php
     else:
    ?>
        
    <div style="margin:50px;">
        <h1 style="color:#04AA6D; text-align:center;">Support</h1>
    <div class="container">
        <form action="support.php" method="POST" class="form">
            <div class="form-group">
                <label for="name" class="form-label">Your Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" tabindex="1" required>
            </div>
            <div class="form-group">
                <label for="email" class="form-label">Your Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email address" tabindex="2" required>
            </div>
            <div class="form-group">
                <label for="subject" class="form-label">Subject</label>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Type in the subject here" tabindex="3" required>
            </div>
            <div class="form-group">
                <label for="message" class="form-label">Message</label>
                <textarea class="form-control" rows="5" cols="50" id="message" name="message" placeholder="Enter Message..." tabindex="4"></textarea>
            </div>
            <div>
                <button type="submit" class="btn">Send Message!</button> 
                <button type="submit" class="btn" onclick="window.location.href='https://webdevdbcourses.prattsi.org/~srastogi/samika/homepage.php'">Go Back</button>
            </div>
        </form>
    </div>
    <?php
endif;
    ?>
</body>

</html>