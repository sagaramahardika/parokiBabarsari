<?php
class PengurapansController extends AppController {
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash');
 	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow('login');
	}

	public function index() {
		$conditions = array();

		if (!empty($this->data) && $this->data['cari'] !== '') {
			$conditions = array(
				'nama_penerima LIKE ' => '%' . strtolower($this->data['cari']) . '%'
			);
		}

		$set = array(
			'limit' => 10,
			'conditions' => array($conditions),
			'order' => array(
				'Pengurapan.id' => 'asc'
			)
		);

		$this->Paginator->settings = $set;

		try {
			$this->set('datas', $this->Paginator->paginate('Pengurapan'));
		} catch (NotFoundException $e) {
			$this->redirect(array('action'=>'index'));
		}
	}

	public function tambah() {
		if ($this->request->is('post')) {
			try {		
				if ($this->Pengurapan->save($this->request->data)){
					$this->Flash->success(('Data pengurapan telah tersimpan.'));
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
			if (!empty($this->request->data)){
			# code...
				try {
					if ($this->Pengurapan->save($this->request->data)) {
						// $idTam = $this->request->data['Pernikahan']['umat_id'];
						// $this->Umat->id = $idTam;
						// $this->Umat->saveField('id_statuspernikahan',$this->request->data['statuspernikahan']);
						# code...
						// if ($this->request->data['Pengurapan']['pasangan_id']) {
						// 	# code...
						// 	$this->Umat->id = $this->request->data['Pengurapan']['pasangan_id'];
						// 	$this->Umat->saveField('id_statuspernikahan',$this->request->data['statuspernikahan']);

						// }

						$this->Flash->success(__('Data Pengurapan telah berhasil diubah.'));
					}

				} catch (PDOExeption $pdoe) {
					$this->Flash->error(__('Data tidak dapat diupdate. ' . $e->errorInfo[2]));
				}

				$this->redirect(array('action'=>'index'));
			} else {
				$this->request->data = $this->Pengurapan->read(null,$id);
			}
		} else {
			$this->redirect(array('action'=>'index'));
		}
	}

	public function view($id=null){
		if ($id) {
			// # code...
			// $this->set('nama',$this->Umat->getNamaPasangan());
			// $this->set('status',$this->Statuspernikahan->getStatusPernikahan());
			$this->request->data = $this->Pengurapan->read(null,$id);
		} else {
			$this->redirect(array('action'=>'index'));
		}
	}
}
