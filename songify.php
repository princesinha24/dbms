<?php
session_start(); 
if ( ! isset($_SESSION['paccount'])) {
  die('Not logged in');
}
else{
    $mess2="";
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "songify(sql).sql";
    $message="";
    $conn = new mysqli($servername, $username, $password, $dbname);
    $sql="SELECT UserName from user where Email='".$_SESSION['paccount']."'";
    $result = $conn -> query($sql);
    $row = $result -> fetch_row();
    $message=$row[0];
    if(isset($_POST['language'])){
        $apply1=$_POST['language'];
        $sql1="SELECT songs.Song_id,songs.Name,songs.Release_Date,songs.Rating,
        artist.Name AS Artist,album.NAME AS Album, genre.Name AS Genre 
        FROM songs JOIN album JOIN genre JOIN artist JOIN language
        ON songs.Album_id=album.ALBUM_id AND songs.genre_id=genre.Genre_id 
        AND songs.Artist_id=artist.Artist_id AND language.Language_id=songs.Lang_id
        WHERE songs.Lang_id='".$apply1."'";
        $all_songs = $conn->query($sql1);
    }
    elseif(isset($_POST['genre'])){
        $apply3=$_POST['genre'];
        $sql1="SELECT songs.Song_id,songs.Name,songs.Release_Date,songs.Rating,
        artist.Name AS Artist,album.NAME AS Album, genre.Name AS Genre 
        FROM songs JOIN album JOIN genre JOIN artist JOIN language
        ON songs.Album_id=album.ALBUM_id AND songs.genre_id=genre.Genre_id 
        AND songs.Artist_id=artist.Artist_id AND language.Language_id=songs.Lang_id
        WHERE songs.Genre_id='".$apply3."'";
        $all_songs = $conn->query($sql1);
    }
    elseif(isset($_POST['mood'])){
        $apply2=$_POST['mood'];
        $sql1="SELECT songs.Song_id,songs.Name,songs.Release_Date,songs.Rating,
        artist.Name AS Artist,album.NAME AS Album, genre.Name AS Genre 
        FROM songs JOIN album JOIN genre JOIN artist JOIN mood
        ON songs.Album_id=album.ALBUM_id AND songs.genre_id=genre.Genre_id 
        AND songs.Artist_id=artist.Artist_id
        WHERE songs.Mood_id='".$apply2."'";
        $all_songs = $conn->query($sql1);
    }
    elseif(isset($_POST['album'])){
        $apply4=$_POST['album'];
        $sql1="SELECT songs.Song_id,songs.Name,songs.Release_Date,songs.Rating,
        artist.Name AS Artist,album.NAME AS Album, genre.Name AS Genre 
        FROM songs JOIN album JOIN genre JOIN artist JOIN mood
        ON songs.Album_id=album.ALBUM_id AND songs.genre_id=genre.Genre_id 
        AND songs.Artist_id=artist.Artist_id
        WHERE songs.Album_id='".$apply4."'";
        $all_songs = $conn->query($sql1);
    }
    else{
        $sql1="SELECT songs.Song_id,songs.Name,songs.Release_Date,songs.Rating,
        artist.Name AS Artist,album.NAME AS Album, genre.Name AS Genre 
        FROM songs JOIN album JOIN genre JOIN artist 
        ON songs.Album_id=album.ALBUM_id AND songs.genre_id=genre.Genre_id AND songs.Artist_id=artist.Artist_id";
        $all_songs = $conn->query($sql1);
    }
    if(isset($_POST['fav1'])){
        $addfv=$_POST['fav1'];
        $sql2="SELECT * from favourite WHERE Email='".$_SESSION['paccount']."' AND Song_id='".$addfv."'";
        $result = $conn->query($sql2);
        $row=$result->fetch_row();
        if($row==0){
            $sql1="INSERT INTO favourite (Email,Song_id) VALUES('".$_SESSION['paccount']."','".$addfv."')";
            $conn->query($sql1);
            $mess2="ADDED TO FAVOURITE";
        }
        else{
            $mess2="YOU HAVE ALREADY MARK THIS AS FAVOURITE";
        }
    }
    
}
?>

<!DOCTYPE html>
<html>
    <head>
    <title>Songify:Discover Your Music</title>
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
        <?php
            echo "<div style='color:green'>".$mess2."</div>";
        ?>
        <div class="add">
            <a href="add.php"><button>Add Songs</button></a>
        </div>
        <div id="fav">
        <a href="favourite.php"><button>Favourite</button></a>
        </div>
        <div id="sea">
            <input type="text" name="search" placeholder="song name">
            <button>search</button>
        </div>
        <div class="box">
        <div class="lan extra">
            <h4>Language</h4>
            <hr>
            <form method="POST"> 
            <?php $sql="SELECT * FROM language";
                $all_lang = $conn->query($sql);
                while($row3 = $all_lang->fetch_assoc()){ ?>
            <input type="radio" name="language" value=<?php echo $row3["Language_id"];?>> <?php echo $row3["Name"];?><br> 
                <?php } ?>
            <input type="submit" name="button" value="Apply"/></form>
        </div>
        <div class="mood extra">
            <h4>Mood</h4>
            <hr>
            <form method="POST"> 
            <?php $sql="SELECT * FROM mood";
                $all_mood = $conn->query($sql);
                while($row3 = $all_mood->fetch_assoc()){ ?>
            <input type="radio" name="mood" value=<?php echo $row3["Mood_id"];?>> <?php echo $row3["Name"];?><br> 
                <?php } ?>
            <input type="submit" name="button" value="Apply"/></form>
        </div>
        <div class="album extra">
            <h4>Album</h4>
            <hr>
            <form method="POST"> 
            <?php $sql="SELECT * FROM album";
                $all_album = $conn->query($sql);
                while($row3 = $all_album->fetch_assoc()){ ?>
            <input type="radio" name="album" value=<?php echo $row3["ALBUM_id"];?>> <?php echo $row3["NAME"];?><br> 
                <?php } ?>
            <input type="submit" name="button" value="Apply"/></form>
        </div>
        <div class="genre extra">
            <h4>Genre</h4>
            <hr>
            <form method="POST"> 
            <?php $sql="SELECT * FROM genre";
                $all_genre = $conn->query($sql);
                while($row3 = $all_genre->fetch_assoc()){ ?>
            <input type="radio" name="genre" value=<?php echo $row3["Genre_id"];?>> <?php echo $row3["Name"];?><br> 
                <?php } ?>
            <input type="submit" name="button" value="Apply"/></form>
        </div>
        </div>
        <div class="tab">
        <h2>Play List</h2>
            <table border="1px">
                <tr>
                <th>Add to Favourite</th>
                <th><?php echo "Name"; ?> </th>
                <th><?php echo "Artist"; ?> </th>
                <th><?php echo "Album"; ?> </th>
                <th><?php echo "Rating"; ?> </th>
                <th><?php echo "Release_Date"; ?> </th>
                <th><?php echo "Genre";?> </th>
                </tr>
                <?php
                 while($row=$all_songs->fetch_assoc()){ ?>
                    <tr>
                    <td><form method="POST">
                        <input type="radio" name="fav1" value=<?php echo $row["Song_id"];?>>
                        <input type="submit" name="addfav" value="Add To Favourite">
                 </form>
                 </td>
                    <td><?php echo $row["Name"]; ?> </td>
                    <td><?php echo $row["Artist"]; ?> </td>
                    <td><?php echo $row["Album"]; ?> </td>
                    <td><?php echo $row["Rating"]; ?> </td>
                    <td><?php echo $row["Release_Date"]; ?> </td>
                    <td><?php echo $row["Genre"];?> </td>
                    </tr>
                <?php } ?>
            </table>
        </div>
    </body>
</html>