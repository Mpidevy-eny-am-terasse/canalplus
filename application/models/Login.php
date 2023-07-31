<?php
if(! defined('BASEPATH')) exit('No direct script acces allowed');

class Login extends CI_Model{
    
    function getBase(){
        $sql = "select * from user";
        $query = $this->db->query($sql);
        $result = $query->result_arry();
        return $result;
    }

    function login($nom,$cin,$tel){
        $listuser = $this->Login->getBase();
        for ($i=0; $i < count($listuser) ; $i++) { 
            if ($nom == $listuser[$i]['nom'] && $cin == $listuser[$i]['cin'] && $tel == $listuser[$i]['tel']) {
               return true;
            }
        }
        return fauls;
    }
}

?>