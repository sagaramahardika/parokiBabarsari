<?php
class Pernikahan extends AppModel {
	public $belongsTo = array(
        'Umat' => array(
            'className' => 'Umat',
            'foreignKey' => 'umat_id',
            
        )
    );

    public $validate = array (
            /*'tmppernikahan' => array(
                    'required' => array(
                        'rule' => array('notBlank'),
                        'message' => 'nama umat harus dimasukkan'
                    )
                ),
            'romopernikahan' => array(
                    'required' => array(
                        'rule' => array('notBlank'),
                        'message' => 'nama umat harus dimasukkan'
                    )
                ),
            'libermat' => array(
                    'required' => array(
                        'rule' => array('notBlank'),
                        'message' => 'nama umat harus dimasukkan'
                    )
                ),*/
            
            
        );

}