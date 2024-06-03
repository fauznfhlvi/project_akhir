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
                </ol>
                <a href="#" onclick="window.history.go(-1)"><i class="fas fa-arrow-left"></i></a>
                </div>
                <br>
                <br>
                <div class="col-sm-12">
                <ol class="breadcrumb float-sm-right">
                    <?php echo anchor('customer/payments/confirm', '<input type="submit" value="Tambah Pembayaran Baru" class="btn btn-danger">'); ?>
                </ol>
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><?php echo anchor(base_url(), 'Home'); ?></li>
                        <li class="breadcrumb-item active">Pembayaran</li>
                    </ol>
                    <div class="text-center">
                    <h1>Pembayaran Saya</h1>
                   
                </div>
            </div>
        </div>
    </section>

    <section class="content">
    <div class="card card-info">
                    <div class="card card-header">
                    <div class="card-header">
            <div class="card-body<?php echo ( count($payments) > 0) ? ' p-0' : ''; ?>">
            <?php if ( count($payments) > 0) : ?>
                <div class="table-responsive">
                    <table class="table table-striped m-0">
                        <tr class="bg-danger">
                            <th scope="col">No.</th>
                            <th scope="col">Order</th>
                            <th scope="col">Tanggal</th>
                            <th scope="col">Status</th>
                        </tr>
                        <?php foreach ($payments as $payment) : ?>
                        <tr>
                            <td><?php echo $payment->id; ?></td>
                            <td><?php echo anchor('customer/payments/view/'. $payment->id, '#'. $payment->order_number); ?></td>
                            <td><?php echo $payment->payment_date; ?></td>
                            <td><?php echo get_payment_status($payment->payment_status); ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </table>
                </div>
                <?php else : ?>
                <div class="row">
                    <div class="col-md-6">
                        <div class="alert alert-info">
                            Belum ada data pembayaran
                        </div>

                        <?php echo anchor('customer/payments/confirm', 'Konfirmasi pembayaran baru'); ?>
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