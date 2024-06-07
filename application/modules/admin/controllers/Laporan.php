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
        $params['title'] = 'Laporan Pemesanan';

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
        include $sroot . "/project_akhir/application/third_party/dompdf/autoload.inc.php"; 
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
        $laporan = array ('title' => 'Laporan Data Pemesanan');
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
    public function laporan_pembayaran()
    {
        $params['title'] = 'Laporan Pembayaran';
        $config['per_page'] = 10; // Atur jumlah produk per halaman
        $payments['base_url'] = site_url('admin/laporan/laporan_pembayaran');
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $customers = $this->customer->get_all_customers('id');        

        $payments['payments'] = $this->payment->get_all_payments($config['per_page'], $page);
        // $payments['pagination'] = $this->pagination->create_links();

        
         
        $payments['orders'] = $this->db->get('orders')->result();
        $payments['customers'] = $this->db->query("
            SELECT * 
            FROM orders o
            JOIN order_item i ON o.id = i.order_id
            JOIN users u ON o.user_id = u.id
            JOIN customers c ON u.id = c.user_id
        ")->result_array();
    
        $this->load->view('header', $params);
        $this->load->view('laporan/laporan_pembayaran', $payments);
        $this->load->view('footer');
    }
    public function cetak_laporan_pembayaran() 
    { 
        // Define the base URL for the report
        $payments['base_url'] = site_url('admin/laporan/cetak_laporan_pembayaran');
        
        // Fetch all orders from the 'orders' table
        $payments['orders'] = $this->db->get('orders')->result();
        $config['per_page'] = 10;
        
        // Fetch customers with their order and order items details
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $customers = $this->customer->get_all_customers('id');        

        $payments['payments'] = $this->payment->get_all_payments($config['per_page'], $page);
        
        // Load the view with the data
        $this->load->view('laporan/laporan_print_pembayaran', $payments); 
    }
    public function laporan_pdf_pembayaran() 
    { 
        $payments['base_url'] = site_url('admin/laporan/laporan_pdf_pembayaran');
        
        // Fetch all orders from the 'orders' table
        $payments['orders'] = $this->db->get('orders')->result();
        $payments['customers'] = $this->db->query("
            SELECT * 
            FROM orders o
            JOIN order_item i ON o.id = i.order_id
            JOIN users u ON o.user_id = u.id
            JOIN customers c ON u.id = c.user_id
        ")->result_array();
        $config['per_page'] = 10;
        
        // Fetch customers with their order and order items details
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $customers = $this->customer->get_all_customers('id');        

        $payments['payments'] = $this->payment->get_all_payments($config['per_page'], $page);
        // $this->load->library('dompdf_gen'); 
        $sroot      = $_SERVER['DOCUMENT_ROOT']; 
        include $sroot . "/project_akhir/application/third_party/dompdf/autoload.inc.php"; 
        $dompdf = new Dompdf\Dompdf(); 
        $this->load->view('laporan/laporan_pdf_pembayaran', $payments); 
        $paper_size  = 'A4'; // ukuran kertas 
        $orientation = 'landscape'; //tipe format kertas potrait atau landscape 
        $html = $this->output->get_output(); 

        $dompdf->set_paper($paper_size, $orientation); 
        //Convert to PDF 
        $dompdf->load_html($html); 
        $dompdf->render(); 
        $dompdf->stream("laporan data pembayaran.pdf", array('Attachment' => 0)); 
        // nama file pdf yang di hasilkan 
    } 
    public function export_excel_pembayaran() 
    { 
        $payments = array ('title' => 'Laporan Data Pembayaran');
        $payments['base_url'] = site_url('admin/laporan/export_excel_pembayaran');
        
        // Fetch all orders from the 'orders' table
        $payments['orders'] = $this->db->get('orders')->result();
        $payments['customers'] = $this->db->query("
            SELECT * 
            FROM orders o
            JOIN order_item i ON o.id = i.order_id
            JOIN users u ON o.user_id = u.id
            JOIN customers c ON u.id = c.user_id
        ")->result_array();
        $config['per_page'] = 10;
        
        // Fetch customers with their order and order items details
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $customers = $this->customer->get_all_customers('id');        

        $payments['payments'] = $this->payment->get_all_payments($config['per_page'], $page);
        $this->load->view('laporan/export_excel_pembayaran',$payments);
    }
 
}