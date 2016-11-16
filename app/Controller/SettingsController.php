<?php
class SettingsController extends AppController {
	public $components = array('Paginator', 'Session', 'Cookie', 'Flash');
  public $uses = array('Setting');
 	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow('login');
	}

	public function index() {
    if ($this->request->is('post')){

				$baptis = array('id' => 1, 'value_setting' =>  $this->request->data['Setting']['romo_baptis']);
        $this->Setting->save($baptis);

				$krisma = array('id' => 2, 'value_setting' =>  $this->request->data['Setting']['romo_krisma']);
        $this->Setting->save($krisma);

				$pernikahan = array('id' => 3, 'value_setting' =>  $this->request->data['Setting']['romo_pernikahan']);
        $this->Setting->save($pernikahan);

				$this->Flash->success(__('data setting telah berhasil disimpan.'));
    }
		$settings = $this->Setting->find('all');
    $this->set(compact('settings'));
	}
}
