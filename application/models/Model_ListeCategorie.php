
<?php
if(! defined('BASEPATH')) exit('No direct script access allowed');

class Model_ListeCategorie extends CI_Model {
    public function Listecategorie($sport,$Anime,$MoviesFamiz,$Movies_Action,$Movies_Serie,$Porno,$Musique, $Radio,$Journal) {
        $this->load->database();
        $sql = "select * from categorie_chaine";
        $query = $this->db->query($sql);
        $result = $query->result_array();
        return $result;
    } 
    }
?>
       |
