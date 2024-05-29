<!-- Begin Page Content -->
<div class="container-fluid">
    <?= $this->session->flashdata('pesan'); ?>
    <div class="row">
        <div class="col-lg-12">
            <?php if($this->session->userdata('key')): ?>
                <div class="alert alert-danger" role="alert">
                    <?= $this->session->userdata('key'); ?>
                </div>
            <?php endif; ?>
            <?= $this->session->flashdata('pesan'); ?>
            <a href="<?= site_url('admin/laporan/cetak_laporan_penjualan'); ?>" class="btn btn-primary mb-3"><i class="fas fa-print"></i> Print</a>
            <a href="<?= site_url('admin/laporan/laporan_pdf_penjualan'); ?>" class="btn btn-warning mb-3"><i class="far fa-file-pdf"></i> Download Pdf</a>
            <a href="<?= site_url('admin/laporan/export_excel_penjualan'); ?>" class="btn btn-success mb-3"><i class="far fa-file-excel"></i> Export ke Excel</a>
            <table class="table table-hover">
            <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Customer</th>
                    <th scope="col">Tanggal</th>
                    <th scope="col">Jumlah Item</th>
                    <th scope="col">Jumlah Harga</th>
                    <th scope="col">Status</th>
                  </tr>
                </thead>
                <tbody>
                  
                <?php 
                if (is_array($orders) || is_object($orders))
                {
                foreach ($orders as $order) { ?>
                <tr>
                    <th scope="col">
                      <?php echo anchor('admin/orders/view/'. $order->id, '#'. $order->order_number); ?>
                    </th>
                    <td><?php echo $order->user_id; ?></td>
                    <td>
                      <?php echo $order->order_date; ?>
                    </td>
                    <td>
                      <?php echo $order->total_items; ?>
                    </td>
                    <td>
                      Rp <?php echo format_rupiah($order->total_price); ?>
                    </td>
                    <td><?php echo get_order_status($order->order_status, $order->payment_method); ?></td>
                  </tr>
                <?php }
                } ?>                
                </tbody>
              </table>
            </div>
    </div>
</div>