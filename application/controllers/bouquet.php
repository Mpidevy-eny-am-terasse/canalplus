<?php
if(! defined('BASEPATH')) exit('No direct script access allowed');

class Bouquets extends CI_Controller {
    
    public function getMontantBouquet($idbouquets) {
        $this->load->model('Model_Bouquets');
        
        $montant = $this->Model_Bouquets->getMontant($idbouquets);
        
        $data['montant'] = $montant;

        $this->load->view('Viewbouquet.php', $data);
    }
}
?>
