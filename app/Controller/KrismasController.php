<?php 
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class KrismasController extends AppController{
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
	public $uses = array('Umat','Kk','Leveluser','Lingkungan','Wilayah','Paroki');
	public $helpers = array('Flash');
	public $layout = 'default';

public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow( 'login');
	}
	public function index(){
		$this->set('idStatusKrisma',$this->Umat->findById($this->Auth->user('id'),array('Umat.stskrisma')));
		$userRole = $this->Auth->user('user_level');
		$idTam =  $this->Auth->user('id_umat');   
		$this->set('paroki',$this->Paroki->getParoki());

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
		
		}else if ($userRole == 2) {
			# code...
			$userKk = $this->Session->Read('Auth.User.idKK');
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
			$idTam =  $this->Auth->user('id');
		if ($this->request->is('post')) {
				# code...
				try {
				
				if ($this->Umat->save($this->request->data)){
					$row = $this->Umat->findById($idtam);
					$row['Umat']['stskrisma'] = true;
					$this->Umat->save($row);

					$this->Flash->success(__('data krisma telah tersimpan.'));
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
							if($this->data["Umat"]["stskrisma"] == 1 ){
								$this->request->data['Umat']['namakrisma'] = '';
								$this->request->data['Umat']['tmpkrisma'] = '';
								$this->request->data['Umat']['tglkrisma'] = '';
								$this->request->data['Umat']['romokrisma'] = '';
							}


							$this->Umat->save($this->request->data);
							# code...
							$this->Flash->success(__('data krisma telah berhasil diubah.'));
						
						
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