<?php
    include "connection.php";
    session_start();

    if (!isset($_SESSION['isLoggedIn']))
    {
        header("Location: login.php"); 
    }

    $id = $_GET['id'];
    $dbh = $dbh->prepare("UPDATE buku  WHERE id = ?");
    $dbh = $dbh->execute([$id]);

    if($dbh->rowCount() == 1 )
    {
        $data = $dbh->fetch(PDO::FETCH_ASSOC);
?>
        <form method="POST" action="input_data.php">
        Judul: <input name="judul" type="text" value="<?php echo $data['judul']?>"><br>
        Tahun Terbit: <input name="tahun" type="text" value="<?php echo $data['tahun']?>"> <br>
        
        <input type="hidden" name="id" value="<?php echo $id?>">
        <button type="submit" > Simpan </button>
        </form>
    

<?php 
    }
    else {
        echo" <script> alert('Data tidak di temukan')</script>";
        header("location:home.php");

    }

