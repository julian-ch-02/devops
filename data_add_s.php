<?php
include "koneksi.php";
$angkatan       = $_POST['angkatan'];
$nama           = $_POST['nama'];
$nim            = $_POST['nim'];
$jurusan        = $_POST['jurusan'];

if($angkatan=="" || $nama=="" || $nim=="" || $jurusan=="")
{
    ?>
    <script language="javascript">
        alert('Masih ada data yang kosong');
        document.location.href="data_add.php";
    </script>
    <?php
}
else
{
    $sql="INSERT INTO siswa VALUES (null, '$angkatan','$nama','$nim','$jurusan')";

    if($koneksi->query($sql) === false) {
    trigger_error('SQL Command: ' . $sql . ' Error: ' . $koneksi->error, E_USER_ERROR);
    } else {
        ?>
        <script language="javascript">
            alert('Berhasil Disimpan');
            document.location.href="index.php";
        </script>
        <?php
    }
}?>
