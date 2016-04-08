<?php 

class Wilayah extends AppModel{
public $belongsTo = array(
        'Paroki' => array(
            'className' => 'Paroki',
            'foreignKey' => 'paroki_id'
        )
    );
public function getIdParoki($id){
		$data = $this->find('list',array('fields'=>array('id','paroki_id')));
		return $data[$id];
	}


	
	
}


 ?>