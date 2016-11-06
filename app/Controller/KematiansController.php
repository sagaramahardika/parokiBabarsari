<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class KematiansController extends AppController{
    public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image', 'RequestHandler');
    public $uses = array('Umat', 'Kematian', 'KematianSakramen');
	  public $helpers = array('Flash', 'Js');
	  public $layout = 'default';

    public function index()
    {
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
      $this->Kematian->recursive = 1;

      $this->Paginator->settings = array(
        'limit'=>10,
        'conditions'=>array($conditions),
        'order'=>array(
          'Kematian.id_kematian'=>'asc'));
      try{
        $this->set('usrlvl', $this->Auth->user('user_level'));
        $this->set('datas',$this->Paginator->paginate('Kematian'));
      }catch(NotFoundException $e)
      {}
    }

    public function tambah()
    {
        if ($this->request->is('post'))
        {
            $this->Kematian->create();
            if ($this->Kematian->save($this->request->data))
            {
                $this->Flash->success('Data Kematian telah tersimpan');
                return $this->redirect(array('action' => 'newRead'));
            }
        }
    }

    public function newTambah()
    {
        if ($this->request->is('post'))
        {
            if($this->request->data['Kematian']['id_umat']){
              $this->request->data['Kematian']['nama_diri'] = null;
              $this->request->data['Kematian']['nama_baptis'] = null;
              $this->request->data['Kematian']['tempat_lahir'] = null;
              $this->request->data['Kematian']['tanggal_lahir'] = null;
              $this->request->data['Kematian']['tempat_baptis'] = null;
              $this->request->data['Kematian']['tanggal_baptis'] = null;
              $this->request->data['Kematian']['buku_baptis'] = null;
            }

            if ($this->Kematian->save($this->request->data))
  						$this->Kematian->save($this->request->data);

              //print_r($this->request->data['KematianSakramen']);
              //echo count($this->request->data['KematianSakramen']['nama_sakramen']);

            for ($i = 0; $i< count($this->request->data['KematianSakramen']['nama_sakramen']); $i++) {
              $item = array(
                'id_kematian'         => $this->Kematian->id,
                'nama_sakramen'       => $this->request->data['KematianSakramen']['nama_sakramen'][$i],
                'pelayan_sakramen'    => $this->request->data['KematianSakramen']['pelayan_sakramen'][$i]
              );

              $this->KematianSakramen->create();
              $this->KematianSakramen->save($item);
            }
            $this->Flash->success(__('data kematian telah berhasil disimpan.'));
  					return $this->redirect(array('action' => 'index'));
        }
    }

    public function newEdit(){
      if ($this->request->is('post'))
      {
          if($this->request->data['Kematian']['id_umat']){
            $this->request->data['Kematian']['nama_diri'] = null;
            $this->request->data['Kematian']['nama_baptis'] = null;
            $this->request->data['Kematian']['tempat_lahir'] = null;
            $this->request->data['Kematian']['tanggal_lahir'] = null;
            $this->request->data['Kematian']['tempat_baptis'] = null;
            $this->request->data['Kematian']['tanggal_baptis'] = null;
            $this->request->data['Kematian']['buku_baptis'] = null;
          }

          if ($this->Kematian->save($this->request->data))
            $this->Kematian->save($this->request->data);

            //print_r($this->request->data['KematianSakramen']);
            //echo count($this->request->data['KematianSakramen']['nama_sakramen']);

          for ($i = 0; $i< count($this->request->data['KematianSakramen']['nama_sakramen']); $i++) {
            if($this->request->data['KematianSakramen']['id'][$i]){
              $item = array(
                'id'                  => $this->request->data['KematianSakramen']['id'][$i],
                'id_kematian'         => $this->request->data['Kematian']['id'],
                'nama_sakramen'       => $this->request->data['KematianSakramen']['nama_sakramen'][$i],
                'pelayan_sakramen'    => $this->request->data['KematianSakramen']['pelayan_sakramen'][$i]
              );
            } else{
              $item = array(
                'id_kematian'         => $this->request->data['Kematian']['id'],
                'nama_sakramen'       => $this->request->data['KematianSakramen']['nama_sakramen'][$i],
                'pelayan_sakramen'    => $this->request->data['KematianSakramen']['pelayan_sakramen'][$i]
              );
              $this->KematianSakramen->create();
            }

            $this->KematianSakramen->save($item);
          }
          $this->Flash->success(__('data kematian telah berhasil disimpan.'));
          return $this->redirect(array('action' => 'index'));
      } else{
        $id = $this->params['pass'][0];
    		$kematian = $this->Kematian->findById($id);
        $kematianSakramens = $this->KematianSakramen->findAllByIdKematian($id);
    		$this->set(compact('kematian'));
        $this->set(compact('kematianSakramens'));
      }
    }

    public function viewSakramen(){
      if($this->request->is('ajax')){
        $this->autoLayout = false;
        $this->autoRender = false;

        echo json_encode($response);
      }
    }

    public function findAllKematianSakramen(){
      if($this->request->is('ajax')){
        $id = $_GET['id'];
        $this->autoLayout = false;
        $this->autoRender = false;

        $kematianSakramens = $this->KematianSakramen->findAllByIdKematian($id);
        echo json_encode($kematianSakramens);
      }
    }

    public function deleteKematianSakramen(){
      if ($this->request->is('ajax'))
      {
          $this->autoLayout = false;
          $this->autoRender = false;
          $this->KematianSakramen->delete($_GET['id']);
      }
    }

    public function findAll(){
        if ($this->request->is('ajax'))
        {
            $this->autoLayout = false;
            $this->autoRender = false;
            $results = $this->Umat->find('all', array('fields' => array('nama'), 'conditions' => array('Umat.nama LIKE' => '%' . $_GET['nama'] . '%')));
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
  					'fields' => array('nama', 'id', 'jenis_kelamin', 'tgl_lahir', 'tmplahir', 'tmpkomuni', 'tglkomuni', 'Baptis.tanggal', 'Baptis.tempat', 'Baptis.nama_baptis', 'Baptis.liberbap'),
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

}
?>
