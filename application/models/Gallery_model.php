<?php
class Gallery_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function get_gallery($limit = FALSE, $offset = FALSE)
    {
        if ($limit) {
            $this->db->limit($limit, $offset);
        }
        $this->db->order_by('id', 'DESC');
        $query = $this->db->get('gallery');
        return $query->result_array();
    }

    public function upload_gallery($upload_image)
    {
        date_default_timezone_set("Asia/Jakarta");
        $date = date('m/d/Y h:i:s a', time());
        $data = array(

            'title' => $this->input->post('title'),
            'upload_image' => $upload_image,
            'date_taken' => $this->input->post('date_taken'),
            'created_at' => $date
        );

        return $this->db->insert('gallery', $data);
    }

    public function delete_gallery($id)
    {
        $images_file_name = $this->db->select('upload_image')->get_where('gallery', array('id' => $id))->row()->upload_image;
        $cwd = getcwd(); // save the current working directory
        $images_file_path = $cwd . "\\assets\\images\\gallery\\";
        chdir($images_file_path);
        unlink($images_file_name);
        chdir($cwd); // Restore the previous working directory
        $this->db->where('id', $id);
        $this->db->delete('gallery');
        return true;
    }
}
