
<?php
if(! defined('BASEPATH')) exit('No direct script access allowed');

class Model_ListeBouquets extends CI_Model {
    public function Listebouquet() {
        $this->load->database();
        $sql = "select * from bouquets";
        $query = $this->db->query($sql);
        $result = $query->result_array();
        return $result;
    } 
    }
?>

