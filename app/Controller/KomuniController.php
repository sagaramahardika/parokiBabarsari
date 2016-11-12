<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');

class KomuniController extends AppController{
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
	public $uses = array('Umat','Leveluser','Kk', 'Komuni', 'Baptis');
	public $helpers = array('Flash');
	public $layout = 'default';
	public $name = 'Komuni';


	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow( 'login');
	}

	public function index(){

		$userRole = $this->Auth->user('user_level');
		$idTam =  $this->Auth->user('id_umat');
		$this->set('idStatusKomuni', $this->Umat->findById($this->Auth->user('id'), array('Umat.stskomuni')));

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
		//$set = array();
		/*if ($userRole == 1) {


			$set = array(
				'limit' => 20,

				'conditions' => array('Umat.id '=> $idTam, $conditions),
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
		*/
		$this->Paginator->settings = array(
			'limit'=>10,
			'conditions'=>array($conditions),
			'order'=>array('Umat.id'=>'asc')
		);

		try {
			$this->set('datas', $this->Paginator->paginate('Komuni'));
		} catch (NotFoundException $e) {
			$this->redirect(array('action'=>'index'));
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

	public function findUmat(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Umat->find('first', array(
					'fields' => array('nama', 'id', 'jenis_kelamin', 'nama_ayah', 'nama_ibu', 'tgl_lahir', 'tmplahir', 'Baptis.tanggal', 'Baptis.tempat', 'Baptis.nama_baptis', 'Baptis.liberbap'),
					'conditions' => array('Umat.nama LIKE' => '%' . $_GET['nama'] . '%' ),
				));


				// $anggotaKeluarga = $this->Umat->query('SELECT id, kode_umat, id_hubkk, nama, alamat FROM umats uu WHERE uu.id_kk = (SELECT id_kk FROM umats u WHERE u.nama = "'.$_GET['nama'].'") AND uu.nama <> "'.$_GET['nama'].'"');

				$results['nama_ayah'] = $results['Umat']['nama_ayah'];
				$result['nama_ibu'] = $results['Umat']['nama_ibu'];

				// $results['nama_ayah'] = null;
				// $results['id_ayah'] = null;
				// $results['nama_ibu'] = null;
				// $results['id_ibu'] = null;
				// $results['alamat_orangtua'] = null;

				// foreach ($anggotaKeluarga as $anggota) {
				// 	if ($anggota['uu']['id_hubkk'] == 1) {
				// 		$results['nama_ayah'] = $anggota['uu']['nama'];
				// 		$results['id_ayah'] = $anggota['uu']['id'];
				// 		$results['alamat_orangtua'] = $anggota['uu']['alamat'];
				// 	}
				// 	else if ($anggota['uu']['id_hubkk'] == 2) {
				// 		$results['nama_ibu'] = $anggota['uu']['nama'];
				// 		$results['id_ibu'] = $anggota['uu']['id'];
				// 		$results['alamat_orangtua'] = $anggota['uu']['alamat'];
				// 	}
				// }

				echo json_encode($results);
		}
	}

	public function tambah(){

		if ($this->request->is('post')) {
			try{
				//$nama = $this->request->data['Umat']['nama'];
				/*$id_umat = $this->Umat->find('first', array('fields' => array('id'), 'conditions' => array('Umat.nama LIKE' => '%' . $nama . '%')))['Umat']['id'];
				if($this->request->data['Komuni']['id_umat'] != $id_umat){
					$this->request->data['Komuni']['id_umat'] = $id_umat;
				}*/
				if($this->request->data['Komuni']['id_umat']){
					$this->request->data['Komuni']['nama'] = null;
					$this->request->data['Komuni']['nama_baptis'] = null;
					$this->request->data['Komuni']['tempat_lahir'] = null;
					$this->request->data['Komuni']['tanggal_lahir'] = null;
					$this->request->data['Komuni']['tempat_baptis'] = null;
					$this->request->data['Komuni']['tanggal_baptis'] = null;
					$this->request->data['Komuni']['liberbap'] = null;
					$this->request->data['Komuni']['jenis_kelamin'] = null;
					$this->request->data['Komuni']['ayah'] = null;
					$this->request->data['Komuni']['ibu'] = null;
					$this->request->data['Komuni']['alamat_orangtua'] = null;
					$this->request->data['Komuni']['no_telp_orangtua'] = null;
				}
				$this->request->data['Komuni']['sts_komuni'] = 1;
				//print_r($this->request->data);
				$this->Komuni->create();
				if($this->Komuni->save($this->request->data['Komuni'])){
					$this->Flash->success(__('Data komuni telah tersimpan.'));
					return $this->redirect(array('action' => 'tambah'));
				}

			}catch(\Exception $e){
					$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->getMessage()));
			}
		}
	}

	public function edit($id=null){
		if ($id) {
			if($this->request->is('post')){
				try {
						if($this->data["Umat"]["stskomuni"] == 0 ){
							$this->request->data['Umat']['tmpkomuni'] = '';
							$this->request->data['Umat']['tglkomuni'] = '';
						}

						$this->Komuni->save($this->request->data);
						$this->Flash->success(__('Data komuni telah berhasil diubah.'));


				} catch (PDOExeption $pdoe) {
					$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
				}
				return $this->redirect(array('action' => 'edit', $id));
			}else{
				$this->request->data = $this->Komuni->read(null,$id);
			}
		}else{
			$this->redirect(array('action'=>'index'));
		}
	}

	public function delete(){
		if ($this->request->is('post')) {
			if (!empty($this->request->data)){
				try {
						$id = $this->request->data['Komuni']['id'];

						$result = $this->Komuni->Delete($id);

						$this->Flash->success(__('Data komuni telah berhasil dihapus.'));

				} catch (PDOExeption $pdoe) {
					$this->Flash->error(__('data tidak dapat dihapus. ' . $e->errorInfo[2]));
				}
				$this->redirect(array('action'=>'index'));
			}
		}
	}

}

 ?>
