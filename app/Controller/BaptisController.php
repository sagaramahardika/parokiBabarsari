<?php
//App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class BaptisController extends AppController{
	public $components = array('Flash','Paginator');
	public $uses = array('Baptis','Umat', 'Statusbaptis', 'Paroki', 'BaptisDarurat', 'BaptisAnak', 'BaptisDewasa', 'Krisma', 'Pernikahan');
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
		$this->set('totalBaptisAnak', $this->Baptis->find('all', array('fields' => array('count(Baptis.id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis like "ANAK"'))));
		$this->set('totalBaptisDiterima', $this->Baptis->find('all', array('fields' => array('count(Baptis.id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis like "DITERIMA"'))));
		$this->set('totalBaptisDewasa', $this->Baptis->find('all', array('fields' => array('count(Baptis.id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis like "DEWASA"'))));
		$this->set('totalBaptisDarurat', $this->Baptis->find('all', array('fields' => array('count(Baptis.id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis like "DARURAT"'))));
		$this->set('totalBaptis', $this->Baptis->find('all', array('fields' => array('count(Baptis.id)   AS ctotal'), 'conditions' => array(''))));
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
				if($this->request->data['Baptis']['id_umat'] != 0){
					$umat = $this->Umat->read(null, $this->request->data['Baptis']['id_umat']);
					$umat['Umat']['id_statusbaptis'] = 7;
					$this->Umat->save($umat);
				}
				if($this->Baptis->save($this->request->data)){
					$id = $this->Baptis->id;
					$this->Flash->success(__("Sukses tambah data baptis"));
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
						if($this->request->data['Baptis']['id_umat'] != 0){
							$umat = $this->Umat->read(null, $this->request->data['Baptis']['id_umat']);
							$umat['Umat']['id_statusbaptis'] = 8;
							$this->Umat->save($umat);
						}
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
						if($this->request->data['Baptis']['id_umat'] != 0){
							$umat = $this->Umat->read(null, $this->request->data['Baptis']['id_umat']);
							$umat['Umat']['id_statusbaptis'] = 1;
							$this->Umat->save($umat);
						}
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
						if($this->request->data['Baptis']['id_umat'] != 0){
							$umat = $this->Umat->read(null, $this->request->data['Baptis']['id_umat']);
							if($this->request->data['BaptisDewasa']['agama'] == 'ISLAM'){
								$umat['Umat']['id_statusbaptis'] = 3;
							}else if($this->request->data['BaptisDewasa']['agama'] == 'HINDU'){
								$umat['Umat']['id_statusbaptis'] = 4;
							}else if($this->request->data['BaptisDewasa']['agama'] == 'BUDHA'){
								$umat['Umat']['id_statusbaptis'] = 5;
							}else if($this->request->data['BaptisDewasa']['agama'] == 'KONGHUCU'){
								$umat['Umat']['id_statusbaptis'] = 6;
							}else if($this->request->data['BaptisDewasa']['agama'] == 'KRISTEN'){
								$umat['Umat']['id_statusbaptis'] = 7;
							}else{
								$umat['Umat']['id_statusbaptis'] = 8;
							}

							$this->Umat->save($umat);
						}
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
			return $this->redirect(array('action' => 'edit', $id));
		}
		else {
			$this->request->data = $this->Baptis->read(null, $id);
		}
	}

	public function editBaptisAnak($id=null){
		if ($this->request->is('post') || $this->request->is('put')) {
			//var_dump($this->request->data);/*
			try {
				if($this->Baptis->save($this->request->data)){
					if($this->BaptisAnak->save($this->request->data)){
						$this->Flash->success(__("Sukses ubah data baptis"));
					}
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'editBaptisAnak', $id));//*/
		}
		else {
			$this->request->data = $this->Baptis->read(null, $id);
		}
	}

	public function editBaptisDiterima($id=null){
		if ($this->request->is('post') || $this->request->is('put')) {
			try {
				if($this->Baptis->save($this->request->data)){
					$this->Flash->success(__("Sukses ubah data baptis"));
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'editBaptisDiterima', $id));
		}
		else {
			$this->request->data = $this->Baptis->read(null, $id);
		}
	}

	public function editBaptisDewasa($id=null){
		if ($this->request->is('post') || $this->request->is('put')) {
			try {
				if($this->Baptis->save($this->request->data)){
					if($this->BaptisDewasa->save($this->request->data)){
						$this->Flash->success(__("Sukses ubah data baptis"));
					}
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'editBaptisDewasa', $id));
		}
		else {
			$this->request->data = $this->Baptis->read(null, $id);
		}
	}

	public function editBaptisDarurat($id=null){
		if ($this->request->is('post') || $this->request->is('put')) {
			try {
				if($this->Baptis->save($this->request->data)){
					if($this->BaptisDarurat->save($this->request->data)){
						$this->Flash->success(__("Sukses ubah data baptis"));
					}
				}
			} catch (PDOExeption $pdoe) {
				$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
			return $this->redirect(array('action' => 'editBaptisDarurat', $id));
		}
		else {
			$this->request->data = $this->Baptis->read(null, $id);
		}
	}

	public function viewPDF(){
		App::import('Vendor', 'autoload');
		App::import('Vendor', 'HTML2PDF', array('file' => 'html2pdf'.DS.'html2pdf.class.php'));
		$this->autoRender = false;
		$this->layout = false;
		$id = $this->params['pass'][0];
		$baptis = $this->Baptis->findById($id);
		$krisma = $this->Krisma->findByIdUmat($baptis['Umat']['id']);

		// Fungsi get riwayat nikah (TglNikah sama Nama Pasangan)

		$hubKKpasangan = 0;

		if ($baptis['Umat']['id_hubkk'] == 1) {
			$hubKKpasangan = 2;
		} else if($baptis['Umat']['id_hubkk'] == 2) {
			$hubKKpasangan = 1;
		}

		$riwayatPernikahan = $this->Umat->find('first', array(
			'fields' => array('nama', 'tglnikah', 'kotamenikah', 'tempatnikah'),
			'conditions' => array('Umat.id_kk' => $baptis['Umat']['id_kk'], 'Umat.id_hubkk', 'Umat.id_hubkk' => $hubKKpasangan)
		));

		$namaPasangan = '-';
		$tanggalMenikah = '-';
		$kotaMenikah = '-';
		$tempatMenikah = '-';
		if($riwayatPernikahan != null){
			$namaPasangan =	$riwayatPernikahan['Umat']['nama'];
			$tanggalMenikah = $riwayatPernikahan['Umat']['tglnikah'];
			$kotaMenikah = $riwayatPernikahan['Umat']['kotamenikah'];
			$tempatMenikah = $riwayatPernikahan['Umat']['tempatnikah'];
		}


		// NOTE: Belom di test

		$this->set(compact('baptis', 'namaPasangan', 'tanggalMenikah', 'kotaMenikah', 'tempatMenikah'));
		$this->set(compact('krisma'));
		$this->set('pernikahan', $riwayatPernikahan);
		$view_output = $this->render('view_pdf');
	    $html2pdf = new HTML2PDF('P','A4','en', true, 'UTF-8',  array(7, 7, 10, 10));
	    $html2pdf->pdf->SetAuthor('a');
	    $html2pdf->pdf->SetTitle('Baptis');
	    $html2pdf->pdf->SetSubject('a');
	    $html2pdf->pdf->SetKeywords('a');
	    $html2pdf->pdf->SetProtection(array('print'), '');//allow only view/print
	    $html2pdf->WriteHTML($view_output);
	    $html2pdf->Output('pdf/test.pdf', 'I');
	}

	public function searchNama(){
			if ($this->request->is('ajax'))
			{
					$this->autoLayout = false;
					$this->autoRender = false;
					$results = $this->Umat->find('all',
						array(
							'fields' => array('nama', 'id', 'jenis_kelamin', 'tgl_lahir', 'tmplahir',), 'conditions' => array('Umat.nama LIKE' => '%' . $_GET['nama'] . '%', 'id_statusbaptis' => 9)
						)
					);
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
					'fields' => array('id_kk', 'id_hubkk', 'nama', 'id', 'jenis_kelamin', 'tgl_lahir', 'tmplahir', 'Baptis.tanggal', 'Baptis.tempat', 'Baptis.nama_baptis'),
					'conditions' => array('Umat.nama LIKE' => '%' . $_GET['nama'] . '%'),
					'joins' 				=> array(
	 						array(
	 							'table'				=> 'baptises',
	 							'type'				=> 'left',
	 							'alias'				=> 'Baptis',
	 							'conditions'	=> 'Baptis.id_umat = Umat.id'
	 						),
	 				),
				));



				$anggotaKeluarga = $this->Umat->query('SELECT id, kode_umat, id_hubkk, nama, alamat FROM umats uu WHERE uu.id_kk = (SELECT id_kk FROM umats u WHERE u.nama = "'.$_GET['nama'].'") AND uu.nama <> "'.$_GET['nama'].'"');


				$results['nama_ayah'] = null;
				$results['id_ayah'] = null;
				$results['nama_ibu'] = null;
				$results['id_ibu'] = null;

				foreach ($anggotaKeluarga as $anggota) {
					if ($anggota['uu']['id_hubkk'] == 1) {
						$results['nama_ayah'] = $anggota['uu']['nama'];
						$results['id_ayah'] = $anggota['uu']['id'];
					}
					else if ($anggota['uu']['id_hubkk'] == 2) {
						$results['nama_ibu'] = $anggota['uu']['nama'];
						$results['id_ibu'] = $anggota['uu']['id'];
					}
				}

				echo json_encode($results);
		}
	}

	public function jumlahTotal(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Baptis->find('all', array('fields' => array('sum(id)   AS ctotal'), 'conditions' => ''));
				echo json_encode($results);
		}
	}

	public function jumlahBaptisAnak(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Baptis->find('all', array('fields' => array('sum(id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis = ANAK')));
				echo json_encode($results);
		}
	}

	public function jumlahBaptisDewasa(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Baptis->find('all', array('fields' => array('sum(id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis = DEWASA')));
				echo json_encode($results);
		}
	}

	public function jumlahBaptisDarurat(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Baptis->find('all', array('fields' => array('sum(id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis = DARURAT')));
				echo json_encode($results);
		}
	}

	public function jumlahBaptisDiterima(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Baptis->find('all', array('fields' => array('sum(id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis = DITERIMA')));
				echo json_encode($results);
		}
	}

	public function jumlahBaptisLainnya(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Baptis->find('all', array('fields' => array('sum(id)   AS ctotal'), 'conditions' => array('Baptis.jenis_baptis = ANAK')));
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
