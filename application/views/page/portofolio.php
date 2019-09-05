<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

            <center><h2>Portofolio</h2></center>

            <a href="<?=base_url(); ?>Portofolio/form" class="btn btn-primary">tambah</a>
            <br>
            <br>
            <table class="table table-bordered" style="max-width: 100%">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nama projek</th>
                        <th>Deskripsi</th>
                        <th>Link</th>
                        <th>Gambar</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $no = 1;
                    foreach ($portofolio as $row) { ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td>
                                <?= $row['nama_projek']; ?><br>
                                <a href="<?=base_url();?>Portofolio/hapus/<?=$row['id_portofolio'];?>"><i class="fa fa-trash text-danger">hapus</i></a>&nbsp;  
                                <a href="<?=base_url();?>Portofolio/ubah/<?=$row['id_portofolio'];?>"><i class="fa fa-edit text-primary">ubah</i></a>
                            </td>
                            <td><?= $row['deskripsi_projek']; ?></td>
                            <td><?= $row['link']; ?></td>
                            <td><img src="<?=base_url(); ?>assets/images/portofolio/<?= $row['gambar_projek']; ?>" alt="gambar_portofolio" width="100" height="100" style="border: 1px;"></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>

        </div>
    </div>
</div>
