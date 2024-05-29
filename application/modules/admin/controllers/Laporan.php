<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        verify_session('admin');

        $this->load->model(array(
            'customer_model' => 'customer',
            'order_model' => 'order',
            'payment_model' => 'payment',
            'product_model' => 'product' // Tambahkan model produk di sini jika belum dimuat.
        ));
    }

    public function index()
    {
        $params['title'] = 'Laporan Penjualan';

        $laporan['base_url'] = site_url('admin/laporan/index');
        $laporan['total_rows'] = $this->product->count_all_products();
        $config['per_page'] = 10; // Atur jumlah produk per halaman
        $page = $this->uri->segment(4); // Ambil nomor halaman dari URI

        $customers = $this->customer->get_all_customers('id');        
        $laporan['products'] = $this->product->get_all_products($config['per_page'], $page);
         
        $laporan['orders'] = $this->db->get('orders')->result();
        $laporan['customers'] = $this->db->query("
            SELECT * 
            FROM orders o
            JOIN order_item i ON o.id = i.order_id
            JOIN users u ON o.user_id = u.id
            JOIN customers c ON u.id = c.user_id
        ")->result_array();
    
        $this->load->view('header', $params);
        $this->load->view('laporan/laporan_penjualan', $laporan);
        $this->load->view('footer');
    }
    public function cetak_laporan_penjualan() 
    { 
        $laporan['base_url'] = site_url('admin/laporan/cetak_laporan_penjualan');
        $laporan['orders'] = $this->db->get('orders')->result();
        $laporan['customers'] = $this->db->query("
            SELECT * 
            FROM orders o
            JOIN order_item i ON o.id = i.order_id
            JOIN users u ON o.user_id = u.id
            JOIN customers c ON u.id = c.user_id
        ")->result_array(); 
        $this->load->view('laporan/laporan_print_penjualan', $laporan); 
    } 
    public function laporan_pdf_penjualan() 
    { 
        $laporan['base_url'] = site_url('admin/laporan/laporan_pdf_penjualan');
        $laporan['orders'] = $this->db->get('orders')->result();
        $laporan['customers'] = $this->db->query("
            SELECT * 
            FROM orders o
            JOIN order_item i ON o.id = i.order_id
            JOIN users u ON o.user_id = u.id
            JOIN customers c ON u.id = c.user_id
        ")->result_array(); 
        // $this->load->library('dompdf_gen'); 
        $sroot      = $_SERVER['DOCUMENT_ROOT']; 
        include $sroot . "/showroom-mobil/application/third_party/dompdf/autoload.inc.php"; 
        $dompdf = new Dompdf\Dompdf(); 
        $this->load->view('laporan/laporan_pdf_penjualan', $laporan); 
        $paper_size  = 'A4'; // ukuran kertas 
        $orientation = 'landscape'; //tipe format kertas potrait atau landscape 
        $html = $this->output->get_output(); 

        $dompdf->set_paper($paper_size, $orientation); 
        //Convert to PDF 
        $dompdf->load_html($html); 
        $dompdf->render(); 
        $dompdf->stream("laporan data penjualan.pdf", array('Attachment' => 0)); 
        // nama file pdf yang di hasilkan 
    } 
    public function export_excel_penjualan() 
    { 
        $laporan = array ('title' => 'Laporan Data Penjualan');
        $laporan['base_url'] = site_url('admin/laporan/laporan_pdf_penjualan');
        $laporan['orders'] = $this->db->get('orders')->result();
        $laporan['customers'] = $this->db->query("
            SELECT * 
            FROM orders o
            JOIN order_item i ON o.id = i.order_id
            JOIN users u ON o.user_id = u.id
            JOIN customers c ON u.id = c.user_id
        ")->result_array();  
        $this->load->view('laporan/export_excel_penjualan',$laporan);
    }
}