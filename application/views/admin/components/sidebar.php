<?php 
  $ci = &get_instance();
  $ci->load->model("permission_m"); 
  
  $COIN_READ = $ci->permission_m->getAuthorization($this->session->userdata('user_id'), COIN_READ);
 ?>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
  <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <img class="churacasa" src="<?php echo base_url();?>assets/img/logo.png" alt="logo" />
        <div class="sidebar-brand-text mx-2 text-style">
          <div class="text-style2">
            Consultora:
          </div>
          CrediChura Casa
        </div>
  </a>

  <!-- Divider -->
  <hr class="sidebar-divider my-0">

  <!-- Nav Item - Dashboard -->
  <li class="nav-item active">
    <a class="nav-link" href="<?php echo site_url('admin/dashboard'); ?>">
      <i class="fas fa-fw fa-tachometer-alt"></i>
      <span>Inicio</span></a>
  </li>

  <!-- Divider -->
  <hr class="sidebar-divider">

  <li class="nav-item">
    <a class="nav-link" href="<?php echo site_url('admin/customers'); ?>">
      <i class="fas fa-fw fa-user"></i>
      <span>Clientes</span></a>
  </li>

  <?php
    $ci = &get_instance();
    // $permission = new Permission($ci->load->model("permission_m"), $this->session->userdata('user_id'));
    if( $COIN_READ ) :// Habilitar sólo si tiene permisos 
    ?>
      <li class="nav-item">
      <a class="nav-link" href="<?php echo site_url('admin/coins'); ?>">
        <i class="fas fa-fw fa-money-bill"></i>
        <span>Monedas</span></a>
    </li>
    <?php endif?>
  
  
    <li class="nav-item">
    <a class="nav-link" href="<?php echo site_url('admin/cashregisters/index'); ?>">
      <i class="fas fa-fw fa-money-bill"></i>
      <span>Cajas</span></a>
  </li>


  <li class="nav-item">
    <a class="nav-link" href="<?php echo site_url('admin/loans'); ?>">
      <i class="fas fa-fw fa-money-bill"></i>
      <span>Prestamos</span></a>
  </li>

  <li class="nav-item">
    <a class="nav-link" href="<?php echo site_url('admin/payments'); ?>">
      <i class="fas fa-fw fa-money-bill"></i>
      <span>Cobranzas</span></a>
  </li>

  <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReportes" aria-expanded="false" aria-controls="collapseReportes">
      <i class="fas fa-fw fa-user"></i>
      <span>Reportes</span>
    </a>
    <div id="collapseReportes" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar" style="">
      <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="<?php echo site_url('admin/reports'); ?>">Resumen General</a>
        <a class="collapse-item" href="<?php echo site_url('admin/reports/dates'); ?>">Entre Fechas</a>
        <a class="collapse-item" href="<?php echo site_url('admin/reports/customers'); ?>">General x cliente</a>
        <a class="collapse-item" href="<?php echo site_url('admin/reports/document_payments'); ?>">Pagos</a>
      </div>
    </div>
  </li>

  <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseConfiguracion" aria-expanded="false" aria-controls="collapseConfiguracion">
      <i class="fas fa-fw fa-user"></i>
      <span>Configuracion</span>
    </a>
    <div id="collapseConfiguracion" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar" style="">
      <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="<?php echo site_url('admin/config'); ?>"> Editar datos</a>
        <a class="collapse-item" href="<?php echo site_url('admin/config/change_password'); ?>"> Cambiar Contraseña</a>
      </div>
    </div>
  </li>

  <!-- Divider -->
  <hr class="sidebar-divider d-none d-md-block">

  <!-- Sidebar Toggler (Sidebar) -->
  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>

</ul>


