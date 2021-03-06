<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class PernikahansController extends AppController{
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
	public $uses = array('Pernikahan', 'Baptis', 'Umat','Kk','Leveluser','Lingkungan','Wilayah','Paroki','Statuspernikahan', 'Setting');
	public $helpers = array('Flash');
	public $layout = 'default';

	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow( 'login');
	}

	public function index(){
		$userRole = $this->Auth->user('user_level');
		$idTam =  $this->Auth->user('id_umat');
		$this->set('namaUmat',$this->Umat->getNamaPasangan());
		$this->set('idStatusUser',$this->Umat->findById($this->Auth->user('id'),array('Umat.id_statuspernikahan')));
		$this->set('statusPer',$this->Statuspernikahan->getStatusPernikahan());


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

		//$this->Umat->recursive = 3;
		$set = array();
		if ($userRole == 1) {
			$set = array(
				'limit' => 10,

				'conditions' => array('OR'=>array( 'Pernikahan.umat_id '=>$idTam,'Pernikahan.pasangan_id '=>$idTam),$conditions),
				'order' => array(
					'Pernikahan.id' => 'asc'
				)
			);
			# code...
		}else if ($userRole == 2) {
			# code...
			/*$userKk = $this->Session->Read('Auth.User.idKK');*/
			/*$userKk = $this->Auth->user('id_kk');
			$idlingkungan = $this->Kk->getIdLingkungan($userKk);*/
			// $rowuser = $this->Umat->find('all',array('conditions'=>array('Umat.id'=>$idTam)));
			// $code_umat = substr($this->Session->read('Auth.User.kodeumat'), 0,11);

			// $set = array(
			// 	'limit' => 10,
				/*'join'=>array(

					),*/
			// 	'conditions' => array(/*'Umat.id'=>'Pernikahan.umat_id',*/'Umat.kode_umat LIKE '=>$code_umat.'%',$conditions),
			// 	'order' => array(
			// 		'Pernikahan.id' => 'asc'
			// 	)
			// );

			// $userKk = $this->Session->Read('Auth.User.idKK');
			// $idlingkungan = $this->Kk->getIdLingkungan($userKk);

			$set = array(
				'limit' => 10,
			
				'conditions' => array($conditions),
				'order' => array(
					'Pernikahans.id' => 'asc'
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
			$this->set('datas', $this->Paginator->paginate('Pernikahan'));
		} catch (NotFoundException $e) {
			$this->redirect(array('action'=>'index'));
		}

		/*if (!empty($this->request->data)){
					# code...
					try {
						if (condition) {
							$this->Pernikahan->save($this->request->data);
							# code...
							$this->Flash->success(__('User telah berhasil diubah.'));
						}

					} catch (PDOExeption $pdoe) {
						$this->Flash->error(__('User tidak dapat diupdate. ' . $e->errorInfo[2]));
					}
				}*/
	}

	public function tambah(){
/*		$this->set('nama_parokis',$this->Paroki->getParoki());*/

		$this->set('statusPer', $this->Statuspernikahan->getStatus());

		if ($this->request->is('post')) {
			// $this->autoRender = false;

	 		// echo json_encode($this->request->data);

			# code...
			try {
				// $myData = $this->request->data;
				// $myData['kode_stasi'] = 1;
				// $this->Pernikahan->create();
				// $this->Pernikahan->save($myData);

			// 	echo $myData['kode_stasi'] . ", " . $myData['kode_LM'] .  ", " . $myData['no'] . ", 
			// " . $myData['halaman'];

				// TESTING
				// $idTam = $this->request->data['Pernikahan']['umat_id'];
				// Debugger::dump($this->Umat->findById($idTam));


				
				if ($this->Pernikahan->save($this->request->data)){
					// Get Data Umat 
					$idTam = $this->request->data['Pernikahan']['umat_id'];
					$row = $this->Umat->findById($idTam);					
					$rowling = $this->Lingkungan->findById($row['Kk']['lingkungan_id']);
					$codeling = $rowling['Lingkungan']['code_lingkungan'];

					// Generate nomor KK
					$kkLingkunganTerakhir = $this->Kk->find('first', array(
				        'conditions' => array('Kk.code_kk LIKE "' .$codeling . '%"'),
				        'order' => array('Kk.code_kk' => 'desc')
				    ));

				    $newkk = $kkLingkunganTerakhir['Kk']['code_kk'] + 1;
					
					$idling = $rowling['Lingkungan']['id'];

					// $total = $this->Lingkungan->find('all',array(
					// 	'fields'=>'jumlah_kk',
					// 	'conditions'=>array('Lingkungan.id'=>$idling)
					// 	)
					// );

					$hubkk1 = null;
					$hubkk2 = null;
					if ($this->request->data['Pernikahan']['pasangan_id'] == null) {
						$hubkk1 = 1;
					} else {
						$umat1 = $this->Umat->findById($this->request->data['Pernikahan']['umat_id']);

						if ($umat1['Umat']['jenis_kelamin'] == "L") {
							if ($umat1['Umat']['id_statuskekatolikan'] != 0) {
								$hubkk1 = 1;
								$hubkk2 = 2;
							}
							else {
								$hubkk1 = 2;
								$hubkk2 = 1;
							}
						} else {
							$umat1 = $this->Umat->findById($this->request->data['Pernikahan']['pasangan_id']);

							if ($umat1['Umat']['id_statuskekatolikan'] != 0) {
								$hubkk1 = 2;
								$hubkk2 = 1;
							}
							else {
								$hubkk1 = 1;
								$hubkk2 = 2;
							}
						}
						
					}
					

					// $total= $total[0]['Lingkungan']['jumlah_kk']+1;

					// $codekk=$codeling;
					// if ($total < 10) {
					// 	$codekk=$codekk.'00';
					// 	# code...
					// }elseif($total >9 && $total <100){
					// 	$codekk=$codekk.'0';
					// }
					$newidkk = null;
					if ($row['Umat']['id_hubkk'] != 1) {
						# code...
						// $codekk = $codekk.$total;
						$rowkk = array();
						$rowkk['Kk']['code_kk'] = $newkk;
						$rowkk['Kk']['lingkungan_id'] = $idling;
						if ($hubkk1 == 1) {
							$rowkk['Kk']['nama_kk'] = $row['Umat']['nama'];
						} else {
							$idPaszxc = $this->request->data['Pernikahan']['pasangan_id'];
							$rowPasangan = $this->Umat->findById($idPaszxc);

							$rowkk['Kk']['nama_kk'] = $rowPasangan['Umat']['nama'];
						}
						
						// $rowkk['Lingkungan']['jumlah_kk'] = $total;
						$this->Kk->save($rowkk);

						// $this->Lingkungan->id = $idling;
						// $this->Lingkungan->saveField('jumlah_kk',$total);
						$getLastIdKK = $this->Kk->find('first', array(
					        'order' => array('Kk.id' => 'desc')
					    	)
					    );
					    $newidkk = $getLastIdKK['Kk']['id'];
					}
					else{
						$newidkk = $row['Umat']['id_kk'];
					}

					$this->Umat->id = $idTam;
					$this->Umat->saveField('id_kk', $newidkk);
					$this->Umat->saveField('id_hubkk', $hubkk1);
					$this->Umat->saveField('tempatnikah', $this->request->data['Pernikahan']['tmppernikahan']);
					$this->Umat->saveField('kotamenikah', $this->request->data['Pernikahan']['kota']);
					$this->Umat->saveField('tglnikah', $this->request->data['Pernikahan']['tglpernikahan']);
					$this->Umat->saveField('id_hubkk', $hubkk1);
					$this->Umat->saveField('id_statuspernikahan', $this->request->data['statuspernikahan']);

					if ($this->request->data['Pernikahan']['pasangan_id'] == null) {
						# code...

					}else{
						$rowPasangan = array();

							# code...
						$idPas = $this->request->data['Pernikahan']['pasangan_id'];
						$rowPasangan = $this->Umat->findById($idPas);

						$this->Umat->id = $idPas;
						$this->Umat->saveField('id_kk',$newidkk);
						$this->Umat->saveField('id_hubkk',$hubkk2);
						$this->Umat->saveField('id_statuspernikahan',$this->request->data['statuspernikahan']);
						$this->Umat->saveField('kotamenikah', $this->request->data['Pernikahan']['kota']);
						$this->Umat->saveField('tempatnikah', $this->request->data['Pernikahan']['tmppernikahan']);
						$this->Umat->saveField('tglnikah', $this->request->data['Pernikahan']['tglpernikahan']);

					}
					$this->Flash->success(('Data pernikahan telah tersimpan.'));
					return $this->redirect(array('action' => 'index'));
				}
			} catch (PDOException $e) {
				$this->Flash->error(('Data tidak dapat tersimpan. ' . $e->errorInfo[2]));
				return $this->redirect(array('action' => 'index'));
			}
		}
	}

	public function edit($id=null){
		if ($id) {
			# code...
			$this->set('nama',$this->Umat->getNamaPasangan());
			$idkk = $this->Umat->findById($id,array('Umat.id_kk'));
			$this->set('namaPas',$this->Umat->getIdPasangan($idkk['Umat']['id_kk']));
			$this->set('statusPer',$this->Statuspernikahan->getStatusEdit());
			if (!empty($this->request->data)){
				# code...
				try {
					if ($this->Pernikahan->save($this->request->data)) {

						$idTam = $this->request->data['Pernikahan']['umat_id'];
						$this->Umat->id = $idTam;
						$this->Umat->saveField('id_statuspernikahan', $this->request->data['statuspernikahan']);
						$this->Umat->saveField('kotamenikah', $this->request->data['Pernikahan']['kota']);
						$this->Umat->saveField('tempatnikah', $this->request->data['Pernikahan']['tmppernikahan']);
						$this->Umat->saveField('tglnikah', $this->request->data['Pernikahan']['tglpernikahan']);

						# code...
						if ($this->request->data['Pernikahan']['pasangan_id']) {
						# code...
							$this->Umat->id = $this->request->data['Pernikahan']['pasangan_id'];
							$this->Umat->saveField('id_statuspernikahan', $this->request->data['statuspernikahan']);
							$this->Umat->saveField('kotamenikah', $this->request->data['Pernikahan']['kota']);
							$this->Umat->saveField('tempatnikah', $this->request->data['Pernikahan']['tmppernikahan']);
							$this->Umat->saveField('tglnikah', $this->request->data['Pernikahan']['tglpernikahan']);

						}
						$this->Flash->success(__('Data Pernikahan telah berhasil diubah.'));
					}

				} catch (PDOExeption $pdoe) {
					$this->Flash->error(__('Data tidak dapat diupdate. ' . $e->errorInfo[2]));
				}

				$this->redirect(array('action'=>'index'));
			}else{
				$this->request->data = $this->Pernikahan->read(null,$id);
			}

		} else {
			$this->redirect(array('action'=>'index'));
		}
	}


	public function findAll(){
		if ($this->request->is('ajax')) {
			$this->autoLayout = false;
			$this->autoRender = false;
			// $idlingketualing = $this->Session->Read('Auth.User.idling');
			// $results = $this->Umat->find('all', array('fields' => array('id', 'nama','jenis_kelamin'), 'conditions' => array('Kk.lingkungan_id'=>$idlingketualing,'Umat.nama LIKE "%'.$_GET['term'].'%"','OR'=>array('Umat.id_statuspernikahan'=>array(1,6,8,0)))));
			$results = $this->Umat->find('all', 
				array(
					'fields' => array('DISTINCT id', 'nama','jenis_kelamin'), 
					'conditions' => array(
						'Umat.nama LIKE "%'.$_GET['term'].'%"',
						'Umat.id_statuspernikahan' => array(0, 1, 6, 7, 8)
						),
					'limit' => 10
				));
			$response = array();
			$i = 0;
			foreach($results as $result){
				$response[$i]['id'] = $result['Umat']['id'];
				$response[$i]['jenis_kelamin'] = $result['Umat']['jenis_kelamin'];
				$response[$i]['label'] = $result['Umat']['nama'];
				$response[$i]['value'] = $result['Umat']['nama'];
				$i++;
			}
			echo json_encode($response);
		}
	}

	public function findNonUmat(){
		if ($this->request->is('ajax')) {
			$this->autoLayout = false;
			$this->autoRender = false;
			$results = $this->Baptis->find('all', 
				array(
					'fields' => array('nama_diri', 'ayah', 'ibu', 'tempat_lahir', 'tanggal_lahir'), 
					'conditions' => array(
						'id_umat' => 0,						
						'NOT' => array('Baptis.jenis_kelamin' => $_GET['gender']),				
						'nama_diri LIKE "%'.$_GET['term'].'%"'
						),
					'limit' => 10
				)
			);

			$response = array();
			$i = 0;
			foreach($results as $result){
				$response[$i]['value'] = $result['Baptis']['nama_diri'];
				$response[$i]['ayah'] = $result['Baptis']['ayah'];
				$response[$i]['ibu'] = $result['Baptis']['ibu'];
				$response[$i]['tempat_lahir'] = $result['Baptis']['tempat_lahir'];
				$response[$i]['tanggal_lahir'] = $result['Baptis']['tanggal_lahir'];
				$i++;
			}
			echo json_encode($response);
		}
	}

	public function dataNonUmat(){
		if ($this->request->is('ajax'))
		{
				$this->autoLayout = false;
				$this->autoRender = false;
				$results = $this->Baptis->find('first', array(
					'fields' => array('ayah', 'ibu', 'tempat_lahir', 'tanggal_lahir'),
					'conditions' => array(
						'Baptis.nama_diri LIKE' => '%' . $_GET['nama'] . '%',
						'Baptis.id_umat ' => 0
						),
				));

				echo json_encode($results);
		}
	}


	public function find(){
		if ($this->request->is('ajax')) {
	        $this->autoLayout = false;
	        $this->autoRender = false;

	        $tampung = $this->Umat->find('all',array('recursive'=>3,'conditions'=>array('Umat.id'=>$_GET['idUmat'])));

			$idLingkungan = $tampung[0]['Kk']['lingkungan_id'];
			$idWilayah = $tampung[0]['Kk']['Lingkungan']['wilayah_id'];
			$idParoki  = $tampung[0]['Kk']['Lingkungan']['Wilayah']['paroki_id'];

			$results  = array();
			$response = array();
			if ($_GET['tipe'] == 'ling') {
				//$results = $this->Umat->find('all');
				$results = $this->Umat->find('all',array(
					'fields' => array('id', 'nama', 'nama_ayah', 'nama_ibu'),
					'conditions'=>array(
						'OR' => array('Umat.id_statuspernikahan'=>array(1,6,7,8,0)),
						'Umat.nama LIKE "%'.$_GET['term'].'%"',
						'NOT'=> array('Umat.jenis_kelamin' => $_GET['gender']),
						'Kk.lingkungan_id'=>$idLingkungan),
					'limit' => 10
					)
				);
				# code...

				$i = 0;
		        foreach($results as $result){
		        	$response[$i]['id'] = $result['Umat']['id'];
		            $response[$i]['label'] = $result['Umat']['nama'];
		            $response[$i]['value'] = $result['Umat']['nama'];
		            $response[$i]['ayah'] = $result['Umat']['nama_ayah'];
		            $response[$i]['ibu'] = $result['Umat']['nama_ibu'];
		            $i++;
	            }
			} elseif ($_GET['tipe'] == 'wil'){
				$results = $this->Umat->query('select umat.id, umat.nama, umat.nama_ayah, umat.nama_ibu from (select x.id,x.nama, l.wilayah_id from (select u.id,u.nama,k.lingkungan_id from umats u, kks k where k.id = u.id_kk  AND  u.jenis_kelamin <> "'.$_GET['gender'].'" AND u.nama LIKE "%'.$_GET['term'].'%" AND (u.id_statuspernikahan = 0 OR u.id_statuspernikahan = 1 OR u.id_statuspernikahan = 6 OR u.id_statuspernikahan = 7 OR u.id_statuspernikahan = 8)) x, lingkungans l where l.id = x.lingkungan_id)  umat where umat.wilayah_id = '.$idWilayah.' ORDER BY `umat`.`id` ASC LIMIT 10');
				$i = 0;
		        foreach($results as $result){
		        	$response[$i]['id'] = $result['Umat']['id'];
		            $response[$i]['label'] = $result['Umat']['nama'];
		            $response[$i]['value'] = $result['Umat']['nama'];
		            $response[$i]['ayah'] = $result['Umat']['nama_ayah'];
		            $response[$i]['ibu'] = $result['Umat']['nama_ibu'];
		            $i++;
				}
			} elseif ($_GET['tipe'] == 'par') {
				# code...
				$results = $this->Umat->query('select umat.id,umat.nama, umat.nama_ayah, umat.nama_ibu from (select y.id,y.nama,w.paroki_id from (select x.id,x.nama, l.wilayah_id from (select u.id,u.nama,k.lingkungan_id from umats u, kks k where k.id = u.id_kk AND  u.jenis_kelamin <> "'.$_GET['gender'].'" AND u.nama LIKE "%'.$_GET['term'].'%" AND (u.id_statuspernikahan = 0 OR u.id_statuspernikahan = 1 OR u.id_statuspernikahan = 6 OR u.id_statuspernikahan = 7 OR u.id_statuspernikahan = 8)) x, lingkungans l where l.id = x.lingkungan_id) y, wilayahs w where w.id = y.wilayah_id ) umat where umat.paroki_id ='.$idParoki.' ORDER BY `umat`.`id` ASC LIMIT 10');

				$i = 0;
		        foreach($results as $result){
		        	$response[$i]['id'] = $result['Umat']['id'];
		            $response[$i]['label'] = $result['Umat']['nama'];
		            $response[$i]['value'] = $result['Umat']['nama'];
		            $response[$i]['ayah'] = $result['Umat']['nama_ayah'];
		            $response[$i]['ibu'] = $result['Umat']['nama_ibu'];
		            $i++;
	            }
				//$results = $this->Umat->find('all',array('fields' => array('id', 'nama'),'conditions'=>array('Umat.nama LIKE "%'.$_GET['term'].'%"','NOT'=>array('Umat.jenis_kelamin'=>$_GET['gender']),'Kk.lingkungan_id'=>$idWilayah)));
			}

	        //$results = $this->Umat->find('all', array('fields' => array('id', 'nama'), 'conditions' => array('Umat.nama LIKE "%'.$_GET['term'].'%"','NOT'=>array('Umat.jenis_kelamin'=>$_GET['gender']))));
	        echo json_encode($response);
		}
	}

	public function view($id=null){
		if ($id) {
			# code...
			$this->set('nama',$this->Umat->getNamaPasangan());
			$this->set('status',$this->Statuspernikahan->getStatusPernikahan());
			$this->request->data = $this->Pernikahan->read(null,$id);
		}else{
			$this->redirect(array('action'=>'index'));
		}
	}

	 // public function coba() {
		// if ($this->request->is('ajax')) {

		// 	//$namarow = $this->Umat->find('all',array('fields'=>array('nama'),'conditions'=>array('nama'=>$_GET['nama'])));
		// 	$this->autoLayout = false;
		// 	$this->autoRender = false;
		// 	$response = array();

		// 	if($_GET['nama']){
		// 		$namarow = $this->Umat->find('all',array('fields'=>array('nama'),'conditions'=>array('nama'=>$_GET['nama'])));

		// 		if (empty($namarow)) {
		// 			$response[0]['status']='error';
		// 			$response[0]['get']=$_GET['nama'];

		// 		} else{
		// 			$response[0]['status']='success';
		// 			$response[0]['get']=$_GET['nama'];
		// 		}

		// 	} else {
		// 		$response[0]['status']='error';
		// 	}

		// 	echo json_encode($response);
		// }
  // 	}

  	public function viewPDF(){
		App::import('Vendor', 'autoload');
		App::import('Vendor', 'HTML2PDF', array('file' => 'html2pdf'.DS.'html2pdf.class.php'));
		$this->autoRender = false;
		$this->layout = false;
		$id = $this->params['pass'][0];
		$pernikahan = $this->Pernikahan->findById($id);

		$umat1 = $this->Umat->findById($pernikahan['Pernikahan']['umat_id']);

		// $ortuUmat1 = $this->Umat->query('SELECT id, id_hubkk, nama FROM umats uu WHERE uu.id_kk = (SELECT id_kk FROM umats u WHERE u.id = "'.$pernikahan['Pernikahan']['umat_id'].'") AND uu.id <> "'.$pernikahan['Pernikahan']['umat_id'].'"');

		$umat1['nama_diri'] = "";
		$umat2['nama_diri'] = "";

		if (strpos($umat1['Umat']['nama'], ',') !== false) {
		    $pecah = explode(",", $umat1['Umat']['nama']);
		    $umat1['nama_diri'] = $pecah[1] . " " . $pecah[0];
		} else {
			$umat1['nama_diri'] = $umat1['Umat']['nama'];
		}

		$umat1['nama_ayah'] = null;
		$umat1['nama_ibu'] = null;

		// foreach ($ortuUmat1 as $anggota) {
		// 	if ($anggota['uu']['id_hubkk'] == 1) {
		// 		$umat1['nama_ayah'] = $anggota['uu']['nama'];
		// 	}
		// 	else if ($anggota['uu']['id_hubkk'] == 2) {
		// 		$umat1['nama_ibu'] = $anggota['uu']['nama'];
		// 	} 
		// }
		
		$umat2 = NULL;
		$umat2['nama_ayah'] = null;
		$umat2['nama_ibu'] = null;
		$umat2['bukan_umat'] = null;

		$isUmat = false;

		$ditukar = false;

		if ($pernikahan['Pernikahan']['pasangan_id'] != NULL) {
			$isUmat = true;
			$umat2['bukan_umat'] = 2;

			$umat2 = $this->Umat->findById($pernikahan['Pernikahan']['pasangan_id']);
			$ortuUmat2 = $this->Umat->query('SELECT id, id_hubkk, nama FROM umats uu WHERE uu.id_kk = (SELECT id_kk FROM umats u WHERE u.id = "'.$pernikahan['Pernikahan']['pasangan_id'].'") AND uu.id <> "'.$pernikahan['Pernikahan']['pasangan_id'].'"');

			foreach ($ortuUmat2 as $anggota) {
				if ($anggota['uu']['id_hubkk'] == 1) {
					$umat2['nama_ayah'] = $anggota['uu']['nama'];
				}
				else if ($anggota['uu']['id_hubkk'] == 2) {
					$umat2['nama_ibu'] = $anggota['uu']['nama'];
				} 
			}

			if (strpos($umat2['Umat']['nama'], ',') !== false) {
			    $pecah = explode(",", $umat2['Umat']['nama']);
			    $umat2['nama_diri'] = $pecah[1] . " " . $pecah[0];
			} else {
				$umat2['nama_diri'] = $umat2['Umat']['nama'];
			}
		} else {
			$isUmat = false;
			$umat2['bukan_umat'] = 1;
			$umat2['nama_diri'] = $pernikahan['Pernikahan']['nm_pasangan'];
		}

		if($umat1['Umat']['jenis_kelamin'] == "P") {
			$ditukar = true;
			$umatTamp = $umat1;
			$umat1 = $umat2;
			$umat2 = $umatTamp;
		}

		$setting = $this->Setting->findByKeySetting('pernikahan');

		$this->set(compact('pernikahan', 'setting', 'umat1', 'umat2', 'isUmat', 'ditukar'));
		$view_output = $this->render('view_pdf');
	    $html2pdf = new HTML2PDF('P','A4','en', true, 'UTF-8',  array(7, 7, 10, 10));
	    $html2pdf->pdf->SetAuthor('a');
	    $html2pdf->pdf->SetTitle('Pernikahan');
	    $html2pdf->pdf->SetSubject('a');
	    $html2pdf->pdf->SetKeywords('a');
	    $html2pdf->pdf->SetProtection(array('print'), '');//allow only view/print
	    $html2pdf->WriteHTML($view_output);
	    $html2pdf->Output('pdf/test.pdf', 'I');
	}
}

 ?>
