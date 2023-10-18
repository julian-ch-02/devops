<?php
include "koneksi.php";
$id             = $_POST['id'];
$angkatan       = $_POST['angkatan'];
$nama           = $_POST['nama'];
$nim            = $_POST['nim'];
$jurusan        = $_POST['jurusan'];

if($angkatan=="" || $nama=="" || $nim=="" || $jurusan=="")
{
    ?>
    <script language="javascript">
        alert('Masih ada data yang kosong');
        document.location.href="data_edit.php?id=<?echo $id; ?>";
    </script>
    <?php
}
else
{
    $sql="UPDATE siswa SET angkatan='$angkatan', nama='$nama', nim='$nim', jurusan='$jurusan' WHERE id='$id'";
    
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
