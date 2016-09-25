<?php
App::uses('AuthComponent', 'Controller/Component');
class BaptisDewasa extends AppModel {
	public $useTable = 'baptises_dewasa';
	public $belongsTo = array(
		'Baptis' => array(
			'className' => 'Baptis',
			'foreignKey' => 'id_baptis'
		)
	);
}
?>
