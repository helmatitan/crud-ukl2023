<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title></title>
</head>
<link href="ASSETS/RANDOM/LOGO.png" rel="shortcut icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link href="style_login.css" rel="stylesheet">
<style>
        .container{
            width: 80%;
            margin: 0 auto;
            margin-top: 5vh;

        }
        .container h3{
            text-align: center;
            color : green;
            font-family : 'Poppins';
        }
        .container .form-btn{
            margin-top: 3vh;
            background-color: Black;
            padding: 10px;
        }
        .container .form-btn:hover{
            background-color: green;
            color: whitesmoke;
        }
    </style>
<body>
<div class="container">
    <h3>Sign Up Here</h3>
    <form action="proses_tambah_petugas.php" method="post">
        Identity Number :
        <input type="text" name="id_petugas" value="" class="form-control">
        Name :
        <input type="text" name="nama_petugas" value="" class="form-control">
        Username :
        <input type="text" name="username" value="" class="form-control">
        Password :
        <input type="text" name="password" value="" class="form-control">
        Login As : 
        <select name="level" class="form-control">
            <option></option>
            <option value="petugas">Admin</option>
            <option value="pelanggan">Customer</option>
        </select>
        <input type="submit" name="simpan" value="Submit" class="form-btn btn btn-primary">
        <a href="login_toko.php" class="form-btn btn btn-primary">Back</a>
    </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>