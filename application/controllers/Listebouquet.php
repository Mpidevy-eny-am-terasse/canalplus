<?php
if(! defined('BASEPATH')) exit('No direct script access allowed');

class ListeBouquet extends CI_Controller {
    
    public function Listebouquet() {
        $this->load->model('Model_ListeBouquet');
        
        $Liste = $this->Model_ListeBouquet->Listebouquet();
        
        $data['Liste'] = $Liste;

        $this->load->view('Viewbouquet.php', $data);
    }
}
?>
 