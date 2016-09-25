<?php
App::uses('AuthComponent', 'Controller/Component');
class BaptisAnak extends AppModel {
	public $useTable = 'baptises_anak';
	public $belongsTo = array(
		'Baptis' => array(
			'className' => 'Baptis',
			'foreignKey' => 'id_baptis'
		)
	);
}
?>
