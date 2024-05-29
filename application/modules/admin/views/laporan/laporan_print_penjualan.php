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
 
 <h3><center>LAPORAN DATA PENJUALAN</center></h3> 
 <br/> 
 <table class="table-data"> 
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
<script type="text/javascript"> 
 window.print(); 
</script> 
 
</body>
</html>