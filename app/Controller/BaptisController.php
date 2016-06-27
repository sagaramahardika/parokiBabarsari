<?php
//App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class BaptisController extends AppController{
	public $components = array('Flash','Paginator');
	public $uses = array('Baptis','Umat');
	public $helpers = array('Flash');
	public $layout = 'default';
	public $name = 'Baptis';

	public function index(){
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

		$this->set('title_for_layout','Home');
		$this->Baptis->recursive = 1;
		$this->set('umats',$this->Umat->find('list',array('fields'=>array('nama'))));

		$this->Paginator->settings = array(
			'limit'=>10,
			'conditions'=>array($conditions),
			'order'=>array(
				'Baptis.id'=>'asc'));
		try{
			$this->set('datas',$this->Paginator->paginate('Baptis'));
		}catch(NotFoundException $e){

		}
	}

	public function tambah(){
		if($this->request->is('post')){
			$this->Baptis->create();
			$liberbap = "BUKU " . $this->request->data['Baptis']['kode_buku'] . ', HLM ' . $this->request->data['Baptis']['halaman_buku'] . ', NO ' . $this->request->data['Baptis']['nomor_buku'];
			//print_r($this->request->data);
			$this->request->data['Baptis']['liberbap'] = $liberbap;
			if($this->Baptis->save($this->request->data)){
				$this->Flash->set(__('Baptis telah tersimpan.'));
				//return $this->redirect(array('action' => 'index'));
			}
		}
	}

	public function edit($id=null){
	/*	if ($this->request->is('post') || $this->request->is('put')) {
//			$this->Baptis->id = $this->Auth->user('id');

			/*if($this->data['Baptis']['nama_baptis'] || $this->data['Baptis']['tempat']){
				$this->request->data['Baptis']['sts_baptis'] = '1';
			}else{
				$this->request->data['Baptis']['sts_baptis'] = '0';
			}*/
	/*		$this->request->data["Baptis"]['id_umat'] = $this->Baptis->id;
			if($this->data['Baptis']['sts_baptis'])
				echo 'aa';
			else{
				$this->request->data['Baptis']['nama_baptis']= '';
				$this->request->data['Baptis']['tempat'] ='';
				$this->request->data['Baptis']['tanggal'] = '';
				$this->request->data['Baptis']['romo'] = '';
			}
			try {
				if ($this->Baptis->save($this->request->data)) {
					$this->Flash->success(__('Status Baptis berhasil diupdate.'));

					if ($this->Auth->user('id') === '1') {
						$this->redirect(array('action' => 'index'));
					} else {
						$this->redirect(array('controller' => 'umats'));
					}
				}
			} catch (PDOException $e) {
				$this->Flash->error(__('User tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
		} else {
			$userid = $id;
			$isFound = true;
			if ($id == null) {
				if ($this->Auth->login()) {
					$userid = $this->Auth->user('id');
				}
			} else {
				$iduser = $this->Baptis->findByIdhash($id);
				if (empty($iduser)) {
					$isFound = false;
				} else {
					$userid = $iduser['User']['id'];
				}
			}

			if ($isFound){
				$this->request->data = $this->Baptis->read(null, $userid);
			} else {
				$this->Flash->error(__('User tidak ditemukan, silahkan dicoba lagi.'));
				if ($this->Auth->user('role') === 'admin') {
					$this->redirect(array('action' => 'index'));
				} else {
					$this->redirect(array('controller' => 'umats'));
				}
			}
		}*/
		if ($this->request->is('post') || $this->request->is('put')) {
			$this->Baptis->id = $id;
			echo "ini id ".$this->Baptis->id;
			try {
				if ($this->Baptis->save($this->data['Baptis'])) {
					$this->Flash->success(__('User telah tersimpan.'));
					if ($this->Auth->user('user_level') === '1') {
						$this->redirect(array('action' => 'index'));
					} else {
						$this->redirect(array('controller' => 'baptis'));
					}
				}
			} catch (PDOException $e) {
				$this->Flash->error(__('User tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
		} else {
			$userid = $id;
			$isFound = true;
			if ($id == null) {
				if ($this->Auth->login()) {
					$userid = $this->Auth->user('id');
				}
			} else {
				$iduser = $this->Baptis->findByIdUmat($id);
				if (empty($iduser)) {
					$isFound = false;
				} else {
					$userid = $iduser['Baptis']['id_umat'];
				}
			}

			if ($isFound){
				$this->request->data = $this->Baptis->read(null, $userid);
				unset($this->request->data['Umat']['password']);
			} else {
				$this->Flash->error(__('User tidak ditemukan, silahkan dicoba lagi.'));
				if ($this->Auth->user('role') === 'admin') {
					$this->redirect(array('action' => 'index'));
				} else {
					$this->redirect(array('controller' => 'baptis'));
				}
			}
		}
	}

	public function autocompleteumat() {
		if ($this->request->is('ajax')) {

			 $this->autoLayout = false;
			 $this->autoRender = false;
			 $response=array();

			 if($_GET['nama']){
				 $namarow = $this->Umat->find('all',array('fields'=>array('nama'),'conditions'=>array('nama'=>$_GET['nama'])));

				 if (empty($namarow)) {
					 $response[0]['status'] = 'error';
					 $response[0]['get'] = $_GET['nama'];

				 }else{
					 $response[0]['status'] = 'success';
					 $response[0]['get'] = $_GET['nama'];
				 }

			 }else{
				 $response[0]['status']='error';
			 }

			 echo json_encode($response);
		 }
	 }
}
