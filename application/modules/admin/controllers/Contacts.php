<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contacts extends CI_Controller {
    public function __construct()
    {
        parent::__construct();

        verify_session('admin');

        $this->load->model('contact_model', 'contact');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $params['title'] = 'Kelola Kontak Pengunjung';

        $this->load->view('header', $params);
        $this->load->view('contacts/contacts');
        $this->load->View('footer');
    }

    public function view($id = 0)
    {
        if ( $this->contact->is_contact_exist($id))
        {
            $data = $this->contact->contact_data($id);

            $params['title'] = 'Kontak '. $data->name;

            $contact['contact'] = $data;
            $contact['flash'] = $this->session->flashdata('contact_flash');

            $this->contact->set_status($id, 2);

            $this->load->view('header', $params);
            $this->load->view('contacts/view', $contact);
            $this->load->View('footer');
        }
        else
        {
            show_404();
        }
    }

    public function reply()
    {
        $id = $this->input->post('id');
        $sender = $this->input->post('email');
        $name = $this->input->post('name');
        $send_to = $this->input->post('to');
        $subject = $this->input->post('subject');
        $message = $this->input->post('message');

        //         $this->load->library('email');
// phdd dpgt sssi qtbh
//         $this->email->from($sender, $name);
//         $this->email->to($send_to);

//         $this->email->subject($subject);
//         $this->email->message($message);

//         $this->email->send();
//         $this->email->print_debugger(array('headers'));
        $config = [
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'protocol'  => 'smtp',
            'smtp_host' => 'smtp.gmail.com',
            'smtp_user' => 'calvinprakososetyoaji@gmail.com',  // Email gmail
            'smtp_pass'   => 'dhcm smze bmut qscy',  // Password gmail
            'smtp_crypto' => 'ssl',
            'smtp_port'   => 465,
            'crlf'    => "\r\n",
            'newline' => "\r\n"
        ];

        // Load library email dan konfigurasinya
        $this->load->library('email', $config);

        // Email dan nama pengirim
        $this->email->from('calvinprakososetyoaji@gmail.com', 'Calvin');

        // Email penerima
        $this->email->to($send_to); // Ganti dengan email tujuan

        // Lampiran email, isi dengan url/path file
        // $this->email->attach('https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');

        // Subject email
        $this->email->subject($subject);

        // Isi email
        $this->email->message($message);

        // Tampilkan pesan sukses atau error
        if ($this->email->send()) {
            redirect('admin/contacts');
        } else {
            echo 'Error! email tidak dapat dikirim.';
        }
    }

    public function api($action = '')
    {
        switch ($action)
        {
            case 'contacts' :
                $contacts['data'] = $this->contact->get_all_contacts();

                $response = $contacts;
            break;
            case 'delete' :
                $id = $this->input->post('id');

                $this->customer->delete_customer($id);

                $response = array('code' => 204);
            break;
        }

        $response = json_encode($response);
        $this->output->set_content_type('application/json')
            ->set_output($response);
    }
}
