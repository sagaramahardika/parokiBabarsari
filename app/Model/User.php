<?php
/*
 * Model untuk data User
 * dikembangkan oleh Budi Susanto (budsus@ti.ukdw.ac.id)
 *
 */
?>
<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
class User extends AppModel {
	public $belongsTo = array(
        'Umat' => array(
            'className' => 'Umat',
            'foreignKey' => 'id_umat'
        )
    );
    
	public function getUsername() {
		$list = $this->find('list', array('fields' => array('id', 'username')));
		return $list;
	}
	public $validate = array (
			'username' => array(
					'required' => array(
						'rule' => array('notBlank', 'isUnique'),
						'message' => 'Username harus dimasukkan'
					)
				),
			'password' => array(
					'required' => array(
						'rule' => array('notBlank'),
						'message' => 'Password harus dimasukkan'
					)
				)
		);

	public function beforeSave($options = array()){
        if (isset($this->data[$this->alias]['password'])) {
            $passwordHasher = new BlowfishPasswordHasher();
            $this->data[$this->alias]['password'] =
                $passwordHasher->hash($this->data[$this->alias]['password']);
        }
        return true;
    }

	public function isAktifById($userid) {
		if ($userid) {
			$this->id = $userid;
			return ($this->field('aktif') === 'Aktif');
		}
		return false;
	}

	public function updateLastLogin($userid){
		if ($userid) {
			$this->id = $userid;
			$this->saveField('last_login', date('Y/m/d H:i:s', time()));
		}
	}

	public function updateLastLogout($userid){
		if ($userid) {
			$this->id = $userid;
			$this->saveField('last_logout', date('Y/m/d H:i:s', time()));
		}
	}

	public function roleUser() {
		$arrRoles = array(
							'admin'    => 'Administrator',
						  'majelis'    => 'Majelis',
						  'kantor'   => 'Sekretaris Kantor'
					);
		return $arrRoles;
	}
	public function isAktifByUname($uname) {		
		if ($uname) {	
		
			$data = $this->findByUsername($uname);

			$data = $this->findByUsername($uname, array('User.username'));
			if ($data) {

				return $data;
			}
		}
		return false;
	}
}
?>
