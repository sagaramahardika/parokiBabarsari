<?php
App::uses('AuthComponent', 'Controller/Component');
class Kematian extends AppModel {
	public $useTable = 'kematians';

	public $belongsTo = array(
		'Umat' => array(
			'className' => 'Umat',
			'foreignKey' => 'id_umat'
		),
		'Baptis' => array(
			'className' => 'Baptis',
			'foreignKey' => false,
			'conditions' => array ( 'Baptis.id_umat = Kematian.id_umat' )
		),
	);
}
?>
