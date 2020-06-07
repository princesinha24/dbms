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
    if(isset($_POST['del'])){
        $apply1=$_POST['del'];
        $sql="DELETE FROM favourite WHERE Email='".$_SESSION['paccount']."' AND Song_id='".$apply1."'";
        $conn->query($sql);
        $mess2="Song remove From Favourite";
        $x=1;
        $sql1="SELECT songs.Song_id,songs.Name,songs.Release_Date,songs.Rating,
        artist.Name AS Artist,album.NAME AS Album, genre.Name AS Genre 
        FROM songs JOIN album JOIN genre JOIN artist JOIN language JOIN favourite
        ON songs.Album_id=album.ALBUM_id AND songs.genre_id=genre.Genre_id 
        AND songs.Artist_id=artist.Artist_id AND language.Language_id=songs.Lang_id AND songs.Song_id=favourite.Song_id
        WHERE favourite.Email='".$_SESSION['paccount']."'";
        $all_songs = $conn->query($sql1);
    }
    else{
        $sql1="SELECT songs.Song_id,songs.Name,songs.Release_Date,songs.Rating,
        artist.Name AS Artist,album.NAME AS Album, genre.Name AS Genre 
        FROM songs JOIN album JOIN genre JOIN artist JOIN language JOIN favourite
        ON songs.Album_id=album.ALBUM_id AND songs.genre_id=genre.Genre_id 
        AND songs.Artist_id=artist.Artist_id AND language.Language_id=songs.Lang_id AND songs.Song_id=favourite.Song_id
        WHERE favourite.Email='".$_SESSION['paccount']."'";
        $all_songs = $conn->query($sql1);
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
            if($x==1){
            echo "<div style='color:green'>".$mess2."</div>";
            $x=0;
            }
        ?>
        <div class="tab">
        <h2>FAVOURITE</h2>
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
                        <input type="radio" name="del" value=<?php echo $row["Song_id"];?>>
                        <input type="submit" name="delete" value="Delete from Favourite">
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