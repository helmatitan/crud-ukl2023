<?php
    session_start();
    if($_SESSION['status_login']!=true){header('location: login_pelanggan.php','location: login_petugas.php');}
?>
<header>
    <div class="left-area">
        <h1>Aneka Jaya</h1>
    </div>
    <div>
        <a href="logout.php" class="logout" onclick="return confirm('Apakah anda yakin untuk keluar ?')">LOG OUT</a>
    </div>
</header>