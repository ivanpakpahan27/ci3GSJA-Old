<?php
class Gallery extends CI_Controller
{
    public function index($offset = 0)
    {
        // Pagination Config	
        $config['base_url'] = base_url() . 'gallery/index/';
        $config['total_rows'] = $this->db->count_all('gallery');
        $config['per_page'] = 6;
        $config['uri_segment'] = 3;
        $config['attributes'] = array('class' => 'pagination-link');

        // Init Pagination
        $this->pagination->initialize($config);

        $data['title'] = 'Galeri';

        $data['gallery'] = $this->gallery_model->get_gallery($config['per_page'], $offset);

        $this->load->view('templates/header');
        $this->load->view('gallery/index', $data);
        $this->load->view('templates/footer');
    }

    public function create()
    {
        // Check login
        if (!$this->session->userdata('logged_in')) {
            redirect('users/login');
        }

        $data['title'] = 'Buat Gallery';

        $this->form_validation->set_rules('title', 'Title', 'required');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('templates/header');
            $this->load->view('gallery/create', $data);
            $this->load->view('templates/footer');
        } else {
            // Upload Image
            $config['upload_path'] = './assets/images/gallery';
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '2048';
            $config['max_width'] = '2000';
            $config['max_height'] = '2000';

            $this->load->library('upload', $config);

            if (!$this->upload->do_upload()) {
                $errors = array('error' => $this->upload->display_errors());
                $upload_image = 'noimage.jpg';
            } else {
                $data = array('upload_data' => $this->upload->data());
                $upload_image = $_FILES['userfile']['name'];
            }

            $this->gallery_model->upload_gallery($upload_image);

            // Set message
            $this->session->set_flashdata('gallery_created', 'Your gallery has been created');

            redirect('gallery');
        }
    }

    public function delete($id)
    {
        // Check login
        if (!$this->session->userdata('logged_in')) {
            redirect('users/login');
        }

        $this->gallery_model->delete_gallery($id);

        // Set message
        $this->session->set_flashdata('gallery_deleted', 'Your gallery has been deleted');

        redirect('gallery');
    }
}
