<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
    <!-- Header -->
    <div class="header bg-info pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
          <div class="col-sm-8">
                <div class="breadcrumb float-sm-left">
              
                <a href="#" onclick="window.history.go(-1)"><i class="fas fa-arrow-left"></i></a>
</div>
                </div>
            <div class="col-lg-6 col-7">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                  <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i></a></li>
                  <li class="breadcrumb-item"><?php echo anchor('admin/reviews', 'Review'); ?></li>
                  <li class="breadcrumb-item active" aria-current="page">Order #<?php echo $review->order_number; ?></li>
                </ol>
            </div>
            <div class="col-lg-6 col-5 text-left">
            <h6 class="h2 text-white d-inline-block mb-0">Review Order #<?php echo $review->order_number; ?></h6>        
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Page content -->
    <div class="container-fluid mt--6">
      <div class="row alert alert-primary">
        <div class="col-md-12">
          <div class="card-wrapper">
            <div class="card">
              <div class="card-header">
                <h3 class="mb-0">Review Order #<?php echo $review->order_number; ?></h3>
                <?php if ($flash) : ?>
                <span class="float-right text-success font-weight-bold" style="margin-top: -30px;"><?php echo $flash; ?></span>
                <?php endif; ?>
              </div>
              <div class="card-body p-0">
              <table class="table align-items-center table-flush table-hover">
              <tr>
                        <td>Judul</td>
                        <td><b><?php echo $review->title; ?></b></td>
                    </tr>
                    <tr>
                        <td>Order</td>
                        <td><b>#<?php echo $review->order_number; ?></b></td>
                    </tr>
                    <tr>
                        <td>Tanggal</td>
                        <td><b><?php echo $review->review_date; ?></b></td>
                    </tr>
                    <tr>
                        <td>Review</td>
                        <td><b><?php echo $review->review_text; ?></b></td>
                    </tr>
                </table>
                <div class="col-md-6">
      <ol class="breadcrumb float-sm-right">
        <div class="text-center">
            <a href="#" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger">
                <i class="fa fa-trash"></i> Hapus
            </a>
        </div>
</ol>
              </div>
              
            </div>
            
          </div>

        </div>
        

      <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deletelModalLabel">Hapus Review</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p class="deleteText"> Apakah Anda yakin ingin menghapus review ini?</p>
      </div>
      <div class="modal-footer">
      <?php echo anchor('admin/reviews/delete/'. $review->id, 'Hapus', array('class' => 'btn btn-danger')); ?>
      </div>
    </div>
  </div>
</div>