<?php
App::uses('AuthComponent', 'Controller/Component');
class Krisma extends AppModel {
	public $useTable = 'krismas';

	public $belongsTo = array(
		'Umat' => array(
			'className' => 'Umat',
			'foreignKey' => 'id_umat'
		),
		'Baptis' => array(
			'className' => 'Baptis',
			'foreignKey' => false,
			'conditions' => array ( 'Baptis.id_umat = Krisma.id_umat' )
		),
	);
}
?>
