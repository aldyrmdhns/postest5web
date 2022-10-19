<?php
    require 'koneksi.php';

    $result = mysqli_query($conn, "SELECT * FROM daftarpesan");
    $pesanan = [];

    while($row = mysqli_fetch_assoc($result)){
        $pesanan[] = $row;
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> MEBEL SINAR PUTRA </title>
        <link rel="stylesheet" href="tampilkanPhp.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="main.js"></script>
    </head>

    <body>
        <header class="sub-head">
            <nav>
                <a href="index.php"><img src="images/logo.png"></a>
                <div class="nav-links">
                    <ul>
                        <li> <a href="index.php"> HOME </a></li>
                        <li> <a href="produk.html"> PRODUCT </a></li>
                        <li> <a href="about.html"> ABOUT ME </a></li>
                        <li> <a href="orderHere.php"> ORDER HERE </a> </li>
                        <li> <a href="tampilkanForm.php"> DAFTAR PESANAN </a> </li>
                    </ul>
                </div>
            </nav>
        <h1> DAFTAR PESANAN YANG TERSEDIA </h1>
        <div class="table-section">
            <table>
                <thead>
                    <tr>
                        <th> Nomor </th>
                        <th> Nama </th>
                        <th> Nomor HP </th>
                        <th> Alamat </th>
                        <th> Nama Barang </th>
                        <th> Panjang Barang </th>
                        <th> Tinggi Barang </th>
                        <th> Metode Pembayaran </th>
                        <th> Gambar </th>
                        <th> Action </th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; foreach ($pesanan as $pesan): ?>
                    <tr>
                        <td> <?php echo $i ;?></td>
                        <td> <?php echo $pesan['nama'] ;?></td>
                        <td> <?php echo $pesan['nomorhp'] ;?></td>
                        <td> <?php echo $pesan['alamat'] ;?></td>
                        <td> <?php echo $pesan['barang'] ;?></td>
                        <td> <?php echo $pesan['panjang'] ;?></td>
                        <td> <?php echo $pesan['tinggi'] ;?></td>
                        <td> <?php echo $pesan['metode'] ;?></td>
                        <td> <?php echo $pesan['gambar'] ;?></td>
                        <td>
                            <button> <a href="hapusPesan.php?id=<?php echo $pesan["id"]; ?>" onclick="return confirm('Yakin ingin Menghapus data ini?')" role='button'><i class="fa fa-trash"></i> </a> </button>
                            <button> <a href="updatePesan.php?id=<?php echo $pesan["id"]; ?>"> <i class="fa fa-file-text"></i> </a></button>
                        </td>
                    </tr>
                    <?php $i++; endforeach; ?>
                </tbody>
            </table>
        </div>

        </header>

        <script src="main.js"></script>
    </body>
</html>

