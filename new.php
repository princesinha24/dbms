<?php

    $message="";
    
    if(isset($_POST['cre'])){
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "songify(sql).sql";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            $message="Connection failed";
            die("Connection failed: " . $conn->connect_error);
        }
        else{
            $name=$_POST['Name'];
            $gmail=$_POST['gmail'];
            $pwd=$_POST['pwd'];
            if(!empty($name)&&!empty($gmail)&&!empty($pwd)){
            $select="SELECT Email FROM user WHERE Email=?";
            $stmt=$conn->prepare($select);
            $stmt->bind_param("s",$gmail);
            $stmt->execute();
            $stmt->bind_result($gmail);
            $stmt->store_result();
            $no=$stmt->num_rows;
            $stmt->close();
            if($no==0){
                $sql="INSERT INTO user ( UserName, Password,Email) VALUES (?,?,?)";
                $stmt=$conn->prepare($sql);
                $stmt->bind_param("sss",$name,$pwd,$gmail);
                if($stmt->execute()==TRUE){
                    $message="user id has been created";
                    $stmt->close();
                }
            }
            else{
                $message="userid already exist";
            }
        }
        else{
            $message="Fill the complete form";
        }
        $conn->close();
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
    <title>Songify:Discover Your Music</title>
    <link rel="stylesheet" href="style.css">
    <meta charset="utf-8">
    </head>
    <body>
        <h1>Songify:Discover Your Music</h1>
        <hr>
        <?php
            echo "<div style='color:red'>".$message."</div>";
        ?>
        <div class="new_account">
            <a href="login.php"><button>Log In</button></a>
        </div>
        <form  method="POST" class="form">
            <h2>Create Account</h2>
            <label>Name</label>
            <input type="text" name="Name" placeholder="Name"><br>
            <label>email id</label>
            <input type="email" name="gmail" placeholder="email id"><br>
            <label>password</label>
            <input type="password" name="pwd" id="pwd" placeholder="password">
            <input type="checkbox" onclick="show()">
            <br>
            <input type="submit" value="Create Account" name="cre">
        </form>
        <script>
            function show(){
                var pas=document.getElementById("pwd");
                if(pas.type==="password"){
                    pas.type="text";
                }
                else{
                    pas.type="password";
                }
            }
        </script>
    </body>
</html>
