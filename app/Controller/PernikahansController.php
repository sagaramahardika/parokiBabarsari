<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class PernikahansController extends AppController{
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
	public $uses = array('Pernikahan', 'Umat','Kk','Leveluser','Lingkungan','Wilayah','Paroki','Statuspernikahan');
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
			$rowuser = $this->Umat->find('all',array('conditions'=>array('Umat.id'=>$idTam)));
			$code_umat = substr($this->Session->read('Auth.User.kodeumat'), 0,11);

			$set = array(
				'limit' => 10,
				/*'join'=>array(

					),*/
				'conditions' => array(/*'Umat.id'=>'Pernikahan.umat_id',*/'Umat.kode_umat LIKE '=>$code_umat.'%',$conditions),
				'order' => array(
					'Pernikahan.id' => 'asc'
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
			$this->set('datas',$this->Paginator->paginate('Pernikahan'));
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

	 	// 	return json_encode($this->request->data);

			# code...
			try {
				$this->Pernikahan->create();
				if ($this->Pernikahan->save($this->request->data)){
					$idTam = $this->request->data['Pernikahan']['umat_id'];

					$row = $this->Umat->findById($idTam);

					$rowling = $this->Lingkungan->findById($row['Kk']['lingkungan_id']);

					$codeling = $rowling['Lingkungan']['code_lingkungan'];
					$idling = $rowling['Lingkungan']['id'];
					$total = $this->Lingkungan->find('all',array( 'fields'=>'jumlah_kk','conditions'=>array('Lingkungan.id'=>$idling)));
					$total= $total[0]['Lingkungan']['jumlah_kk']+1;

					$codekk=$codeling;
					if ($total < 10) {
						$codekk=$codekk.'00';
						# code...
					}elseif($total >9 && $total <100){
						$codekk=$codekk.'0';
					}
					$newidkk = null;
					if ($row['Umat']['id_hubkk'] != 1) {
						# code...
						$codekk = $codekk.$total;
						$rowkk = array();
						$rowkk['Kk']['code_kk'] = $codekk;
						$rowkk['Kk']['lingkungan_id'] = $idling;
						$rowkk['Kk']['nama_kk'] = $row['Umat']['nama'];
						$rowkk['Lingkungan']['jumlah_kk'] = $total;
						$this->Kk->save($rowkk);

						$this->Lingkungan->id = $idling;
						$this->Lingkungan->saveField('jumlah_kk',$total);
						$newidkk = $this->Kk->find('count')-1;
					}
					else{
						$newidkk = $row['Umat']['id_kk'];
					}

					$this->Umat->id = $idTam;
					$this->Umat->saveField('id_kk',$newidkk);
					$this->Umat->saveField('id_hubkk',1);
					$this->Umat->saveField('id_statuspernikahan',$this->request->data['statuspernikahan']);



					if ($this->request->data['Pernikahan']['pasangan_id'] == null) {
						# code...

					}else{
						$rowPasangan = array();

							# code...
						$idPas = $this->request->data['Pernikahan']['pasangan_id'];
						$rowPasangan = $this->Umat->findById($idPas);

						$this->Umat->id = $idPas;
						$this->Umat->saveField('id_kk',$newidkk);
						$this->Umat->saveField('id_hubkk',2);
						$this->Umat->saveField('id_statuspernikahan',$this->request->data['statuspernikahan']);



					}
					$this->Flash->success(__('Data pernikahan telah tersimpan.'));
					return $this->redirect(array('action' => 'index'));
				}
			} catch (PDOException $e) {
				$this->Flash->error(__('Data tidak dapat tersimpan. ' . $e->errorInfo[2]));
				return $this->redirect(array('action' => 'index'));
			}
		}
	}




	public function edit($id=null){


		if ($id) {
				# code...
			$this->set('nama',$this->Umat->getNamaPasangan());
		$idkk=$this->Umat->findById($id,array('Umat.id_kk'));
		$this->set('namaPas',$this->Umat->getIdPasangan($idkk['Umat']['id_kk']));
		$this->set('statusPer',$this->Statuspernikahan->getStatusEdit());
				if (!empty($this->request->data)){
					# code...
					try {
						if ($this->Pernikahan->save($this->request->data)) {


							$idTam = $this->request->data['Pernikahan']['umat_id'];
						$this->Umat->id = $idTam;
						$this->Umat->saveField('id_statuspernikahan',$this->request->data['statuspernikahan']);
							# code...
						if ($this->request->data['Pernikahan']['pasangan_id']) {
							# code...
							$this->Umat->id = $this->request->data['Pernikahan']['pasangan_id'];
						$this->Umat->saveField('id_statuspernikahan',$this->request->data['statuspernikahan']);

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
			}else{
				$this->redirect(array('action'=>'index'));
			}
	}


	public function findAll(){
				if ($this->request->is('ajax')) {


        $this->autoLayout = false;
        $this->autoRender = false;
         $idlingketualing = $this->Session->Read('Auth.User.idling');
        $results = $this->Umat->find('all', array('fields' => array('id', 'nama','jenis_kelamin'), 'conditions' => array('Kk.lingkungan_id'=>$idlingketualing,'Umat.nama LIKE "%'.$_GET['term'].'%"','OR'=>array('Umat.id_statuspernikahan'=>array(1,6,8,0)))));

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

	public function find(){
		if ($this->request->is('ajax')) {

	        $this->autoLayout = false;
	        $this->autoRender = false;

	        $tampung  = $this->Umat->find('all',array('recursive'=>3,'conditions'=>array('Umat.id'=>$_GET['idUmat'])));

			$idLingkungan = $tampung[0]['Kk']['lingkungan_id'];
			$idWilayah = $tampung[0]['Kk']['Lingkungan']['wilayah_id'];
			$idParoki = $tampung[0]['Kk']['Lingkungan']['Wilayah']['paroki_id'];

			$results =array();
			 $response = array();
			if ($_GET['tipe'] == 'ling') {
				$results = $this->Umat->find('all');
				$results = $this->Umat->find('all',array('fields' => array('id', 'nama'),'conditions'=>array('OR'=>array('Umat.id_statuspernikahan'=>array(1,6,8,0)),'Umat.nama LIKE "%'.$_GET['term'].'%"','NOT'=>array('Umat.jenis_kelamin'=>$_GET['gender']),'Kk.lingkungan_id'=>$idLingkungan)));
				# code...

				 $i = 0;
	        foreach($results as $result){
	        	 $response[$i]['id'] = $result['Umat']['id'];

	            $response[$i]['label'] = $result['Umat']['nama'];
	            $response[$i]['value'] = $result['Umat']['nama'];
	            $i++;
	            }
			}elseif($_GET['tipe'] == 'wil'){

				$results = $this->Umat->query('select umat.id,umat.nama from   (select x.id,x.nama, l.wilayah_id from (select u.id,u.nama,k.lingkungan_id from umats u, kks k where k.id = u.id_kk  AND  u.jenis_kelamin <> "'.$_GET['gender'].'" AND u.nama LIKE "%'.$_GET['term'].'%" AND (u.id_statuspernikahan = 0 OR u.id_statuspernikahan = 1 OR u.id_statuspernikahan = 12 OR u.id_statuspernikahan = 8)) x, lingkungans l where l.id = x.lingkungan_id)  umat where umat.wilayah_id = '.$idWilayah.' ORDER BY `umat`.`id` ASC');
				 $i = 0;
	        foreach($results as $result){
	        	 $response[$i]['id'] = $result['umat']['id'];

	            $response[$i]['label'] = $result['umat']['nama'];
	            $response[$i]['value'] = $result['umat']['nama'];
	            $i++;
			}


			}elseif ($_GET['tipe'] == 'par') {
				# code...
				$results = $this->Umat->query('select umat.id,umat.nama from (select y.id,y.nama,w.paroki_id from  (select x.id,x.nama, l.wilayah_id from (select u.id,u.nama,k.lingkungan_id from umats u, kks k where k.id = u.id_kk AND  u.jenis_kelamin <> "'.$_GET['gender'].'" AND u.nama LIKE "%'.$_GET['term'].'%" AND (u.id_statuspernikahan = 0 OR u.id_statuspernikahan = 1 OR u.id_statuspernikahan = 12 OR u.id_statuspernikahan = 8)) x, lingkungans l where l.id = x.lingkungan_id) y, wilayahs w where w.id = y.wilayah_id ) umat where umat.paroki_id ='.$idParoki.' ORDER BY `umat`.`id` ASC');
				$i = 0;
	        foreach($results as $result){
	        	 $response[$i]['id'] = $result['umat']['id'];

	            $response[$i]['label'] = $result['umat']['nama'];
	            $response[$i]['value'] = $result['umat']['nama'];
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

	 public function coba() {
		if ($this->request->is('ajax')) {

			//$namarow = $this->Umat->find('all',array('fields'=>array('nama'),'conditions'=>array('nama'=>$_GET['nama'])));
			$this->autoLayout = false;
			$this->autoRender = false;
			$response = array();

			if($_GET['nama']){
				$namarow = $this->Umat->find('all',array('fields'=>array('nama'),'conditions'=>array('nama'=>$_GET['nama'])));

				if (empty($namarow)) {
					$response[0]['status']='error';
					$response[0]['get']=$_GET['nama'];

				} else{
					$response[0]['status']='success';
					$response[0]['get']=$_GET['nama'];
				}

			} else {
				$response[0]['status']='error';
			}

			echo json_encode($response);
		}
  	}

}

 ?>
