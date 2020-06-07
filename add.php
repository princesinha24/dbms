<?php
session_start(); 
if ( ! isset($_SESSION['paccount'])) {
  die('Not logged in');
}
else{
    $mess="";
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "songify(sql).sql";
    $message="";
    $conn = new mysqli($servername, $username, $password, $dbname);
    $sql="SELECT UserName from user where Email='".$_SESSION['paccount']."'";
    $result = $conn -> query($sql);
    $row1 = $result -> fetch_row();
    $message=$row1[0];

        if(isset($_POST['add1'])){
            $sql="SELECT * from artist where Name='".$message."'";
            $result = $conn->query($sql);
            $row1=$result->fetch_row();
            $artistid=$row1[0];
        if(!empty($_POST['sname'])&&!empty($_POST['album'])&&!empty($_POST['genre'])&&!empty($_POST['mood'])&&!empty($_POST['language'])&&!empty($_POST['r_date'])&&!empty($_POST['rate'])){
        $sql="SELECT * from album WHERE NAME='".$_POST['album']."' ";
        $result = $conn->query($sql);
        $row=$result->fetch_row();
        if($row==0){
            $sql1="INSERT INTO album (NAME) VALUES('".$_POST['album']."')";
            $conn->query($sql1);
        }
        $sql="SELECT * from album WHERE NAME='".$_POST['album']."' ";
        $result = $conn->query($sql);
        $row=$result->fetch_row();
        $albumid=$row[0];

        $sql="SELECT * from genre WHERE Name='".$_POST['genre']."' ";
        $result = $conn->query($sql);
        $row=$result->fetch_row();
        if($row==0){
            $sql1="INSERT INTO genre (Name) VALUES('".$_POST['genre']."')";
            $conn->query($sql1);
        }
        $sql="SELECT * from genre WHERE Name='".$_POST['genre']."' ";
        $result = $conn->query($sql);
        $row=$result->fetch_row();
        $genreid=$row[0];

        $sql="SELECT * from mood WHERE Name='".$_POST['mood']."' ";
        $result = $conn->query($sql);
        $row=$result->fetch_row();
        if($row==0){
            $sql1="INSERT INTO mood (Name) VALUES('".$_POST['nood']."')";
            $conn->query($sql1);
        }
        $sql="SELECT * from mood WHERE Name='".$_POST['mood']."' ";
        $result = $conn->query($sql);
        $row=$result->fetch_row();
        $moodid=$row[0];

        $sql="SELECT * from language WHERE Name='".$_POST['language']."' ";
        $result = $conn->query($sql);
        $row=$result->fetch_row();
        if($row==0){
            $sql1="INSERT INTO language (Name) VALUES('".$_POST['language']."')";
            $conn->query($sql1);
        }
        $sql="SELECT * from language WHERE Name='".$_POST['language']."' ";
        $result = $conn->query($sql);
        $row=$result->fetch_row();
        $languageid=$row[0];
        
        $sql="INSERT INTO songs (Name,Album_id,Genre_id,Mood_id,Lang_id,Release_Date,Rating,Artist_id) 
        VALUES('".$_POST['sname']."','".$albumid."','".$genreid."','".$moodid."','".$languageid."','".$_POST['r_date']."','".$_POST['rate']."','".$artistid."')";
        if($conn->query($sql)){
            $mess="Song Added";
        }
    }
    else{
        $mess="Fill the complete form";
    }
}
}
?>
<!DOCTYPE html>
<html>
    <head>
    <title>Artist Login</title>
    <link rel="stylesheet" href="style1.css">
    <meta charset="utf-8">
    </head>
    <body>
        <h1>Songify:Discover Your Music</h1>
        <?php
            echo "<h2>WELCOME ".$message."</h2>";
        ?>
        <a href="songify.php">HOME</a>&nbsp;
        <a href="contact.php">Contact</a>&nbsp;
        <form method="POST" action="logout.php" class="logout">
            <input type="submit" value="Log Out" name="logout">
        </form>
        <hr>
        <div>
        <?php
            echo "<div style='color:green'>".$mess."</div>";
        ?>
        </div>
        <?php
            $sql="SELECT * from artist where Name='".$message."'";
            $result = $conn->query($sql);
            $row1=$result->fetch_row();
            if($row1==0){
                die("you are not a artist");
            }
            else{  ?>
            <form  method="POST" class="form">
            <h2>ADD SONG</h2>
            <label>Song</label>
            <input type="text" name="sname" placeholder="Song name"><br>
            <label>Album</label>
            <input type="text" name="album" placeholder="album"><br>
            <label>Genre</label>
            <input type="text" name="genre" placeholder="genre"><br>
            <label>Mood</label>
            <input type="text" name="mood" placeholder="mood"><br>
            <label>language</label>
            <input type="text" name="language" placeholder="language"><br>
            <label>Rating</label>
            <input type="text" name="rate" placeholder="rating out of 5"><br>
            <label>Release Date</label>
            <input type="text" name="r_date" placeholder="dd-mm-yy"><br>
            <input type="submit" value="Add Song" name="add1">
        </form>
        <?php }?>
    </body>
</html>