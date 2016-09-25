<?php
App::uses('AuthComponent', 'Controller/Component');
class BaptisDarurat extends AppModel {
	public $useTable = 'baptises_darurat';
	public $belongsTo = array(
		'Baptis' => array(
			'className' => 'Baptis',
			'foreignKey' => 'id_baptis'
		)
	);
}
?>
