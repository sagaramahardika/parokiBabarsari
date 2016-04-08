<?php 
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component','JsHelper');

class UmatsController extends AppController{
	
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
	public $uses = array('Kodeumataktif','Lingkungan','Umat','User','Bidangstudi','Pendidikan','Suku','Statussosial','Pekerjaan','Kk','Statusbabptis','Hubkk','Leveluser','Statuspernikahan','Tempattinggal','Keaktifanparoki','Keaktifangereja','Statuskekatolikan','Statusekonomi','Statuskesehatan');
	public $helpers = array('Flash');
	public $layout = 'default';

	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow( 'login','signup');
	}

	public function isAuthorized($umat) {
		if ($this->action === 'logout') {
			return true;
		}
		if (in_array($this->action, array('index', 'add', 'delete'))) {
			if (isset($umat['role']) && $umat['role'] === 'admin') {
				return true;
			}
			return false;
		} 
	}
	public function index(){
		$conditions = array();
		
		if (!empty($this->data) && $this->data['cari'] !== '') {
			$conditions = array(
						
							'jenis_kelamin LIKE ' => '%' . strtolower($this->data['cari']) . '%'
							
						
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
		//$passwordHasher = new BlowfishPasswordHasher();
		//$datas = $passwordHasher->check("pedro","$2a$10$4vswp2jmvxuLUIJ0NvFEPOgmgOC9wENzR0SZoRzfC4T88jcd9683e");
		//echo " ".$datas." ";
		$id = $this->Auth->user('id_umat');
		$code_kk = $this->Umat->query("SELECT kks.lingkungan_id from umats, kks WHERE umats.id = $id AND kks.id = umats.id_kk");
		//Debugger::dump($code_kk);
		$this->set('title_for_layout','Home');
		$this->Umat->recursive = 0;
			if($this->Auth->user('user_level') == 1){
				$idkk = $this->Umat->findById($this->Auth->user('id_umat'));
				$this->Paginator->settings = array(
				'limit'=>10,
				'conditions'=> array('Umat.id' =>$this->Auth->user('id_umat'),$conditions),
				'order'=>array(
					'Umat.id'=>'asc'));
			}else if($this->Auth->user('user_level')==5){
				$this->Paginator->settings = array(
				'limit'=>10,
				'conditions'=> array($conditions),
				'order'=>array(
					'Umat.id'=>'asc'));
			}else{
				$this->Paginator->settings = array(
				'limit'=>10,
				'conditions'=> array('Kk.lingkungan_id' =>$this->Session->read('Auth.User.idling'),$conditions),
				'order'=>array(
					'Umat.id'=>'asc'));
			}
		try{
			$this->set('datas',$this->Paginator->paginate('Umat'));
			$this->set('usrlvl', $this->Auth->user('user_level'));
			$this->set('nama', $this->Auth->user('nama'));
		}catch(NotFoundException $e){

		}
	}

	public function editAdmin($id=null){
		if($this->Auth->user('user_level') != 2 && $this->Auth->user('user_level')!=5){
			$this->redirect($this->Session->read('lastUrl'));
		}
		$this->Umat->id=$id;
		$this->set('pekerjaan', $this->Pekerjaan->getKerja());
		$this->set('pendidikan', $this->Pendidikan->getDidik());
		$this->set('jeniskelamin', $this->Umat->jeniskelamin());
		$this->set('hubkk', $this->Hubkk->getHubkk());
		$this->set('statustt', $this->Umat->statustt());
		$this->set('statuspindah', $this->Umat->statuspindah());
		$this->set('kematian', $this->Umat->statuskematian());
		if($this->Session->read('Auth.User.level') == 5)
			$this->set('kk', $this->Kk->find('list',array('fields'=>array('id','nama_kk'))));
		else
			$this->set('kk', $this->Kk->getKk($this->Session->read('Auth.User.idling')));
		$this->set('level', $this->Leveluser->getLevel());
		
		$this->set('statuspernikahan', $this->Statuspernikahan->getStatusPernikahan());
		$this->set('bidangstudi', $this->Bidangstudi->getBidangStudi());
		$this->set('suku', $this->Suku->getSuku());
		$this->set('tempattinggal', $this->Tempattinggal->getTempatTinggal());
		$this->set('keaktifanparoki', $this->Keaktifanparoki->getKeaktifanParoki());
		$this->set('keaktifangereja', $this->Keaktifangereja->getKeaktifanGereja());
		$this->set('statuskekatolikan', $this->Statuskekatolikan->statuskatolik());
		$this->set('statusekonomi', $this->Statusekonomi->getStatusEkonomi());
		$this->set('statuskesehatan', $this->Statuskesehatan->getStatusKesehatan());
		$this->set('statussosial', $this->Statussosial->getStatusSosial());

		if(!$this->Umat->exists()){
			throw new NotFoundException('Umat Tidak Valid');
		}
		if($this->request->is('post')){
			$idkk = array_search($this->request->data['Umat']['kk'], $this->Kk->getKk($this->Session->read('Auth.User.idling')));
			$this->request->data['Umat']['id_kk'] = $idkk;
			$idpend = array_search($this->request->data['Umat']['pendidikan'], $this->Pendidikan->getDidik());
			$this->request->data['Umat']['id_pendidikan'] = $idpend;
			$idbidstudi = array_search($this->request->data['Umat']['bidstudi'], $this->Bidangstudi->getBidangStudi());
			$this->request->data['Umat']['id_bidstudi'] = $idbidstudi;
			$idpekerjaan = array_search($this->request->data['Umat']['pekerjaan'], $this->Pekerjaan->getKerja());
			$this->request->data['Umat']['id_pekerjaan'] = $idpekerjaan;
			$idsuku = array_search($this->request->data['Umat']['suku'], $this->Suku->getSuku());
			$this->request->data['Umat']['id_suku'] = $idsuku;
			$idtempattinggal = array_search($this->request->data['Umat']['tempattinggal'], $this->Tempattinggal->getTempatTinggal());
			$this->request->data['Umat']['id_tempattinggal'] = $idtempattinggal;
			if($this->Umat->save($this->request->data)){
			$this->Umat->save($this->request->data);
			$this->Flash->success('Data berhasil diubah');
			$this->redirect(array('controller'=>'umats','action'=>'index'));
			} else{
				$this->Flash->error('Data tidak berhasil diupdate');
				$this->redirect(array('controller'=>'umats','action'=>'index'));
			}
		}else{
			$this->request->data=$this->Umat->read(null,$id);
		}
	}

	public function edit($id=null){
		if($id==null)
			$id =$this->Auth->user('id_umat');
		$umat = $this->Umat->findById($id);
		if($this->Session->read('Auth.User.idKK') != $umat['Umat']['id_kk']){
			//$this->Flash->success($this->Session->read('Auth.User.idKK'));	
			$this->redirect($this->Session->read('lastUrl'));
		}
		$this->set('pekerjaan', $this->Pekerjaan->getKerja());
		$this->set('pendidikan', $this->Pendidikan->getDidik());
		$this->set('statussosials',$this->Statussosial->find('list',array('fields'=>array('status'))));
		$this->set('suku', $this->Suku->getSuku());
		$this->set('bidangstudi', $this->Bidangstudi->getBidangStudi());
		if ($this->request->is('post') || $this->request->is('put')) {
			$idpend = array_search($this->request->data['Umat']['pendidikan'], $this->Pendidikan->getDidik());
			$this->request->data['Umat']['id_pendidikan'] = $idpend;
			$idbidstudi = array_search($this->request->data['Umat']['bidangstudi'], $this->Bidangstudi->getBidangStudi());
			$this->request->data['Umat']['id_bidstudi'] = $idbidstudi;
			$idpekerjaan = array_search($this->request->data['Umat']['pekerjaan'], $this->Pekerjaan->getKerja());
			$this->request->data['Umat']['id_pekerjaan'] = $idpekerjaan;
			$idsuku = array_search($this->request->data['Umat']['suku'], $this->Suku->getSuku());
			$this->request->data['Umat']['id_suku'] = $idsuku;
			if($id)
				$this->Umat->id = $id;
			else
				$this->Umat->id = $this->Auth->user('id');
			if (!empty($this->request->data['Umat']['file']['tmp_name'])) {
				$file = $this->request->data['Umat']['file'];
				$ext = substr(strtolower(strrchr($file['name'], '.')), 1);
				$fullfilename = md5($this->request->data['Umat']['name']) . '.' . $ext;
				$hasilupload = $this->__uploadfile($file, $ext, $fullfilename);

				if ($hasilupload) {
					$this->request->data['Umat']['filename'] =
						$hasilupload;
					$this->request->data['Umat']['filedir'] =
					   '/uploads/pp/thumbs/';
					$this->request->data['Umat']['mime_type'] =
						$file['type'];
				}
			}
			/*if($this->data['Umat']['password1'] || $this->data['Umat']['password2']){
				if (!($this->data['Umat']['password1'] ===
					$this->data['Umat']['password2'])) {
					$this->Flash->error(__('Passwords tidak cocok.', true));
					return;
				}else{
				$this->request->data['Umat']['password'] = $this->data['Umat']['password1'];
				
				}
			}*/
			try {
				if ($this->Umat->save($this->data['Umat'])) {
					$this->Session->write('Auth.User.nama',$this->data['Umat']['nama']);
					$this->Flash->success(__('User telah tersimpan.'));
					if ($this->Auth->user('user_level') === '1') {
						$this->redirect(array('action' => 'index'));
					} else {
						$this->redirect(array('action' => 'index'));
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
				$iduser = $this->Umat->findById($id);
				if (empty($iduser)) {
					$isFound = false;
				} else {
					$userid = $iduser['Umat']['id'];
				}
			}

			if ($isFound){
				$this->request->data = $this->Umat->read(null, $userid);
			} else {
				$this->Flash->error(__('User tidak ditemukan, silahkan dicoba lagi.'));
				if ($this->Auth->user('role') === 'admin') {
					$this->redirect(array('action' => 'index'));
				} else {
					$this->redirect(array('controller' => 'umats'));
				}
			}
		}
	}
	public function baptis(){
	/*	if($this->Auth->user('user_level') == 1){
			$this->redirect(array('action' => 'editBaptis'));
		}*/
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
		$this->Umat->recursive = 1;
		$id = $this->Auth->user('id');
		$code_kk = $this->Umat->query("SELECT kks.lingkungan_id from umats, kks WHERE umats.id = $id AND kks.id = umats.id_kk");
		if($this->Auth->user('user_level')==1){
			$this->Paginator->settings = array(
				'limit'=>10,
				'conditions'=> array('Umat.id' => $this->Auth->user('id_umat')),
				'order'=>array(
					'Umat.id'=>'asc'));
		}else if($this->Auth->user('user_level') == 2){
			$this->Paginator->settings = array(
				'limit'=>10,
				'conditions'=> array('Kk.lingkungan_id' =>$this->Session->read('Auth.User.idling'),$conditions),
				'order'=>array(
					'Umat.id'=>'asc'));
		}else if($this->Auth->user('user_level')==5){
				$this->Paginator->settings = array(
				'limit'=>10,
				'conditions'=> array($conditions),
				'order'=>array(
					'Umat.id'=>'asc'));
		}
		try{
			$this->set('usrlvl', $this->Auth->user('user_level'));
			$this->set('datas',$this->Paginator->paginate('Umat'));
		}catch(NotFoundException $e){

		}
	}

	public function editBaptis($id=null){
		$this->set('statusbaptises',$this->Statusbabptis->find('list',array('fields'=>array('status'),
			'order'=>array('Statusbabptis.status'=>'asc'))));
		
		if ($this->request->is('post') || $this->request->is('put')) {
			$this->Umat->id = $id;

			if($this->data["Umat"]["id_statusbaptis"] == 9 || $this->data["Umat"]["id_statusbaptis"] == 11){
				$this->request->data['Umat']['namabaptis'] = '';
				$this->request->data['Umat']['tmpbaptis'] = '';
				$this->request->data['Umat']['liberbap'] = '';
				$this->request->data['Umat']['tglbaptis'] = '';
				$this->request->data['Umat']['romobaptis'] = '';
			}
			try {
				if ($this->Umat->save($this->data['Umat'])) {
					$this->Flash->success(__('Data baptis telah diubah.'));
					if ($this->Auth->user('user_level') === '1') {
						$this->redirect(array('action' => 'baptis'));
					} else {
						$this->redirect(array('controller' => 'umats', 'action' => 'baptis'));
					}
				}
			} catch (PDOException $e) {
				$this->Flash->error(__('Baptis tidak dapat diubah. ' . $e->errorInfo[2]));
			}
		} else {
			$userid = $id;
			$isFound = true;
			if ($id == null) {
				if ($this->Auth->login()) {
					$userid = $this->Auth->user('id');
				}
			} else {
				$iduser = $this->Umat->findById($id);
				if (empty($iduser)) {
					$isFound = false;
				} else {
					$userid = $iduser['Umat']['id'];
				}
			}

			if ($isFound){
				$this->request->data = $this->Umat->read(null, $userid);
				unset($this->request->data['Umat']['password']);
			} else {
				$this->Flash->error(__('User tidak ditemukan, silahkan dicoba lagi.'));
				if ($this->Auth->user('role') === 'admin') {
					$this->redirect(array('action' => 'index'));
				} else {
					$this->redirect(array('controller' => 'umats', 'action'=>'baptis'));
				}
			}
		}
	}

		public function signup() {
		
		//$this->set('pernikahan', $this->Pendidikan->getDidik());
		$this->set('pekerjaan', $this->Pekerjaan->getKerja());
		$this->set('pendidikan', $this->Pendidikan->getDidik());
		$this->set('jeniskelamin', $this->Umat->jeniskelamin());
		$this->set('goldar', $this->Umat->golongandarah());
		$this->set('usern', $this->User->getUsername());
		
		if ($this->request->is('post')){
			$list = $this->User->find('list', array('fields' => array('username', 'id')));
			//if($list[$this->data['User']['username']])
				
			//	$this->Flash->error(__('Username sudah ada!', true));
			if (!($this->data['User']['password'] === $this->data['User']['password2'])) {
				$this->Flash->error(__('Passwords tidak cocok.', true));
				return;
			}

			$a = $this->request->data['User']['kodeumat'];
			$b = $this->request->data['User']['kodeaktivasi'];
			$ceks = $this->Kodeumataktif->findByKodeaktivasi($b);
			if($ceks && $ceks['Kodeumataktif']['kodeumat'] == $a && $ceks['Kodeumataktif']['aktif'] == 0){
				// try{
				// 	if($usern[$this->request->data['User']['username']] >= 0){
						$this->Kodeumataktif->id=$ceks['Kodeumataktif']['id'];
						$this->Kodeumataktif->saveField('aktif', 1);
						$zz = $this->Umat->findByKodeUmat($a);
						$idx = $zz['Umat']['id'];
						$this->request->data['User']['id_umat'] = $idx;
						try {
						$this->User->create();
						if ($this->User->save($this->request->data)){
							
							return $this->redirect(array('action' => 'index'));
							$this->Flash->success(__('SignUp berhasil'));
						}
						} catch (PDOException $e) {
						
						$this->Flash->error(__('User tidak dapat tersimpan. ' . $e->errorInfo[2]));
						}		
					}
				// } catch(Exception $e){
				// 	$this->Flash->error(__('Username tidak dapat digunakan'));
				// }

			//}
			else{
				$this->Flash->error(__('Kode yang dimasukkan salah'));
			}			
			// $cekusername = $this->data['Umat']['username'];
			// if($this->usern[$cekusername]){
			// 	$this->Flash->error(__('Username sudah terpakai', true));
			// 	return;
			// }


			//$this->request->data['Umat']['idhash'] =
			//	md5('UKDWjogja' . $this->data['Umat']['username']);

			
		}
	
}
	public function checkKk(){
		$nama = $_GET['name'];
			 if ($this->request->is('ajax')) {
			 	return json_encode(false);
			}
	}
	public function kelahiran($id=null){
		$id = $this->Auth->user('id');
		$this->set('kk', $this->Kk->getKk($this->Session->read('Auth.User.idling')));
		$this->set('goldar', $this->Umat->golongandarah());
		$this->set('jeniskelamin', $this->Umat->jeniskelamin());
		$kk = $this->Kk->getKk($this->Session->read('Auth.User.idling'));
		if($this->request->is('post')){
			$this->request->data['Umat']['id_statusbaptis'] = '11';
			$this->request->data['Umat']['id_kk'] = array_search($this->request->data['Umat']['test'],$kk);
			$lingkungan = $this->Lingkungan->findByCodeLingkungan($this->Session->read('Auth.User.codeling'));
			$kode_kk = $this->Kk->findById($this->request->data['Umat']['id_kk']);
			$juml_umat = $lingkungan['Lingkungan']['jumlah_umat'];
			$juml_umat+=1;

			if($juml_umat / 1000 >= 1)
				$fin =$juml_umat;
			else if($juml_umat / 100 >= 1)
				$fin ='0'.$juml_umat;
			else if($juml_umat / 10 >= 1)
				$fin ='00'.$juml_umat;
			else
				$fin ='000'.$juml_umat;

			$kode = $kode_kk['Kk']['code_kk'].$fin;
			$this->Lingkungan->id = $lingkungan['Lingkungan']['id'];
			$this->Lingkungan->saveField('jumlah_umat', $juml_umat);
			$this->request->data['Umat']['kode_umat'] = $kode;
			$this->request->data['Umat']['id_hubkk'] = '3';
			$this->request->data['Kodeumataktif']['kodeumat'] = $kode;
			$this->request->data['Kodeumataktif']['kodeaktivasi'] = md5('UKDWjogja' . $kode);
			echo $this->request->data['Umat']['id_kk'];
			$this->request->data['Umat']['id_pendidikan'] = '99';
			$this->request->data['Umat']['id_bidstudi'] = '99';
			$this->request->data['Umat']['id_pekerjaan'] = '101';
			$this->request->data['Umat']['id_suku'] = '99';
			$this->request->data['Umat']['id_tempattinggal'] = '99';
			$this->request->data['Umat']['id_statuspernikahan'] = '0';
			if($this->Kodeumataktif->save($this->data['Kodeumataktif'])){

			}
			if ($this->Umat->save($this->data['Umat'])) {
				$this->Flash->success('Kelahiran berhasil ditambah');
				$this->redirect(array('action' => 'index'));
			}else
			$this->Flash->error('Input kelahiran gagal');
		}
	}

    public function kelahiranss($id=null){
    	$this->set('bidangstudis',$this->Bidangstudi->find('list',array('fields'=>array('bidangstudi'))));
		if ($this->request->is('post') || $this->request->is('put')) {
			if (!empty($this->request->data['Umat']['file']['tmp_name'])) {
				$file = $this->request->data['Umat']['file'];
				$ext = substr(strtolower(strrchr($file['name'], '.')), 1);
				$fullfilename = md5($this->request->data['Umat']['name']) . '.' . $ext;
				$hasilupload = $this->__uploadfile($file, $ext, $fullfilename);

				if ($hasilupload) {
					$this->request->data['Umat']['filename'] =
						$hasilupload;
					$this->request->data['Umat']['filedir'] =
					   '/uploads/pp/thumbs/';
					$this->request->data['Umat']['mime_type'] =
						$file['type'];
				}
			}
			
			
			$this->request->data['Umat']['id_statusbaptis'] = '8';
			$this->request->data['Umat']['id_agama'] = '3';
			$this->request->data['Umat']['id_hubkk'] = '3';
			$this->request->data['Umat']['id_kk'] = $this->Auth->user('id_kk');
			$this->request->data['Umat']['id_statuspernikahan'] = '0';
			$this->request->data['Umat']['id_statusekonomi'] = '4';
			$this->request->data['Umat']['id_statuskesehatan'] = '9';
			$this->request->data['Umat']['id_statussosial'] = '5';
			$this->request->data['Umat']['id_suku'] = '22';
			$this->request->data['Umat']['id_pendidikan'] = '23';
			$this->request->data['Umat']['id_pekerjaan'] = '77';
			$this->request->data['Umat']['id_keaktifanparoki'] = '7';
			$this->request->data['Umat']['user_level'] = '0';
			$this->request->data['Umat']['id_tempattinggal'] = $this->Auth->user('id_tempattinggal');
			$this->request->data['Umat']['alamat'] = $this->Auth->user('alamat');
			$tgl = $this->request->data['Umat']['tgl_lahir']['month'].$this->request->data['Umat']['tgl_lahir']['day'].$this->request->data['Umat']['tgl_lahir']['year'];
			$this->request->data['Umat']['username'] = preg_replace('/\s+/','',$this->request->data["Umat"]['nama']).$tgl;
			$this->request->data['Umat']['password'] = preg_replace('/\s+/','',$this->request->data["Umat"]['nama']).$tgl;
			echo $this->request->data['Umat']['username'];
			try {
				if ($this->Umat->save($this->data['Umat'])) {
					$this->Flash->success(__('Kelahiran umat telah ditambahkan.'));
					if ($this->Auth->user('user_level') === '1') {
						$this->redirect(array('action' => 'index'));
					} else {
						$this->redirect(array('controller' => 'umats'));
					}
				}
			} catch (PDOException $e) {
				$this->Flash->error(__('User tidak dapat diupdate. ' . $e->errorInfo[2]));
			}
		} 
    }
    public function listnew(){
		$datas = $this->Umat->findAllByUserLevel('0');
		$this->set('datas', $datas);
	}
    public function terima($id=null){
		$this->request->onlyAllow('post');
		$this->Umat->id=$id;
		$this->Umat->saveField('user_level',1);
		$this->redirect(array('controller'=>'umats','action'=>'listnew'));
	}
	public function user(){
//		$this->redirect(array('controller'=>'umats','action'=>'kelahiran'));
		//Debugger::dump($this->data);
		
		$this->User->saveAll($this->request->data['Umat'], array('atomic' => true, 'validate' => 'first'));
	//	$this->User->saveAssociated($this->request->data['Umat']);
		$i=0;
		foreach ($this->data['Umat'] as $opt) {
//		$this->User->save($this->data['Umat'][$i]);

       
        echo $this->request->data['Umat'][$i]['username'].$i;
        $i++;
    	}
	}
public function lihataktivasi(){
		//$datas = $this->Umat->find('all');
		//$this->set('datas', $datas);
		$namau = $this->Umat->getNamaUmat();
		$conditions = array();		
		if (!empty($this->data) && $this->data['cari'] !== '') {
			
		$sss = $this->Umat->find('all', array('fields'=>'kode_umat', 'conditions'=>array('umat.nama LIKE ' => '%' . strtoupper($this->data['cari']) . '%')));
		
		
		$finarray = array();
		for($i = 0; $i < count($sss); $i++){
			$finarray[$i] = $sss[$i]['Umat']['kode_umat'];
		}

		//Debugger::dump($sss);
		//Debugger::dump(count($sss));
			$conditions = array(
							'kodeumataktif.kodeumat LIKE ' => '%' . $this->Session->read('Auth.User.codeling') . '%',
							'kodeumataktif.kodeumat ' =>  $finarray

							
						
					);
			$this->Session->write('conditions',$conditions);
			$this->Session->write('search', $this->data['cari']);
		} else {
		$conditions = array(
						
							'kodeumataktif.kodeumat LIKE ' => '%' . $this->Session->read('Auth.User.codeling') . '%'
							
						
			);
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

		$this->set('kodeu', $this->Umat->getKodeUmat());
		if($this->Auth->user('user_level')!=2 && $this->Auth->user('user_level')!= 5){
			$this->redirect($this->Session->read('lastUrl'));
		}
		
		$this->Paginator->settings = array(
			'limit'=>10,
			//'conditions'=> array('kodeumat' =>$Umat['Umat']['kodeumat'],$conditions),
			'conditions'=>$conditions,

			'order'=>array(
				'Umat.id'=>'asc'));

		try{
			$this->set('datas',$this->Paginator->paginate('Kodeumataktif'));
		}catch(NotFoundException $e){

		}
	}
	public function tambahjemaat(){
		if($this->Auth->user('user_level')!=2){
			$this->redirect($this->Session->read('lastUrl'));
		}
		$arrQ = array(
							
						  'N'    => 'Tidak',
						'Y'    => 'Ya', 
					);
		$this->set('tambahkk', $arrQ);
		$this->set('pekerjaan', $this->Pekerjaan->getKerja());
		$this->set('pendidikan', $this->Pendidikan->getDidik());
		$this->set('jeniskelamin', $this->Umat->jeniskelamin());
		$this->set('hubkk', $this->Hubkk->getHubkk());
		$this->set('statustt', $this->Umat->statustt());
		$this->set('statuspindah', $this->Umat->statuspindah());
		$this->set('kematian', $this->Umat->statuskematian());
		$this->set('kk', $this->Kk->getKk($this->Session->read('Auth.User.idling')));
		$this->set('level', $this->Leveluser->getLevel());
		$this->set('lingkungan', $this->Lingkungan->getLingkungan());
		$this->set('jeniskelamin', $this->Umat->jeniskelamin());
		$this->set('goldar', $this->Umat->golongandarah());
		
		$this->set('statuspernikahan', $this->Statuspernikahan->getStatusPernikahan());
		$this->set('bidangstudi', $this->Bidangstudi->getBidangStudi());
		$this->set('suku', $this->Suku->getSuku());
		$this->set('tempattinggal', $this->Tempattinggal->getTempatTinggal());
		$this->set('keaktifanparoki', $this->Keaktifanparoki->getKeaktifanParoki());
		$this->set('keaktifangereja', $this->Keaktifangereja->getKeaktifanGereja());
		$this->set('statuskekatolikan', $this->Statuskekatolikan->statuskatolik());
		$this->set('statusekonomi', $this->Statusekonomi->getStatusEkonomi());
		$this->set('statuskesehatan', $this->Statuskesehatan->getStatusKesehatan());
		$this->set('statussosial', $this->Statussosial->getStatusSosial());

		if ($this->request->is('post')){
			
			$qqq = $this->Kk->find('list', array('fields' => array('id', 'nama_kk')));
			
			//$aa = $this->request->data['Umat']['lingkungan'];
			//Debugger::dump($this->Session->read('Auth.User.codeling'));
			$idkk = array_search($this->request->data['Umat']['kk'], $this->Kk->getKk($this->Session->read('Auth.User.idling')));
			$this->request->data['Umat']['id_kk'] = $idkk;
			$idpend = array_search($this->request->data['Umat']['pendidikan'], $this->Pendidikan->getDidik());
			$this->request->data['Umat']['id_pendidikan'] = $idpend;
			$idbidstudi = array_search($this->request->data['Umat']['bidstudi'], $this->Bidangstudi->getBidangStudi());
			$this->request->data['Umat']['id_bidstudi'] = $idbidstudi;
			$idpekerjaan = array_search($this->request->data['Umat']['pekerjaan'], $this->Pekerjaan->getKerja());
			$this->request->data['Umat']['id_pekerjaan'] = $idpekerjaan;
			$idsuku = array_search($this->request->data['Umat']['suku'], $this->Suku->getSuku());
			$this->request->data['Umat']['id_suku'] = $idsuku;
			$idtempattinggal = array_search($this->request->data['Umat']['tempattinggal'], $this->Tempattinggal->getTempatTinggal());
			$this->request->data['Umat']['id_tempattinggal'] = $idtempattinggal;

			$aa = $this->Session->read('Auth.User.codeling');
			$zz = $this->Lingkungan->findByCodeLingkungan($aa);
			$cc = $zz['Lingkungan']['jumlah_umat'] + 1;

			$this->Lingkungan->id=$zz['Lingkungan']['id'];
			$this->Lingkungan->saveField('jumlah_umat',$cc);
			if($this->request->data['Umat']['tambahkk'] == "Y"){

				$gg = $zz['Lingkungan']['jumlah_kk'] + 1;
				if($gg / 100 >= 1)
					$fins = $aa . $gg;
				else if($gg / 10 >= 1)
					$fins = $aa .'0'.$gg;
				else
					$fins = $aa .'00'.$gg;
			}
			else{
				$mm = $this->Kk->findByNamaKk($qqq[$this->request->data['Umat']['id_kk']]);
				$hh = $zz['Lingkungan']['code_lingkungan'].substr($mm['Kk']['code_kk'], -3, 3);
				$fins = $hh;
			}

			if($cc / 1000 >= 1)
				$fin = $fins . $cc;
			else if($cc / 100 >= 1)
				$fin = $fins .'0'.$cc;
			else if($cc / 10 >= 1)
				$fin = $fins .'00'.$cc;
			else
				$fin = $fins .'000'.$cc;

			if($this->request->data['Umat']['tambahkk'] == "Y"){
				$this->request->data['Kk']['code_kk'] = $fins;
				$this->request->data['Kk']['lingkungan_id'] = $zz['Lingkungan']['id'];
				$this->request->data['Kk']['nama_kk'] = $this->request->data['Umat']['nama'];

				$this->Lingkungan->id=$zz['Lingkungan']['id'];
				$this->Lingkungan->saveField('jumlah_kk',$gg);
			}

			$this->request->data['Umat']['kode_umat'] = $fin;
			$this->request->data['Kodeumataktif']['kodeumat'] = $fin;
			$this->request->data['Kodeumataktif']['kodeaktivasi'] = md5('UKDWjogja' . $fin);
			
			// $cekusername = $this->data['Umat']['username'];
			// if($this->usern[$cekusername]){
			// 	$this->Flash->error(__('Username sudah terpakai', true));
			// 	return;
			// }


			//$this->request->data['Umat']['idhash'] =
			//	md5('UKDWjogja' . $this->data['Umat']['username']);


			if($this->request->data['Umat']['tambahkk'] == "Y"){
				try {
					$this->Kk->create();
					if ($this->Kk->save($this->request->data)){
						$this->Flash->success(__('Jemaat berhasil ditambahkan'));
						$is = $this->Kk->findByCodeKk($this->request->data['Kk']['code_kk']);
						$this->request->data['Umat']['id_kk'] = $is['Kk']['id'];
					}
				} catch (PDOException $e) {
					
					$this->Flash->error(__('User tidak dapat tersimpan. ' . $e->errorInfo[2]));
				}
			}

			try {
				$this->Kodeumataktif->create();
				if ($this->Kodeumataktif->save($this->request->data)){
					$this->Flash->success(__('Jemaat berhasil ditambahkan'));
									}
			} catch (PDOException $e) {
				
				$this->Flash->error(__('User tidak dapat tersimpan. ' . $e->errorInfo[2]));
			}



			try {
				$this->Umat->create();
				if ($this->Umat->save($this->request->data)){
					$this->Flash->success(__('Jemaat berhasil ditambahkan'));
					return $this->redirect(array('action' => 'index'));
				}
			} catch (PDOException $e) {
				
				$this->Flash->error(__('User tidak dapat tersimpan. ' . $e->errorInfo[2]));
			}

			

			// try {
			// 	$this->User->create();
			// 	if ($this->User->save($this->request->data)){
			// 		$this->Flash->success(__('User telah tersimpan.'));
			// 		return $this->redirect(array('action' => 'index'));
			// 	}
			// } catch (PDOException $e) {
				
			// 	$this->Flash->error(__('User tidak dapat tersimpan. ' . $e->errorInfo[2]));
			// }
		}
	}
}
?>