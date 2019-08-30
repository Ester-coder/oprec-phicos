<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
           <form action="<?=base_url();?>Pendaftaran/form" method="POST">
                <h2>Form Pendaftaran</h2>
                <br>
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                            <input type="text" name="nama" class="form-control input-sm" placeholder="masukkan nama" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                            <input type="text" name="email" class="form-control input-sm" placeholder="masukkan email" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-example-int mg-t-15">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                            <button class="btn btn-success notika-btn-success">verifikasi email</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>