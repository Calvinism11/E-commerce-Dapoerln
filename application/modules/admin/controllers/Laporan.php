<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {
    public function __construct()
    {
        parent::__construct();

        verify_session('admin');

        $this->load->model(array(
            'customer_model' => 'customer',
            'order_model' => 'order',
            'payment_model' => 'payment'
        ));
    }

    public function index()
    {
        $params['title'] = 'Laporan';

        $this->load->view('header', $params);
        $this->load->view('laporan/index');
        $this->load->view('footer');
    }

    public function print()
    {
        $data['order'] = $this->db->where('DATE(order_date) >=',"$_GET[dari]")->where('DATE(order_date) <=',"$_GET[sampai]")->get('orders')->result();

        $this->load->view('laporan/cetak',$data);
    }

}