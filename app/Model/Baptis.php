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

	public $hasOne = array(
		'BaptisAnak' => array(
			'className' => 'BaptisAnak',
			'foreignKey' => 'id_baptis'
			),
		'BaptisDewasa' => array(
			'className' => 'BaptisDewasa',
			'foreignKey' => 'id_baptis'
			),
		'BaptisDarurat' => array(
			'className' => 'BaptisDarurat',
			'foreignKey' => 'id_baptis'
			),
	);
}
?>
