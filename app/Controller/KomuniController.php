<?php 
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class KomuniController extends AppController{
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
	public $uses = array('Umat','Leveluser','Kk');
	public $helpers = array('Flash');
	public $layout = 'default';
	public $name = 'Komuni';


	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow( 'login');
	}

	public function index(){
		

	/*	$datas = $this->Pernikahan->find('all');
		$this->set('datas',$datas);	*/
		$userRole = $this->Auth->user('user_level');
		$idTam =  $this->Auth->user('id_umat');
		$this->set('idStatusKomuni',$this->Umat->findById($this->Auth->user('id'),array('Umat.stskomuni')));
		//$this->set('paroki',$this->Paroki->getParoki());

		$conditions = array();
		
		if (!empty($this->data) && $this->data['cari'] !== '') {
			$conditions = array(
						
							'nama LIKE ' => '%' . strtolower($this->data['cari']) . '%'
							
						
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

		
		$this->Umat->recursive = 3;
		$set = array();
		if ($userRole == 1) {
			

			$set = array(
				'limit' => 20,
			
				'conditions' => array('Umat.id '=>$idTam,$conditions),
				'order' => array(
					'Umat.id' => 'asc'
				)
			);
			# code...
		}else if ($userRole == 2) {
			# code...
			$userKk = $this->Session->Read('Auth.User.idKK');
			//$userKk = $this->Auth->user('id_kk');
			$idlingkungan = $this->Kk->getIdLingkungan($userKk);

			$set = array(
				'limit' => 10,
			
				'conditions' => array('Kk.lingkungan_id '=>$idlingkungan,$conditions),
				'order' => array(
					'Umat.id' => 'asc'
				)
			);
		}else if ($userRole == 5){
			$set = array(
				'limit' => 10,
			
				'conditions' => array($conditions),
				'order' => array(
					'Umat.id' => 'asc'
				)
			);
		}

		$this->Paginator->settings = $set;
	
		try {
	
		$this->set('datas',$this->Paginator->paginate('Umat'));

			
		} catch (NotFoundException $e) {
			$this->redirect(array('action'=>'index'));
		}
	}

	public function tambah(){
/*		$this->set('nama_parokis',$this->Paroki->getParoki());*/
/*$userKk = $this->Session->Read('Auth.User.idKK');*/
		$userKk = $this->Auth->user('id_kk');
		$idTam =  $this->Auth->user('id');
				
		if ($this->request->is('post')) {
				# code...
				try {
				
				if ($this->Umat->save($this->request->data)){
					
					$row = $this->Umat->findById($idtam);
					$row['Umat']['stskomuni'] = true;
					$this->Umat->save($row);
					$this->Flash->success(__('data komuni telah tersimpan.'));
					return $this->redirect(array('action' => 'index'));
				}
			} catch (PDOException $e) {
				$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->errorInfo[2]));
			}
			}
	}

	public function edit($id=null){

	if ($id) {
				# code...
				if (!empty($this->request->data)){
					# code...
					try {
							if($this->data["Umat"]["stskomuni"] == 0 ){
								$this->request->data['Umat']['tmpkomuni'] = '';
								$this->request->data['Umat']['tglkomuni'] = '';
							}




							$this->Umat->save($this->request->data);
							# code...
							$this->Flash->success(__('Data komuni telah berhasil diubah.'));
						
						
					} catch (PDOExeption $pdoe) {
						$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
					}
					$this->redirect(array('action'=>'index'));
				}else{
					$this->request->data = $this->Umat->read(null,$id);
				}
			}else{
				$this->redirect(array('action'=>'index'));
			}
	}

}

 ?>