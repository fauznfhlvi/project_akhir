<!-- Begin Page Content -->
<div class="container-fluid">
    <?= $this->session->flashdata('pesan'); ?>
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
                  <li class="breadcrumb-item active" aria-current="page">LAPORAN</li>
                  <li class="breadcrumb-item active" aria-current="page">Laporan Penjualan</li>
                </ol>
            </div>
            <div class="col-lg-6 col-5 text-left">
            <h6 class="h2 text-white d-inline-block mb-0">Laporan Penjualan</h6>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="container-fluid mt--6">
    <div class="row alert alert-primary">
        <div class="col-lg-12">
            <?php if($this->session->userdata('key')): ?>
                <div class="alert alert-danger" role="alert">
                    <?= $this->session->userdata('key'); ?>
                </div>
            <?php endif; ?>
            <?= $this->session->flashdata('pesan'); ?>
            <a href="<?= site_url('admin/laporan/cetak_laporan_penjualan'); ?>" class="btn btn-info mb-3"><i class="fas fa-print"></i> Print</a>
            <a href="<?= site_url('admin/laporan/laporan_pdf_penjualan'); ?>" class="btn btn-warning mb-3"><i class="far fa-file-pdf"></i> Download Pdf</a>
            <a href="<?= site_url('admin/laporan/export_excel_penjualan'); ?>" class="btn btn-success mb-3"><i class="far fa-file-excel"></i> Export ke Excel</a>
            <table class="table table-hover">
            <table class="table align-items-center table-flush">
            <thead class="thead-danger">
              <tr class="bg-danger">
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