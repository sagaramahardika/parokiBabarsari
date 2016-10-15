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

    public function newRead()
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
            $data = $this->request->data;
            $kematian = array(
              'kode_stasi'        => $data['Kematian']['kode_stasi'],
              'lingkungan'        => $data['Kematian']['lingkungan'],
              'nama_diri'         => $data['Kematian']['nama_diri'],
              'nama_baptis'       => $data['Kematian']['nama_baptis'],
              'tempat_lahir'      => $data['Kematian']['tempat_lahir'],
              'tanggal_lahir'     => $data['Kematian']['tanggal_lahir'],
              'tempat_meninggal'  => $data['Kematian']['tempat_meninggal'],
              'tanggal_meninggal' => $data['Kematian']['tanggal_meninggal'],
              'tempat_pemakaman'  => $data['Kematian']['tempat_pemakaman'],
              'tanggal_pemakaman' => $data['Kematian']['tanggal_pemakaman'],
              'nama_ayah'         => $data['Kematian']['nama_ayah'],
              'nama_ibu'          => $data['Kematian']['nama_ibu'],
              'tempat_baptis'     => $data['Kematian']['tempat_baptis'],
              'tanggal_baptis'    => $data['Kematian']['tanggal_baptis'],
              'buku_baptis'       => $data['Kematian']['buku_baptis']
            );
            $this->Kematian->create();
            $this->Kematian->save($kematian);

            for ($i = 0; $i< count($data['KematianSakramen']); $i++) {
              $item = array(
                'id_kematian'         => $this->Kematian->id,
                'nama_sakramen'       => $data['KematianSakramen']['nama_sakramen'][$i],
                'pelayan_sakramen'    => $data['KematianSakramen']['pelayan_sakramen'][$i]
              );

              $this->KematianSakramen->create();
              $this->KematianSakramen->save($item);
            }
            $this->Flash->success(__('data kematian telah berhasil disimpan.'));
  					return $this->redirect(array('action' => 'newRead'));
        }
    }

    public function newEdit(){
      $id = $this->params['pass'][0];
  		$kematian = $this->Kematian->findById($id);
  		$this->set(compact('kematian'));

  		if($this->request->data){
  			try {
  				$updateKematian = $this->request->data;

  				if($this->Kematian->save($updateKematian))
  				{
  					$this->Flash->success(__('data kematian telah berhasil diubah.'));
  					return $this->redirect(array('action' => 'newRead'));
  				}


  						} catch (PDOExeption $pdoe) {
  							$this->Flash->error(__('data tidak dapat diupdate. ' . $e->errorInfo[2]));
  						}
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

}
?>
