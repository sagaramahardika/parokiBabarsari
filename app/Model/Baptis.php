<?php
App::uses('AuthComponent', 'Controller/Component');
class Baptis extends AppModel {
	public $useTable = 'baptises';
	public $belongsTo = array(
		'Statusbaptis' => array(
			'className' => 'Statusbaptis',
			'foreignKey' => 'sts_baptis'
		),
		'Umat' => array(
			'className' => 'Umat',
			'foreignKey' => 'id_umat'
		)
	);
}
?>
