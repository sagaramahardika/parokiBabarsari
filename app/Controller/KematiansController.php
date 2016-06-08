<?php 
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class KematiansController extends AppController{
    public $components = array('Paginator', 'Session', 'Cookie', 'Flash', 'ImageCropResize.Image');
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
    
}
?>