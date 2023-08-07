<?php
if(! defined('BASEPATH')) exit('No direct script access allowed');

class Listecategorie extends CI_Controller {
    
    public function Listecategorie() {
        $this->load->model('Model_Listecategorie');
        
        $Liste = $this->Model_Listecategorie->Listecategorie($Anime,$MoviesFamiz,$Movies_Action,$Movies_Serie,$Porno,$Musique, $Radio,$Journal);
        $data['Liste'] = $Liste;

        $this->load->view('Viewbouquet.php', $data);
    }
}
?>
