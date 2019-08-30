<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="form-example-wrap mg-t-30">
                <form action="<?=base_url();?>Portofolio/form" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="id_user" value="<?=$this->session->id_user;?>">
                    <div class="cmp-tb-hd cmp-int-hd">
                        <center><h2>Form Portofolio</h2></center>
                    </div>
                    <br>
                    <div class="form-example-int form-horizental">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Nama projek :</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <input type="text" name="nama_projek" class="form-control input-sm" placeholder="masukkan nama projek" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-example-int form-horizental mg-t-15">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Deskripsi projek :</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <textarea name="deskripsi_projek" rows="4" class="form-control input-sm" placeholder="masukkan deskripsi projek" required></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-example-int form-horizental mg-t-15">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Link <small>( jika ada )</small> :</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <input type="text" name="link" class="form-control input-sm" placeholder="masukkan link projek">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-example-int form-horizental mg-t-15">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Gambar/Screenshot projek :</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <input type="file" name="gambar_projek" class="form-control input-sm">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-example-int mg-t-15">
                        <div class="row">
                            <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                            </div>
                            <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                <button class="btn btn-success">submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>