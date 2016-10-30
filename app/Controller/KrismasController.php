<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class KrismasController extends AppController{
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
	public $uses = array('Umat','Kk','Leveluser','Lingkungan','Wilayah','Paroki', 'Krisma');
	public $helpers = array('Flash');
	public $layout = 'default';

public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow( 'login');
	}
	public function index(){
		/*$this->set('idStatusKrisma',$this->Umat->findById($this->Auth->user('id'),array('Umat.stskrisma')));
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
		/*if ($userRole == 1) {
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
		$this->set('datas',$this->Paginator->paginate('Krisma'));

		} catch (NotFoundException $e) {
			$this->redirect(array('action'=>'index'));
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
		$this->Krisma->recursive = 1;

		$this->Paginator->settings = array(
			'limit'=>10,
			'conditions'=>array($conditions),
			'order'=>array(
				'Krisma.id'=>'asc'));
		try{
			$this->set('usrlvl', $this->Auth->user('user_level'));
			$this->set('datas',$this->Paginator->paginate('Krisma'));
		}catch(NotFoundException $e)
		{}

	}

	public function tambah(){
			//$idTam =  $this->Auth->user('id');
		if ($this->request->is('post')) {
				# code...
				try {
					if ($this->Krisma->save($this->request->data)){
						$this->request->data['Krisma']['kode_lb'] = $this->request->data['Krisma']['kode_lb'] + $this->request->data['Krisma']['no'];
						$this->Krisma->save($this->request->data);
						$this->Flash->success(__('data krisma telah tersimpan.'));
						//return $this->redirect(array('action' => 'index'));
					}
				} catch (PDOException $e) {
					$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->errorInfo[2]));
				}
      }
	}

	public function newTambah(){
			//$idTam =  $this->Auth->user('id');
		if ($this->request->is('post')) {
				# code...
				try {
					if($this->request->data['Krisma']['id_umat']){
						$this->request->data['Krisma']['nama_diri'] = null;
						$this->request->data['Krisma']['nama_baptis'] = null;
						$this->request->data['Krisma']['tempat_lahir'] = null;
						$this->request->data['Krisma']['tanggal_lahir'] = null;
						$this->request->data['Krisma']['tempat_baptis'] = null;
						$this->request->data['Krisma']['tanggal_baptis'] = null;
						$this->request->data['Krisma']['liberbap'] = null;
						$this->request->data['Krisma']['no_telp_orangtua'] = null;
					}

					if ($this->Krisma->save($this->request->data)){
						$this->Krisma->save($this->request->data);

						$this->Flash->success(__('data new krisma telah tersimpan.'));
						return $this->redirect(array('action' => 'newRead'));
					}
				} catch (PDOException $e) {
					$this->Flash->error(__('data tidak dapat tersimpan. ' . $e->errorInfo[2]));
				}
      }
	}

	public function newEdit(){
		if($this->request->data){
			try {
				if($this->request->data['Krisma']['id_umat']){
					$this->request->data['Krisma']['nama_diri'] = null;
					$this->request->data['Krisma']['nama_baptis'] = null;
					$this->request->data['Krisma']['tempat_lahir'] = null;
					$this->request->data['Krisma']['tanggal_lahir'] = null;
					$this->request->data['Krisma']['tempat_baptis'] = null;
					$this->request->data['Krisma']['tanggal_baptis'] = null;
					$this->request->data['Krisma']['liberbap'] = null;
					$this->request->data['Krisma']['no_telp_orangtua'] = null;
				}

				$updateKrisma = $this->request->data;

				if($this->Krisma->save($updateKrisma))
				{
					$this->Flash->success(__('data krisma telah berhasil diubah.'));
					return $this->redirect(array('action' => 'newRead'));
				}


						} catch (PDOExeption $pdoe) {
							$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
						}
		} else{
			$id = $this->params['pass'][0];
			$krisma = $this->Krisma->findById($id);
			$this->set(compact('krisma'));
		}
	}

	public function viewDetail(){
		$id = $this->params['pass'][0];
		$krisma = $this->Krisma->findById($id);
		$this->set(compact('krisma'));
	}

	public function viewPDF(){
		App::import('Vendor', 'autoload');
		App::import('Vendor', 'HTML2PDF', array('file' => 'html2pdf'.DS.'html2pdf.class.php'));
		$this->autoRender = false;
		$this->layout = false;
		$id = $this->params['pass'][0];
		$krisma = $this->Krisma->findById($id);
		$post = $this->request->data;
		$this->set(compact('krisma'));
		$this->set(compact('post'));
		$view_output = $this->render('view_pdf');
    $html2pdf = new HTML2PDF('P','A4','en', true, 'UTF-8',  array(7, 7, 10, 10));
    $html2pdf->pdf->SetAuthor('a');
    $html2pdf->pdf->SetTitle($krisma['Krisma']['nama_diri']);
    $html2pdf->pdf->SetSubject('a');
    $html2pdf->pdf->SetKeywords('a');
    $html2pdf->pdf->SetProtection(array('print'), '');//allow only view/print
    $html2pdf->WriteHTML($view_output);
    $html2pdf->Output('pdf/test.pdf', 'I');
	}

	public function delete($id){
		$this->autoLayout = false;
		$this->autoRender = false;
		$this->Krisma->Delete($id);
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

	public function findAll(){
			if ($this->request->is('ajax'))
			{
					$this->autoLayout = false;
					$this->autoRender = false;
					$results = $this->Umat->find('all', array('fields' => array('nama', 'tmplahir'), 'conditions' => array('Umat.nama LIKE' => '%' . $_GET['nama'] . '%')));
					$response = array();
					$i = 0;
					foreach($results as $result){
							$response[$i]['nama'] = $result['Umat']['nama'];
							$response[$i]['tmp_lahir'] = $result['Umat']['tmplahir'];
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
					'fields' => array('nama', 'id', 'jenis_kelamin', 'tgl_lahir', 'tmplahir', 'tmpkomuni', 'tglkomuni', 'alamat', 'tlp', 'Baptis.tanggal', 'Baptis.tempat', 'Baptis.nama_baptis', 'Baptis.liberbap'),
					'conditions' => array('Umat.nama LIKE' => '%' . $_GET['nama'] . '%' ),
				));


				$anggotaKeluarga = $this->Umat->query('SELECT id, kode_umat, id_hubkk, nama, alamat FROM umats uu WHERE uu.id_kk = (SELECT id_kk FROM umats u WHERE u.nama = "'.$_GET['nama'].'") AND uu.nama <> "'.$_GET['nama'].'"');

				$results['nama_ayah'] = null;
				$results['id_ayah'] = null;
				$results['nama_ibu'] = null;
				$results['id_ibu'] = null;
				$results['alamat_orangtua'] = null;

				foreach ($anggotaKeluarga as $anggota) {
					if ($anggota['uu']['id_hubkk'] == 1) {
						$results['nama_ayah'] = $anggota['uu']['nama'];
						$results['id_ayah'] = $anggota['uu']['id'];
						$results['alamat_orangtua'] = $anggota['uu']['alamat'];
					}
					else if ($anggota['uu']['id_hubkk'] == 2) {
						$results['nama_ibu'] = $anggota['uu']['nama'];
						$results['id_ibu'] = $anggota['uu']['id'];
						$results['alamat_orangtua'] = $anggota['uu']['alamat'];
					}
				}

				echo json_encode($results);
		}
	}

	public function find(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Umat->findByNama($_GET['nama']);
				$response = array();
				$response['nama'] = $results['Umat']['nama'];
				$response['tmp_lahir'] = $results['Umat']['tmplahir'];
				$response['tggl_lahir'] = $results['Umat']['tgl_lahir'];
				$response['nama_baptis'] = $results['Umat']['namabaptis'];
				$response['tmp_baptis'] = $results['Umat']['tmpbaptis'];
				$response['tggl_baptis'] = $results['Umat']['tglbaptis'];
				$response['tmp_komuni'] = $results['Umat']['tmpkomuni'];
				$response['tggl_komuni'] = $results['Umat']['tglkomuni'];
				$response['alamat_diri'] = $results['Umat']['alamat'];
				$response['no_hp_diri'] = $results['Umat']['tlp'];

				echo json_encode($response);
		}
	}
}

 ?>
