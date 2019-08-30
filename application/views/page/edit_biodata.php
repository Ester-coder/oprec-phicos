<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="form-example-wrap mg-t-30">
                <form action="<?=base_url();?>Biodata/update" method="POST">
                    <input type="hidden" name="id_biodata" value="<?= $biodata->id_biodata; ?>">
                    <input type="hidden" name="id_user" value="<?= $biodata->id_user; ?>">
                    <div class="cmp-tb-hd cmp-int-hd">
                        <center><h2>Form Biodata</h2></center>
                    </div>
                    <br>
                    <div class="form-example-int form-horizental">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Email :</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <?= $this->session->email; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-example-int form-horizental mg-t-15">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Jenis Kelamin :</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <?php if($biodata->jenis_kelamin == "L"){ ?>
                                            <input type="radio" name="jenis_kelamin" value="L" checked>Laki -laki &nbsp;
                                            <input type="radio" name="jenis_kelamin" value="P">Perempuan
                                        <?php }else{ ?>
                                            <input type="radio" name="jenis_kelamin" value="L">Laki -laki &nbsp;
                                            <input type="radio" name="jenis_kelamin" value="P" checked>Perempuan
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-example-int form-horizental mg-t-15">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Tempat, tanggal lahir :</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <input type="text" name="ttl" class="form-control input-sm" placeholder="masukkan tempat & tanggal lahir" value="<?=$biodata->ttl;?>" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-example-int form-horizental mg-t-15">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Agama :</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <select name="agama" class="form-control input-sm">
                                            <?php 
                                            $agama = ['islam','kristen','katolik','hindu','buddha','lain-lain'];
                                            foreach($agama as $a): 
                                                if($a == $biodata->agama){
                                                    ?>
                                                    <option value="<?=$a;?>" selected><?=$a;?></option>
                                                <?php }else{ ?>
                                                    <option value="<?=$a;?>"><?=$a;?></option>
                                                <?php } endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">No telp :</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <input type="text" name="no_telp" class="form-control input-sm" placeholder="masukkan no telephone" value="<?=$biodata->no_telp;?>" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Alamat :</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <input type="text" name="alamat" class="form-control input-sm" placeholder="masukkan alamat" value="<?=$biodata->alamat;?>" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Divisi :</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <select name="id_divisi" class="form-control input-sm">
                                                <?php foreach($divisi as $row): 
                                                    if($biodata->id_divisi == $row['id_divisi']){ ?>
                                                        <option value="<?=$row['id_divisi'];?>" selected><?=$row['nama_divisi'];?></option>
                                                    <?php }else{ ?>
                                                        <option value="<?=$row['id_divisi'];?>"><?=$row['nama_divisi'];?></option>
                                                    <?php } endforeach; ?>
                                                </select>
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
                                        <button class="btn btn-success">update</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>