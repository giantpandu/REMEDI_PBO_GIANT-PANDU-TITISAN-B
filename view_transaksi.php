<?php

$host = 'localhost';
$user = 'root';
$pass = '';
$dbname = 'db_remedi_pbo_trpl1b_giant pandu titisan b';

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die('Koneksi database gagal: ' . $conn->connect_error);
}

$sql = "SELECT * FROM tabel_reservasi ORDER BY id_reservasi";
$result = $conn->query($sql);

$reguler = [];
$premium = [];
$event = [];

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        switch ($row['jenis_paket']) {
            case 'Reguler':
                $reguler[] = $row;
                break;
            case 'Premium':
                $premium[] = $row;
                break;
            case 'Event':
                $event[] = $row;
                break;
        }
    }
}

function renderTable($title, $rows, $columns)
{
    echo "<h2>$title</h2>";
    echo "<table border='1' cellpadding='6' cellspacing='0'>";
    echo "<tr>";
    foreach ($columns as $column) {
        echo "<th>" . htmlspecialchars($column) . "</th>";
    }
    echo "</tr>";

    if (empty($rows)) {
        echo "<tr><td colspan='" . count($columns) . "'>Tidak ada data</td></tr>";
    } else {
        foreach ($rows as $row) {
            echo "<tr>";
            foreach ($columns as $column) {
                echo "<td>" . htmlspecialchars($row[$column] ?? '') . "</td>";
            }
            echo "</tr>";
        }
    }

    echo "</table><br>";
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Data Reservasi</title>
</head>
<body>
    <h1>Data Reservasi</h1>

    <?php
    renderTable('Reservasi Reguler', $reguler, ['id_reservasi', 'nama_pelanggan', 'tanggal_booking', 'durasi_jam', 'tipe_background', 'cetak_foto_lembar']);
    renderTable('Reservasi Premium', $premium, ['id_reservasi', 'nama_pelanggan', 'tanggal_booking', 'durasi_jam', 'kuota_talent_orang', 'layanan_makeup']);
    renderTable('Reservasi Event', $event, ['id_reservasi', 'nama_pelanggan', 'tanggal_booking', 'durasi_jam', 'nama_lokasi_luar', 'biaya_transportasi_tim']);
    ?>
</body>
</html>
