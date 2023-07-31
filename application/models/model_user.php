<?php
if(! defined('BASEPATH')) exit('No direct script acces allowed');

class Model_user extends CI_Model {

    public function getUsers() {
        $this->load->database();
        $sql = "select * from users";
        $query = $this->db->query($sql);
        $result = $query->result_array();
        return $result;
    }

    public function calculAge($anneeNaissance) {
        $age = 2023 - $anneeNaissance;
        return $age;
    }

    public function getUsersById($idUser) {
        $sql = "select * from users where idUser = %s";
        $sql = sprintf($sql, $this->db->escape($idUser));
        $query = $this->db->query($sql);
        $result = $query->row_array();
        return $result;
    }

    public function checkLogin($mail , $mdp)
    {
        // var_dump($mail);
        // var_dump($mdp);
        $listUser = $this->model_login->getUsers();
        // var_dump($listUser);
        $result = false;
        for ($i=0; $i < count($listUser); $i++) {
            // var_dump($listUser[$i]);
            if ($listUser[$i]['mdp'] == $mdp && $listUser[$i]['mail'] == $mail)  
            {
                $result = true;
            }
        }
        return $result;
    }

    public function loadAdmin($mail , $mdp)
    {
        $listUser = $this->model_login->getUsers();
        for ($i=0; $i < count($listUser); $i++) { 
            if ($listUser[$i]['mdp'] == $mdp && $listUser[$i]['mail'] == $mail && $listUser[$i]['etat'] == '1')  
            {
                return true;
            }
        }
        return false;
    }
}
?>