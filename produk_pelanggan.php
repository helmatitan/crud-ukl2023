<!DOCTYPE html>
<html>
    <head>
        <title>PRODUK</title>
        <link href="ASSETS/RANDOM/LOGO.png" rel="shortcut icon">
        <link href="style_header.css" rel="stylesheet">
        <link href="style_home.css" rel="stylesheet">
        <link href="style_produk.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    </head>
    <body>
        <?php
            include "header_toko.php";
        ?>
        <div class="sidebar">
            <center>
                <!-- <img name="foto" src="ASSETS/foto/<?=$_SESSION["foto"]?>" class="profile-img" alt=""> -->
                <h2><?=$_SESSION['nama_petugas']?></h2>
            </center>
            <div class="sidebar-menu">
                <ul>
                    <li>
                        <a href="home_tokopelanggan.php"><span class="las la-home"></span>
                        <span>Dashboard</span></a>
                    </li>
                    <li>
                    <a href="produk_pelanggan.php"><span class="las la-hamburger"></span>
                        <span>Product</span></a>
                    </li>
                    <li>
                        <a href="history_pembelianpelanggan.php"><span class="las la-shopping-cart"></span>
                        <span>Transaction</span></a>
                    </li>
                    <!-- <li>
                        <a href="tampil_petugas.php"><span class="las la-user-astronaut"></span>
                        <span>Admin</span></a>
                    </li>
                    <li>
                        <a href="tampil_pelanggan.php"><span class="las la-user-friends"></span>
                        <span>Customer</span></a>
                    </li> -->
                </ul>
            </div>
        </div>
        <main>
            <div class="daftar">
                <h2>Daftar Produk 
                <a href="keranjang.php">cart</a></h2>
                <?php
                    include "koneksitoko.php";
                    $qry_produk = mysqli_query ($conn,"SELECT * FROM produk");
                    while($dt_produk=mysqli_fetch_array($qry_produk)){
                ?>
                <div class="list-produk">
                    <img src="tb/<?=$dt_produk['foto_produk']?>">
                    <h4><?=$dt_produk['nama_produk']?></h4>
                    <h5><?=substr($dt_produk['deskripsi'],0,20)?></h5>   
                    <h5>Rp. <?=$dt_produk['harga']?></h5>                  
                    <a class="btn btn-pinjam" href="beli_produk.php?id_produk=<?=$dt_produk['id_produk']?>" >Beli</a>
            </div>
            <?php
                }
            ?>
        </main>
    </body>
</html>