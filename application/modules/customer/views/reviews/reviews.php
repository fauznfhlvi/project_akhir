<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
            <br>
                <div class="col-sm-6">
                <ol class="breadcrumb float-sm-left">
              
                <a href="#" onclick="window.history.go(-1)"><i class="fas fa-arrow-left"></i></a>
                </ol>
                </div>
                <br>
                <br>
                <div class="col-sm-12"> 
                <ol class="breadcrumb float-sm-right">
                    <?php echo anchor('customer/reviews/write', '<input type="submit" value="Tambah Review Baru" class="btn btn-danger">'); ?>
</ol>

                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><?php echo anchor(base_url(), 'Home'); ?></li>
                        <li class="breadcrumb-item active">Review</li>
                    </ol>
                    <div class="text-center">
                    <h1>Review Saya</h1>
                </div>
            </div>
        </div>
</div>
    </section>

    <section class="content">
    <div class="card card-info">
                    <div class="card card-header">
                    <div class="card-header">
            <div class="card-body<?php echo ( count($reviews) > 0) ? ' p-0' : ''; ?>">
            <?php if ( count($reviews) > 0) : ?>
                <div class="table-responsive">
                    <table class="table table-striped m-0">
                        <tr class="bg-danger">
                            <th scope="col">No.</th>
                            <th scope="col">Order</th>
                            <th scope="col">Tanggal</th>
                            <th scope="col">Review</th>
                        </tr>
                        <?php foreach ($reviews as $review) : ?>
                        <tr>
                            <td><?php echo $review->id; ?></td>
                            <td><?php echo anchor('customer/reviews/view/'. $review->id, '#'. $review->order_number); ?></td>
                            <td><?php echo $review->review_date; ?></td>
                            <td><?php echo $review->review_text; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </table>
                </div>
                <?php else : ?>
                <div class="row">
                    <div class="col-md-6">
                        <div class="alert alert-info">
                            Belum ada review yang ditulis. Silahkan tulis baru.
                        </div>

                        <?php echo anchor('customer/reviews/write', 'Tulisan review baru'); ?>
                    </div>
                </div>
                <?php endif; ?>
            </div>

            <?php if ($pagination) : ?>
            <div class="card-footer">
                <?php echo $pagination; ?> 
            </div>
            <?php endif; ?>

        </div>
    </section>
    <div class="col-md-4">

            </div>

</div>