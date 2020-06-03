<?php
    $name=$_POST['Name'];
    $userid=$_POST['userid'];
    $gmail=$_POST['gmail'];
    $pwd=$_POST['pwd'];
    if(!empty($name)&&!empty($userid)&&!empty($gmail)&&!empty($pwd)){
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "dbms";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            $message="Connection failed";
            die("Connection failed: " . $conn->connect_error);
        }
        else{
            $select="SELECT userid FROM register WHERE userid=?";
            $stmt=$conn->prepare($select);
            $stmt->bind_param("s",$userid);
            $stmt->execute();
            $stmt->bind_result($userid);
            $stmt->store_result();
            $no=$stmt->num_rows;
            $stmt->close();
            if($no==0){
                $sql="INSERT INTO register (name, userid, email, password) VALUES (?,?,?,?)";
                $stmt=$conn->prepare($sql);
                $stmt->bind_param("ssss",$name,$userid,$gmail,$pwd);
                if($stmt->execute()==TRUE){
                    $message="user id has been created";
                    $stmt->close();
                }
            }
            else{
                $message="userid already exist";
            }
        }
    }
    else{
        $message="fill the complete form";
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
            <a href="login.html"><button>Log In</button></a>
        </div>
        <form  method="POST" class="form">
            <h2>Create Account</h2>
            <label>Name</label>
            <input type="text" name="Name" placeholder="Name"><br>
            <label>user id</label>
            <input type="text" name="userid" placeholder="user id"><br>
            <label>email id</label>
            <input type="email" name="gmail" placeholder="emai id"><br>
            <label>password</label>
            <input type="password" name="pwd" id="pwd" placeholder="password">
            <input type="checkbox" onclick="show()">
            <br>
            <input type="submit" value="Create Account">
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
