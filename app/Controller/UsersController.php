<?php 
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
//App::uses('SimplePasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class UsersController extends AppController{
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
	public $helpers = array('Flash');
	public $uses = array('Umat', 'Leveluser','User', 'Lingkungan', 'Kk');

	public function login() {
		if (!$this->Session->check('Auth.User')) {
			if ($this->request->is('post')) {
				//$passwordHasher = new BlowfishPasswordHasher();
				//$datas = $passwordHasher->hash($this->request->data['User']['username']);
				//echo " ".$datas." ";
				if ($this->Auth->login()) {
						$this->User->id = $this->Auth->user('id');
						$this->User->saveField('last_login',DboSource::expression('NOW()'));
						$_SESSION['KCFINDER']['disabled']=false;
						$umat = $this->Umat->findById($this->Auth->user('id_umat'));
						$kkq = $this->Kk->findById($umat['Umat']['id_kk']);
						$ling = $this->Lingkungan->findById($kkq['Kk']['lingkungan_id']);
						$this->Session->write('Auth.User.id',$this->Auth->user('id'));
						$this->Session->write('Auth.User.level',$this->Auth->user('user_level'));
						$this->Session->write('Auth.User.nama',$umat['Umat']['nama']);
						$this->Session->write('Auth.User.idKK',$umat['Umat']['id_kk']);
						$this->Session->write('Auth.User.kodeumat',$umat['Umat']['kode_umat']);
						$this->Session->write('Auth.User.codeling',$ling['Lingkungan']['code_lingkungan']);
						$this->Session->write('Auth.User.idling',$ling['Lingkungan']['id']);
						$this->Session->write('Auth.User.namaling',$ling['Lingkungan']['nama_lingkungan']);

						/*if ($this->request->data['Umat']['remember_me'] == 1) {
							// remove "remember me checkbox"
							unset($this->request->data['Umat']['remember_me']);

							// hash the user's password
							$passwordHasher = new BlowfishPasswordHasher();
							$this->request->data['Umat']['password'] =
								$passwordHasher->hash($this->request->data['Umat']['password']);

							// write the cookie
							$this->Cookie->write('its_me_cookie', $this->request->data['Umat'], true, '2 days');
						}*/
						return $this->redirect($this->Auth->redirectUrl());
				}else{
					//echo 'ee';
					//$this->Flash->error('Username dan password tidak valid, silahkan ulang kembali');
				}
			} 
		} else {
			if ($this->Auth->user('role') === 'admin') {
				$this->redirect(array('controller'=>'admin', 'action' => 'index'));
			} else {
				$this->redirect(array('controller'=>'main', 'action' => 'index'));
			}
		}
	}
	
    public function logout() {
        $this->redirect($this->Auth->logout());
    }

    public function editlevel($id=null){
    					if($this->Auth->user('user_level')!=5){
			$this->redirect($this->Session->read('lastUrl'));
		}

		$this->User->id=$id;
		$this->set('level', $this->Leveluser->getLevel());
		$aa = $this->User->findById($id);
			$this->set('usern', $aa['User']['username']);

		if(!$this->User->exists()){
			throw new NotFoundException('Umat Tidak Valid');
		}
		if($this->request->is('post')){
			if($this->User->save($this->request->data)){
			$this->User->save($this->request->data);
			$this->Flash->success('Level berhasil diubah');
			$this->redirect(array('controller'=>'users','action'=>'listuser'));
			} else{
				$this->Session->setFlash('Data tidak berhasil diupdate');
				$this->redirect(array('controller'=>'umats','action'=>'index'));
			}
		}else{
			$this->request->data=$this->User->read(null,$id);
		}
	}

	public function listuser(){
		//$datas = $this->Umat->find('all');
		//$this->set('datas', $datas);
		$namau = $this->Umat->getNamaUmat();
		$this->set('namaumat', $this->Umat->getNamaUmatById());
		$this->set('level', $this->Leveluser->getLevel());
		$conditions = array();		
		if (!empty($this->data) && $this->data['cari'] !== '') {
			
		$sss = $this->Umat->find('all', array('fields'=>'id', 'conditions'=>array('umat.nama LIKE ' => '%' . strtoupper($this->data['cari']) . '%')));
		
		
		$finarray = array();
		for($i = 0; $i < count($sss); $i++){
			$finarray[$i] = $sss[$i]['Umat']['id'];
		}
		//Debugger::dump($sss);
		//Debugger::dump(count($sss));
			$conditions = array(
						
							'user.id_umat ' =>  $finarray
							
						
					);
			$this->Session->write('conditions',$conditions);
			$this->Session->write('search', $this->data['cari']);
		} else {
			if (empty($this->params['named']['o'])) {
				$this->Session->delete('conditions');
				$this->Session->delete('search');
			} else {
				if ($this->params['named']['o'] === 'search') {
					$conditions = $this->Session->read('conditions');
				} else {
					$this->Session->delete('conditions');
					$this->Session->delete('search');
				}
			}
		}

		if($this->Auth->user('user_level')!=5){
			$this->redirect($this->Session->read('lastUrl'));
		}
		
		$this->Paginator->settings = array(
			'limit'=>10,
			//'conditions'=> array('kodeumat' =>$Umat['Umat']['kodeumat'],$conditions),
			'conditions'=>$conditions,

			'order'=>array(
				'User.id'=>'asc'));

		try{
			$this->set('datas',$this->Paginator->paginate('User'));
		}catch(NotFoundException $e){

		}
	}

	public function editpasswords($id=null){


		$this->User->id=$id;
				if($this->Auth->user('id')!=$id){
			$this->redirect($this->Session->read('lastUrl'));
		}
$aa = $this->User->findById($id);
			$this->set('usern', $aa['User']['username']);
		//Debugger::dump($this->request->data);
		if($this->request->is('post')){
			$aa = $this->User->findById($id);
			$this->set('usern', $aa['User']['username']);
			//echo $aa['User']['password'];
			$passwordHasher = new BlowfishPasswordHasher();
			if	($passwordHasher->check($this->request->data['User']['passwordlama'], $aa['User']['password'])){
				if($this->request->data['User']['passwordbaru'] === $this->request->data['User']['passwordulang']){
					$this->request->data['User']['password'] = $this->request->data['User']['passwordbaru'];
					// $this->request->data['User']['username'] = "";
					// if($this->User->save($this->request->data)){
					// 	$this->User->save($this->request->data);
					// 	$this->Session->setFlash('Data berhasil dirubah');
					// 	//$this->redirect(array('controller'=>'umats','action'=>'index'));
					// 	} else{
					// 		$this->Session->setFlash('Data tidak berhasil diupdate');
					// 		//$this->redirect(array('controller'=>'umats','action'=>'index'));
						// 	}
					$this->User->id = $id;
					$this->User->saveField('password', $this->request->data['User']['password']);
					$this->Flash->success('Password berhasil diubah');
					$this->redirect(array('controller'=>'umats', 'action' => 'index'));
				}
				else {$this->Flash->error('Ulang Password Salah');
				$this->redirect($this->Session->read('lastUrl'));}
			}
			else{
				$this->Flash->error('Password Lama salah');
				$this->redirect($this->Session->read('lastUrl'));
			}
			
			//Debugger::dump($this->request->data);
			
		}else{

			$this->request->data=$this->User->read(null,$id);
		}
	}
}
?>