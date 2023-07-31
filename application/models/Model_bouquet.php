<?php
if(! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Bouquets extends CI_Model {
    
    public function getMontant($idbouquets){
        $sql = "SELECT montant FROM Bouquets WHERE idbouquets=%s";
        $sql = sprintf($sql, $this->db->escape($idbouquets));
        $query = $this->db->query($sql);
        
        if ($query->num_rows() > 0) {
            $row = $query->row();
            return $row->montant;
        } else {
            return null;
        }
    }
}
?>
