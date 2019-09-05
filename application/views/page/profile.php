<style type="text/css">
    label{color:green;font-weight: bold;}
</style>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="table table-bordered">
                <form action="<?=base_url();?>Biodata/edit" method="POST">
                    <div class="card-header">
                        <center>
                            <div class="img-profile">
                                <img class="user-avatar rounded-circle mr-2" src="<?=base_url();?>assets/images/avatars/user.png" width="200" height="200">
                            </div>
                            <h2>Profile</h2>
                        </center>
                    </div>
                    <br>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                    <label class="hrzn-fm">Email</label>
                                </div>
                                <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                    <div class="nk-int-st">
                                        <?= $this->session->email; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Password</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <?php 
                                            $len = strlen($value->password)/2;
                                            for($i=0;$i<=$len;$i++){?>
                                                &bull;
                                                <?php } ?>&emsp;<a href="<?=base_url();?>Profile/ganti_password/<?=$this->session->id_user;?>" class="btn btn-secondary">change</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>