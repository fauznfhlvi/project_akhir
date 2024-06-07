<!DOCTYPE html> 
<html> 
<head> 
 <title></title> 
</head> 
<body> 
 <style type="text/css"> 
 .table-data{ 
   width: 100%; 
   border-collapse: collapse; 
  } 
 
  .table-data tr th, 
  .table-data tr td{ 
   border:1px solid black; 
   font-size: 11pt; 
   font-family:Verdana; 
   padding: 10px 10px 10px 10px; 
  } 
  .table-data th{ 
      background-color:grey; 
  } 
  h3{ 
    font-family:Verdana; 
  } 
 </style> 
 <h3><center>LAPORAN DATA PEMBAYARAN</center></h3> 
 <br/> 
 <table class="table-data"> 
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Pembayaran Order</th>
                <th scope="col">Customer</th>
                <th scope="col">Tanggal</th>
                <th scope="col">Jumlah</th>
                <th scope="col">Status</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            if (is_array($payments) || is_object($payments)) {
                foreach ($payments as $payment) : ?>
                <tr>
                    <th scope="row"><?php echo $payment->id; ?></th>
                    <td>#<?php echo anchor('admin/payments/view/'. $payment->id, $payment->order_number); ?></td>
                    <td><?php echo $payment->customer; ?></td>
                    <td><?php echo $payment->payment_date; ?></td>
                    <td>Rp <?php echo format_rupiah($payment->payment_price); ?></td>
                    <td><?php echo get_payment_status($payment->status); ?></td>
                </tr>
                <?php endforeach; 
            } ?>
        </tbody> 
    </table> 
            </div>
    </div>
</div>