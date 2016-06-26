<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class KematiansController extends AppController{
    public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
    public $uses = array('Umat');
	  public $helpers = array('Flash');
	  public $layout = 'default';

    public function index()
    {

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
