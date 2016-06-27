<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class KematiansController extends AppController{
    public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image', 'RequestHandler');
    public $uses = array('Umat', 'Kematian');
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
                return $this->redirect(array('action' => 'index'));
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
