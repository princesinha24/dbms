<?php
        session_start();
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "songify(sql).sql";
        $message="";
        if(isset($_POST['hai'])) { 
        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            $message="Connection failed";
            die("Connection failed: " . $conn->connect_error);
        }
        else{
            
            $gmail=$_POST['gmail'];
            $pwd=$_POST['pwd'];
            if(empty($gmail)){
                $message="enter your user id";
            }
            elseif(empty($pwd)){
                $message="enter your user password";
            }
            else{
            $select="SELECT Email FROM user WHERE Email=?";
            $stmt=$conn->prepare($select);
            $stmt->bind_param("s",$gmail);
            $stmt->execute();
            $stmt->bind_result($gmail);
            $stmt->store_result();
            $no=$stmt->num_rows;
            $stmt->close();
            if($no==0){
                $message="userid doesn't exist";
            }
            else{
                $sql="SELECT Email,Password FROM user WHERE Email='".$gmail."'";
                $result = $conn -> query($sql);
                $row = $result -> fetch_row();
                if($row[1]!=$pwd){
                    $message="Incorrect Password";
                }
                else{
                    $_SESSION['paccount'] = $gmail;
                    header("Location:songify.php");
                }
            }
        }
    }
            $conn->close();
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
            <a href="new.php"><button>new account</button></a>
        </div>
        <form class="form" method="POST">
            <h2>LOGIN</h2>
            <label>Email Id</label>
            <input type="text" name="gmail" placeholder="email id"><br>
            <label>password</label>
            <input type="password" name="pwd" id="pwd" placeholder="password">
            <input type="checkbox" onclick="show()">
            <br>
            <input type="submit" value="Log In" name="hai" >
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