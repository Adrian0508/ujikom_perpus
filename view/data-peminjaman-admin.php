<?php
session_start();

require_once '../php/buku.php';

$database = new Database();

if (!isset($_SESSION['id']) || $_SESSION['user'] === 'user') {
    header("Location: login.php");
    exit;
} else {
    $listbuku = $database->listBook();
    $data = $listbuku;

    if (isset($_GET['hapus'])) {
        $hapusPeminjaman = $database->hapusPeminjaman(intval($_GET['hapus']));
        if ($hapusPeminjaman === 'berhasil') {
            $_SESSION['notifikasiBerhasil'] = 'berhasil';
        } else if ($hapusPeminjaman === 'gagal') {
            $_SESSION['notifikasiBerhasil'] = 'gagal';
        }

        header("Location: data-peminjaman-admin.php");
        exit;
    }
}

$notifikasiBerhasil = isset($_SESSION['notifikasiBerhasil']) ? $_SESSION['notifikasiBerhasil'] : null;
unset($_SESSION['notifikasiBerhasil']);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="../style/list.css" />
    <style>
        /* CSS untuk tombol pencarian */
        #searchButton {
            background: #4682B4;
            color: #fff;
            border: none;
            margin-bottom: 20px;
            padding: 7px 20px;
            border-radius: 10px;
        }

        #searchButton:hover {
            background: #357ca5;
        }
    </style>
    <title>List buku</title>
</head>

<body>
    <div class="section-list">
        <div class="row">
            <div class="col-lg-2 col-md-1 responsif-hp" style="background-color: #4682B4; height: 100vh">
                <img class="mt-3 ms-4 mb-1 logo1" src="../assets/logo-3.png" width="150" alt="" />
                <div class="bungkus-link">
                    <img src="../assets/icon-user.png" width="25" alt="" />
                    <a href="profil.php" class="link">Profil anda</a>
                </div>
                <div class="bungkus-link">
                    <img src="../assets/icon-list.png" alt="" />
                    <a href="list-buku.php" class="link">Daftar Buku</a>
                </div>

                <?php if ($_SESSION['user'] === 'admin' || $_SESSION['user'] === 'petugas') : ?>
                    <div class="bungkus-link">
                        <img src="../assets/icon-pinjam.png" alt="" />
                        <a href="data-peminjaman-admin.php" class="link">Peminjaman Buku</a>
                    </div>
                <?php endif; ?>

                <?php if ($_SESSION['user'] === 'user') : ?>
                    <div class="bungkus-link">
                        <img src="../assets/icon-tambah-buku.png" alt="" />
                        <a href="data-peminjaman-user.php" class="link">Peminjaman Saya</a>
                    </div>
                <?php endif; ?>

                <?php if ($_SESSION['user'] === 'user') : ?>
                    <div class="bungkus-link">
                        <img src="../assets/icon-tambah-peminjam.png" alt="" />
                        <a href="koleksi.php" class="link">Koleksi Saya</a>
                    </div>
                <?php endif; ?>


                <?php if ($_SESSION['user'] === 'admin' || $_SESSION['user'] === 'petugas') : ?>
                    <div class="bungkus-link">
                        <img src="../assets/icon-koleksi.png" alt="" />
                        <a href="list-buku-admin.php" class="link">Tambah Buku</a>
                    </div>

                <?php endif; ?>

            </div>
            <div class="col-lg-10 col-md-11 kanan-dasboard">
                <nav class="navbar navbar-expand-lg navbar-light pt-4" style="background-color: #4682B4">
                    <div class="container">
                        <a class="navbar-brand" href="#"><img src="../assets/logo-3.png" width="100" alt="" /></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="" style="border: none; cursor: pointer"><i class="fa-solid fa-bars" style="color: white"></i></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                            <div style="margin-right: 25%">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link menu me-4" style="color: white" aria-current="page" href="profil.php">Profil</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link menu me-4" style="color: white" aria-current="page" href="list-buku.php">Daftar Buku</a>
                                    </li>
                                    <?php if ($_SESSION['user'] === 'admin' || $_SESSION['user'] === 'petugas') : ?>
                                        <li class="nav-item">
                                            <a class="nav-link menu me-4" style="color: white" href="data-peminjaman-admin.php">Daftar Peminjaman Buku</a>
                                        </li>
                                    <?php endif; ?>

                                    <?php if ($_SESSION['user'] === 'user') : ?>
                                        <li class="nav-item">
                                            <a class="nav-link menu me-4" style="color: white" href="data-peminjaman-user.php">Peminjaman Saya</a>
                                        </li>
                                    <?php endif; ?>

                                    <?php if ($_SESSION['user'] === 'user') : ?>
                                        <li class="nav-item">
                                            <a class="nav-link menu me-4" style="color: white" href="koleksi.php">Koleksi Saya</a>
                                        </li>
                                    <?php endif; ?>

                                    <?php if ($_SESSION['user'] === 'admin' || $_SESSION['user'] === 'petugas') : ?>
                                        <li class="nav-item">
                                            <a class="nav-link menu me-4" style="color: white" href="list-buku-admin.php">Tambah Buku</a>
                                        </li>
                                    <?php endif; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- end nav -->
                <div class="container">
                    <div class="judul text-center mt-5 mb-5">
                        <h3>Daftar Peminjaman Buku Seluruh Pengguna</h3>
                    </div>
                    <button style="background:#4682B4; color:#fff; border:none; margin-bottom:20px; padding:7px 20px; border-radius:10px;" id="print-button" onclick="printPDF()">Print PDF</button>

                    <?php if (isset($notifikasiBerhasil) && $notifikasiBerhasil === 'gagal') : ?>
                        <div class="alert alert-danger" role="alert">
                            Gagal menghapus data peminjaman buku
                        </div>
                    <?php elseif (isset($notifikasiBerhasil) && $notifikasiBerhasil === 'berhasil') : ?>
                        <div class="alert alert-success" role="alert">
                            Berhasil menghapus data peminjaman buku
                        </div>
                    <?php endif; ?>

                    <!-- Search Input -->
                    <form class="p-2 me-5 cari d-flex">
                        <i class="fa-solid fa-magnifying-glass" style="margin-top:7px; margin-right:20px;color: #999999;"></i>
                        <input autocomplete="off" class="form-control me-2" type="search" placeholder="Cari Buku" aria-label="Mencari" name="isi-pencarian" id="searchInput" onkeyup="searchTable()">
                        <button name="cari-buku" type="submit" style="border:none; background-color: #006FD6; padding: 5px 25px; color: white; border-radius: 25px;">Cari</button>
                    </form>

                    <table id="table-to-print">
                        <thead>
                            <tr>
                                <th scope="col">Nomor</th>
                                <th scope="col">Peminjam</th>
                                <th scope="col">Judul</th>
                                <th scope="col">Tanggal Peminjaman</th>
                                <th scope="col">Tanggal Pengembalian</th>
                                <th scope="col">Status Peminjaman</th>
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($data as $row) : ?>
                                <tr>
                                    <td data-label="Peminjaman ID"><?= $i ?></td>
                                    <td data-label="User ID"><?= $row['Username'] ?></td>
                                    <td data-label="Buku ID"><?= $row['Judul'] ?></td>
                                    <td data-label="Tanggal Peminjaman"><?= $row['TanggalPeminjaman'] ?></td>
                                    <td data-label="Tanggal Pengembalian"><?= $row['TanggalPengembalian'] ?></td>
                                    <td data-label="Status Peminjaman">
                                        <p style="
                                    <?php if ($row['StatusPeminjaman'] === 'Dipinjam') : ?>
                                    background-color:#4682B4; 
                                    <?php else : ?>
                                        background-color:#0B60B0;
                                        color:white !important; 
                                    <?php endif; ?>
                                    
                                    border-radius:40px; color:white; margin-bottom:5px;"><?= $row['StatusPeminjaman'] ?></p>
                                    </td>
                                    <td data-label="Aksi"><a href="#" onclick="confirmDelete(<?= $row['PeminjamanID'] ?>)"><i class="fa-solid fa-trash"></i></a></td>
                                </tr>
                                <?php $i += 1; ?>
                            <?php endforeach; ?>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
    <script>
        function confirmDelete(peminjamanID) {
            if (confirm("Apakah Anda yakin ingin menghapus data peminjaman ini?")) {
                window.location.href = "data-peminjaman-admin.php?hapus=" + peminjamanID;
            }
        }

        function searchTable() {
            // Mendapatkan nilai input pencarian
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("table-to-print");
            tr = table.getElementsByTagName("tr");

            // Loop melalui semua baris tabel, sembunyikan yang tidak cocok
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td");
                for (var j = 0; j < td.length; j++) {
                    if (td[j]) {
                        txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                            break;
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        }

        document.getElementById('searchButton').addEventListener('click', function() {
            this.style.display = 'none'; // menyembunyikan tombol setelah di-klik
        });

        const printButton = document.getElementById('print-button');
        const tableToPrint = document.getElementById('table-to-print');

        printButton.addEventListener('click', () => {
            // Create a new window with only the table content
            const printWindow = window.open('', 'printWindow', 'width=800,height=600');
            printWindow.document.write(`<!DOCTYPE html><html><head><title>Table to Print</title></head><body>${tableToPrint.outerHTML}</body></html>`);
            printWindow.document.close();

            // Trigger the print dialog in the new window
            printWindow.focus();
            printWindow.print();

            // Close the new window after printing
            printWindow.close();
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>
