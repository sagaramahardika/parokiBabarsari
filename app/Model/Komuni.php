<?php
App::uses('AuthComponent', 'Controller/Component');
class Komuni extends AppModel {
	public $useTable = 'komuni';

	public $belongsTo = array(
		'Umat' => array(
			'className' => 'Umat',
			'foreignKey' => 'id_umat'
		),
	);

}
?>
