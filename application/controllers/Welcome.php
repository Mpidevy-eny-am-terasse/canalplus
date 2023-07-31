<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
<<<<<<< HEAD
		$this->load->view('welcome_message');
	}		
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
=======
		$this->load->model('model_user');
		$data = array(
			"users" => $this->model_user->getUsers(),
			"variable" => "valeur"
		);
		// $data = $this->model_user->getUsers();
		$this->load->view('welcome_message', $data);
	}

	public function age() {
		$this->load->model('model_user');
		$anneN = $this->input->post('user');
		$age = $this->model_user->calculAge($anneN);
		echo $age;
	}
}
>>>>>>> c29a4fb6c0c57b63424a02c95035c423eedf1c0a
