<?php
//App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class BaptisController extends AppController{
	public $components = array('Flash','Paginator');
	public $uses = array('Baptis','Umat', 'Statusbaptis', 'Paroki', 'BaptisDarurat', 'BaptisAnak', 'BaptisDewasa');
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

	/*public function tambah(){
		if($this->request->is('post')){
			try{
				$nama = $this->request->data['Umat']['nama'];

				if($this->request->data['Baptis']['id_umat'] == null){
					throw new \Exception('Umat tidak ditemukan');
				}
				//$this->request->data['Baptis']['sts_baptis'] = 1;

				$this->Baptis->create();

				$this->request->data['Baptis']['jenis_baptis'] = 'LAINNYA';
				$this->request->data['Baptis']['sts_baptis'] = 1;
				if($this->Baptis->save($this->request->data)){
					$this->Flash->success(__('Baptis telah tersimpan.'));
					return $this->redirect(array('action' => 'tambah'));
				}
			}catch(\Exception $e){
					$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->getMessage()));
			}
		}else{
			$results = $this->Statusbaptis->find('all', array('conditions' => array('Statusbaptis.status <> "Belum baptis" AND Statusbaptis.status <> "-"')));
			$this->set('jenisdatas', $results);
		}
	}*/

	public function tambah(){
		if($this->request->is('post')){
			try{
				$this->Baptis->create();

				$this->request->data['Baptis']['jenis_baptis'] = 'DITERIMA';
				$this->request->data['Baptis']['sts_baptis'] = 1;
				if($this->Baptis->save($this->request->data)){
					$id = $this->Baptis->id;
					$this->request->data['Bapti']['id_baptis'] = $id;
					if($this->BaptisDarurat->save($this->request->data)){
						$this->Flash->success(__("Sukses tambah data baptis"));
						return $this->redirect(array('action' => 'tambah'));
					}
					return $this->redirect(array('action' => 'tambah'));
				}
			}catch(\Exception $e){
					$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->getMessage()));
			}
		}else{

		}
	}

	public function tambahBaptisDarurat(){
		if($this->request->is('post')){
			try{
				$this->Baptis->create();

				$this->request->data['Baptis']['jenis_baptis'] = 'DARURAT';
				$this->request->data['Baptis']['sts_baptis'] = 1;
				if($this->Baptis->save($this->request->data)){
					$id = $this->Baptis->id;
					$this->request->data['BaptisDarurat']['id_baptis'] = $id;
					if($this->BaptisDarurat->save($this->request->data)){
						$this->Flash->success(__("Sukses tambah data baptis"));
						return $this->redirect(array('action' => 'tambahBaptisDarurat'));
					}
					return $this->redirect(array('action' => 'tambahBaptisDarurat'));
				}
			}catch(\Exception $e){
					$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->getMessage()));
			}
		}else{

		}
	}

	public function tambahBaptisAnak(){
		if($this->request->is('post')){
			try{
				$this->Baptis->create();

				$this->request->data['Baptis']['jenis_baptis'] = 'ANAK';
				$this->request->data['Baptis']['sts_baptis'] = 1;
				if($this->Baptis->save($this->request->data)){
					$id = $this->Baptis->id;
					$this->request->data['BaptisAnak']['id_baptis'] = $id;
					if($this->BaptisAnak->save($this->request->data)){
						$this->Flash->success(__("Sukses tambah data baptis"));
						return $this->redirect(array('action' => 'tambahBaptisAnak'));
					}
					return $this->redirect(array('action' => 'tambahBaptisAnak'));
				}
			}catch(\Exception $e){
					$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->getMessage()));
			}
		}else{

		}
	}

	public function tambahBaptisDewasa(){
		if($this->request->is('post')){
			try{
				$this->Baptis->create();

				$this->request->data['Baptis']['jenis_baptis'] = 'DEWASA';
				$this->request->data['Baptis']['sts_baptis'] = 1;
				if($this->Baptis->save($this->request->data)){
					$id = $this->Baptis->id;
					$this->request->data['BaptisDewasa']['id_baptis'] = $id;
					if($this->BaptisDewasa->save($this->request->data)){
						$this->Flash->success(__("Data Baptis berhasil disimpan"));
						return $this->redirect(array('action' => 'tambahBaptisDewasa'));
					}
					return $this->redirect(array('action' => 'tambahBaptisDewasa'));
				}
			}catch(\Exception $e){
					$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->getMessage()));
			}
		}else{

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
			try {
				if($this->Baptis->save($this->request->data)){
					$this->Flash->success(__('Data Baptis telah berhasil diubah.'));
				}else{
					$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'edit'));
		}
		else {
			$this->request->data = $this->Baptis->read(null, $id);
			unset($this->request->data['Umat']['password']);
		}
	}

	public function editBaptisAnak($id=null){
		if ($this->request->is('post') || $this->request->is('put')) {
			try {
				if($this->BaptisAnak->save($this->request->data)){
					$this->Flash->success(__('Data Baptis telah berhasil diubah.'));
				}else{
					$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'editBaptisAnak'));
		}
		else {
			$this->request->data = $this->BaptisAnak->read(null, $id);
			unset($this->request->data['Umat']['password']);
		}
	}

	public function editBaptisDiterima($id=null){
		if ($this->request->is('post') || $this->request->is('put')) {
			try {
				if($this->Baptis->save($this->request->data)){
					$this->Flash->success(__('Data Baptis telah berhasil diubah.'));
				}else{
					$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'editBaptisDiterima'));
		}
		else {
			$this->request->data = $this->Baptis->read(null, $id);
			unset($this->request->data['Umat']['password']);
		}
	}

	public function editBaptisDewasa($id=null){
		if ($this->request->is('post') || $this->request->is('put')) {
			try {
				if($this->BaptisDewasa->save($this->request->data)){
					$this->Flash->success(__('Data Baptis telah berhasil diubah.'));
				}else{
					$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'editBaptisDewasa'));
		}
		else {
			$this->request->data = $this->BaptisDewasa->read(null, $id);
			unset($this->request->data['Umat']['password']);
		}
	}

	public function editBaptisDarurat($id=null){
		if ($this->request->is('post') || $this->request->is('put')) {
			try {
				if($this->BaptisDarurat->save($this->request->data)){
					$this->Flash->success(__('Data Baptis telah berhasil diubah.'));
				}else{
					$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'editBaptisDarurat'));
		}
		else {
			$this->request->data = $this->BaptisDarurat->read(null, $id);
			unset($this->request->data['Umat']['password']);
		}
	}

	public function searchNama(){
			if ($this->request->is('ajax'))
			{
					$this->autoLayout = false;
					$this->autoRender = false;
					$results = $this->Umat->find('all', array('fields' => array('nama', 'id', 'jenis_kelamin', 'tgl_lahir', 'tmplahir',), 'conditions' => array('Umat.nama LIKE' => '%' . $_GET['nama'] . '%')));
					$response = array();
					$i = 0;
					foreach($results as $result){
							$response[$i]['nama'] = $result['Umat']['nama'];
							$i++;
					}

					echo json_encode($response);
			}
	}

	public function searchParoki(){
			if ($this->request->is('ajax'))
			{
					$this->autoLayout = false;
					$this->autoRender = false;
					$results = $this->Paroki->find('all', array('fields' => array('nama_paroki')));
					$response = array();
					$i = 0;
					foreach($results as $result){
							$response[$i]['nama'] = $result['Paroki']['nama_paroki'];
							$i++;
					}

					echo json_encode($response);
			}
	}

	public function findUmat(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Umat->find('first', array(
					'fields' => array('nama', 'id', 'jenis_kelamin', 'tgl_lahir', 'tmplahir', 'Baptis.tanggal', 'Baptis.tempat', 'Baptis.nama_baptis'),
					'conditions' => array('Umat.nama LIKE' => '%' . $_GET['nama'] . '%' ),
					'joins' 				=> array(
	 						array(
	 							'table'				=> 'baptises',
	 							'type'				=> 'left',
	 							'alias'				=> 'Baptis',
	 							'conditions'	=> 'Baptis.id_umat = Umat.id'
	 						),
	 				),
				));
				$i = 0;
				echo json_encode($results);
		}
	}

	public function searchKotaParoki(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Paroki->find('all', array('fields' => array('kota'), 'conditions' => array('Paroki.nama_paroki LIKE "%' . $_GET['paroki'] . '%" AND Paroki.kota LIKE "%' . $_GET['nama'] . '%"')));
				$response = array();
				$i = 0;
				foreach($results as $result){
						$response[$i]['nama'] = $result['Paroki']['kota'];
						$i++;
				}

				echo json_encode($response);
		}
	}
}
