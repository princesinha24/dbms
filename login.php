<?php
    $userid=$_POST['userid'];
    $pwd=$_POST['pwd'];
    if(empty($userid)){
        $message="enter your user id";
    }
    elseif(empty($pwd)){
        $message="enter your user password";
    }
    else{
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
                $message="userid doesn't exist";
            }
            else{
                $sql="SELECT userid,password FROM register WHERE userid='".$userid."'";
                $result = $conn -> query($sql);
                $row = $result -> fetch_row();
                if($row[1]!=$pwd){
                    $message="Incorrect Password";
                }
                else{
                    header("Location:songify.html");
                }
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
        <?php
            echo "<div style='color:red'>".$message."</div>";
        ?>
        <a href="songify.html">HOME</a>
        <hr>
        <div class="new_account">
            <a href="new.html"><button>new account</button></a>
        </div>
        <form class="form" method="POST">
            <h2>LOGIN</h2>
            <label>user id</label>
            <input type="text" name="userid" placeholder="user id"><br>
            <label>password</label>
            <input type="password" name="pwd" id="pwd" placeholder="password">
            <input type="checkbox" onclick="show()">
            <br>
            <button type="submit">Log In</button> 
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