<?php
App::uses('AuthComponent', 'Controller/Component');
class Komuni extends AppModel {
	public $useTable = 'komuni';

	public $belongsTo = array(
		'Umat' => array(
			'className' => 'Umat',
			'foreignKey' => 'id_umat'
		),
		'Baptis' => array(
			'className' => 'Baptis',
			'foreignKey' => false,
			'conditions' => array ( 'Baptis.id_umat = Komuni.id_umat AND Baptis.id_umat <> 0' )
		),
	);

}
?>
