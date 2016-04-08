<?php
class Lingkungan extends AppModel {
	public function getLingkungan() {
		$list = $this->find('list', array('fields' => array('code_lingkungan', 'nama_lingkungan')));
		return $list;
	}
	public $belongsTo = array(
        'Wilayah' => array(
            'className' => 'Wilayah',
            'foreignKey' => 'wilayah_id'
        )
    );
	public function getIdWilayah($id){
		$data = $this->find('list',array('fields'=>array('id','wilayah_id')));
		return $data[$id];
	}

}