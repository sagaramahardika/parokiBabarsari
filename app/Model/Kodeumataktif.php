<?php
class Kodeumataktif extends AppModel {
	public $belongsTo = array(
        'Umat' => array(
            'className' => 'Umat',
            'foreignKey' => 'kodeumat'
        ),
      
    );
}