<?php
class Kk extends AppModel {
	public $belongsTo = array(
        'Lingkungan' => array(
            'className' => 'Lingkungan',
            'foreignKey' => 'lingkungan_id'
        )
    );

	public function getIdLingkungan($id){
		$data = $this->find('list',array('fields'=>array('id','lingkungan_id')));
		return $data[$id];
	}
	public function getKk($lingid) {
		$conditions = array(						
						'lingkungan_id' => $lingid
					);
		$list = $this->find('list', array('fields' => array('id', 'nama_kk'), 'conditions'=> $conditions));
		return $list;
	}

}