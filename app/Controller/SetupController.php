<?php 
class SetupController extends AppController{
	public $useTable = 'setup';

	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow( 'index');
	}

	public function isAuthorized($user) {
	return parent::isAuthorized($user);
	}

	public function index(){
		$datas = $this->Setup->find('all');
		$this->set('datas',$datas);
	}
	public function edit(){
		if($id){

		}
		return $this->redirect(array('action'=>'index'));
	}
}
 ?>