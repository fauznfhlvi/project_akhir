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
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><?php echo anchor(base_url(), 'Home'); ?></li>
                        <li class="breadcrumb-item"><?php echo anchor('customer/reviews', 'Review'); ?></li>
                        <li class="breadcrumb-item active">Tulis Review</li>
                    </ol>
                    <div class="text-center">
                    <h1>Tulis Review</h1>
                  
                </div>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
    <div class="card card-info">
                    <div class="card card-header">
                    <div class="card-header">
            <?php echo form_open('customer/reviews/write_me'); ?>
            <div class="card-body">
                <div class="form-group">
                    <label for="title" class="form-control-label">Judul Review</label>
                    <input type="text" name="title" value="<?php echo set_value('title'); ?>" class="form-control" id="title" required>
                    <?php echo form_error('title'); ?>
                </div>

                <div class="form-group">
                    <label for="orders" class="form-control-label">Order:</label>
                    <select name="order_id" class="form-control" id="orders">
                        <?php if ( count($orders) > 0) : ?>
                        <?php foreach ($orders as $order) : ?>
                        <option value="<?php echo $order->id; ?>" <?php echo set_select('order_id', $order->id); ?>)>#<?php echo $order->order_number; ?></option>
                        <?php endforeach; ?>
                        <?php endif; ?>
                    </select>
                </div>

                <div class="form-group">
                    <label for="review" class="form-control-label">Review</label>
                    <textarea name="review" class="form-control" id="review" required><?php echo set_value('review'); ?></textarea>
                    <?php echo form_error('review'); ?>
                </div>

            </div>
            <div class="card-footer text-right">
                    <tr> 
                        <a href="#" onclick="window.history.go(-1)"> <input type="submit" value="Batal" class="btn btn-danger"></a>
                        
                    
                        <input type="submit" value="Konfirmasi" class="btn btn-danger">
                       
                            </tr>
                    </div>
            </form>
        </div>
    </section>
            <div class="col-md-4">
            
            </div>

</div>