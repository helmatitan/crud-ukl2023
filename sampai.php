<?php 
if($_GET['id']){
    include "koneksitoko.php";
    $id_transaksi=$_GET['id'];
    $cek_terlambat=mysqli_query($conn, "select * from transaksi where id_transaksi = '".$id_transaksi."' ");
    $dt_bayar=mysqli_fetch_array($cek_terlambat);
    if(strtotime($dt_bayar['tgl_sampai'])>=strtotime(date('Y-m-d'))){
        $denda=0;
    } else{
       
    }
    mysqli_query($conn, "insert into produk_sampai (id_transaksi, tgl_sampai) value('".$id_transaksi."','".date('Y-m-d')."')");
    header('location: history_pembelianpelanggan.php');
}
?>