<?php
if(! defined('BASEPATH')) exit('No direct script acces allowed');

class Model_Login extends CI_Model{
    
    function getBase(){
        $sql = "select * from clients";
        $query = $this->db->query($sql);
        $result = $query->result_array();
        return $result;
    }

    function login($nom,$cin,$tel){
        $listuser = $this->Login->getBase();
        for ($i=0; $i < count($listuser) ; $i++) { 
            if ($nom == $listuser[$i]['nom'] && $cin == $listuser[$i]['cin'] && $tel == $listuser[$i]['tel']) {
               return true;
            }
        }
        return false;
    }

    function sinUp($nom,$tel,$cin,$adresse,$mail){
        $sql= "insert into Clients (nom,tel,cin,adresse,mail) values (%s,%s,%s,%s,%s)";
        $sql = sprintf($sql, $this->db->escape($nom), $this->db->escape($tel), $this->db->escape($cin),$this->db->escape($adresse),$this->db->escape($mail));
        $query = $this->db->query($sql);
    }

}  
?>