<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-7">
          </div><!-- /.col -->
          <div class="col-sm-7">
            <?php if ($flash) : ?>
              <div class="text-success font-weight-bold"><?php echo $flash; ?></div>
              <?php else : ?>
                <br>
                 <br> 
            <ol class="breadcrumb float-sm-left">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dasbor</li>
            </ol>
            <ol class="breadcrumb float-sm-right">
            <h1 class="text-bold">Dasbor</h1>
              </ol>
             
              <?php endif; ?>
          </div>
        </div>
      </div>
    </div>
    <br>
    <br>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-10 col-7">
            <!-- small box -->
            <div class="text-center">
            </div>
            <div class="small-box bg-info">
              <div class="text-center">
                <h3><?php echo $total_order; ?></h3>

                <p>Order</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
                <i class="nav-icon fas fa-shopping-cart"></i>
              </div>
              <a href="<?php echo site_url('customer/orders'); ?>" class="small-box-footer">Lihat Order <i class="fas fa-arrow-down"></i></a>
            </div>
          </div>
          
          <div class="col-lg-10 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="text-center">
                <h3><?php echo $total_process_order; ?></h3>

                <p>Order dalam proses</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
                <i class="nav-icon fas fa-book"></i>
              
              </div>
              <a href="<?php echo site_url('customer/orders'); ?>" class="small-box-footer">Lihat Order <i class="fas fa-arrow-down"></i></a>
            </div>
          </div>
          
          <div class="col-lg-10 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="text-center">
                <h3><?php echo $total_payment; ?></h3>

                <p>Pembayaran</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
                <i class="nav-icon fa fa-money-bill"></i>
              </div>
              <a href="<?php echo site_url('customer/payments'); ?>" class="small-box-footer">Lihat Pembayaran <i class="fas fa-arrow-down"></i></a>
            </div>
          </div>
         
          <div class="col-lg-10 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="text-center">
                <h3><?php echo $total_review; ?></h3>

                <p>Review</p>
              </div>
              <div class="icon">
                <i class="ion ion-car"></i>
                <i class="nav-icon fa fa-pen"></i>
              </div>
              <a href="<?php echo site_url('customer/reviews'); ?>" class="small-box-footer">Lihat Reviews <i class="fas fa-arrow-down"></i></a>
            </div>
          </div>
        </div>
       
      </div>
    </section>
  </div>