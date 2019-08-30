
<!-- Main Sidebar -->
<aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
  <div class="main-navbar">
    <nav class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
      <a class="navbar-brand w-100 mr-0" href="#" style="line-height: 25px;">
        <div class="d-table m-auto">
          <img id="main-logo" class="d-inline-block align-top mr-1" style="max-width: 25px;" src="<?=base_url();?>assets/images/logo/phicos-logo.png" alt="Shards Dashboard">
          <span class="d-none d-md-inline ml-1">Phicos Open Recruitment</span>
        </div>
      </a>
      <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none">
        <i class="material-icons">&#xE5C4;</i>
      </a>
    </nav>
  </div>
  <div class="main-sidebar__search w-100 border-right d-sm-flex d-md-none d-lg-none">
  </div>
  <div class="nav-wrapper">
    <ul class="nav flex-column">
      <li class="nav-item">
        <a class="nav-link" href="<?=base_url();?>">
          <i class="material-icons">home</i>
          <span>Home</span>
        </a>
      </li>
      <?php if(!isset($this->session->email)){ ?>
        <li class="nav-item">
          <a class="nav-link " href="<?=base_url();?>Pendaftaran">
            <i class="material-icons">fast_forward</i>
            <span>Daftar</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="<?=base_url();?>Login">
            <i class="material-icons">&#xE879;</i>
            <span>Login</span>
          </a>
        </li>
      <?php }else{ ?>
        <li class="nav-item">
          <a class="nav-link " href="<?=base_url();?>Biodata">
            <i class="material-icons">launch</i>
            <span>Biodata</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="<?=base_url();?>Portofolio">
            <i class="material-icons">note_add</i>
            <span>Portofolio</span>
          </a>
        </li>
      <?php } ?>
    </ul>
  </div>
</aside>
<!-- End Main Sidebar -->

<main class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">

  <div class="main-navbar sticky-top bg-white">
    <!-- Main Navbar -->
    <nav class="navbar align-items-stretch navbar-light flex-md-nowrap p-0">
      <div class="main-navbar__search w-100 d-none d-md-flex d-lg-flex">
      </div>
      <?php if(isset($this->session->email)){ ?>
        <ul class="navbar-nav border-left flex-row ">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-nowrap px-3" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
              <img class="user-avatar rounded-circle mr-2" src="<?= base_url();?>assets/images/avatars/User.png" alt="User Avatar">
              <span class="d-none d-md-inline-block"><?= $this->session->email; ?></span>
            </a>
            <div class="dropdown-menu dropdown-menu-small">
              <a class="dropdown-item" href="user-profile-lite.html">
                <i class="fa fa-user"></i> Profile</a>
                <a class="dropdown-item" href="components-blog-posts.html">
                  <i class="fa fa-key"></i> change password</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item text-danger" href="#">
                    <i class="material-icons text-danger">&#xE879;</i> Logout </a>
                  </div>
                </li>
              </ul>
            <?php } ?>
            <nav class="nav">
              <a href="#" class="nav-link nav-link-icon toggle-sidebar d-md-inline d-lg-none text-center border-left" data-toggle="collapse" data-target=".header-navbar" aria-expanded="false" aria-controls="header-navbar">
                <i class="material-icons">&#xE5D2;</i>
              </a>
            </nav>
          </nav>
        </div>
        <!-- / .main-navbar -->
        <div class="main-content-container container-fluid px-4">
          <!-- Page Header -->
          <div class="page-header row no-gutters py-4">
            <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
            </div>
          </div>
          <!-- End Page Header -->