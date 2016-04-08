<?php 
App::uses('SimplePasswordHasher', 'Controller/Component/Auth');
App::uses('AuthComponent', 'Controller/Component');
class Umat extends AppModel {
	public $belongsTo = array(
        'Kk' => array(
            'className' => 'Kk',
            'foreignKey' => 'id_kk'
        ),
        'Hubkk' => array(
            'className' => 'Hubkk',
            'foreignKey' => 'id_hubkk'
        )
    );

    public function getKodeUmat() {
		$list = $this->find('list', array('fields' => array('kode_umat', 'nama')));
		return $list;
	}

	 public function getNamaUmat() {
		$list = $this->find('list', array('fields' => array('nama', 'kode_umat')));
		return $list;
	}

	 public function getNamaUmatById() {
		$list = $this->find('list', array('fields' => array('id', 'nama')));
		return $list;
	}
	//var $hasAndBelongsToMany = 'Bidangstudi';
	public $validate = array (
            'username' => array(
                    'required' => array(
                        'rule' => array('notBlank'),
                        'message' => 'Username harus dimasukkan'
                    )
                ),
            'password' => array(
                    'required' => array(
                        'rule' => array('notBlank'),
                        'message' => 'Password harus dimasukkan'
                    )
             ),
            'nama' => array(
                    'required' => array(
                        'rule' => array('notBlank'),
                        'message' => 'Username harus dimasukkan'
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

	public function isAktifByUname($uname) {		
		if ($uname) {	
		
			$data = $this->findByUsername($uname);

			$data = $this->findByUsername($uname, array('Umat.username'));
			if ($data) {

				return $data;
			}
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

				public function golongandarah() {
		$arrRoles = array(
			'' => '-',
							'A'    => 'A',
						  'B'    => 'B',
						 'AB'    => 'AB',
						 'O'    => 'O',
					);
		return $arrRoles;
	}


			public function statustt() {
		$arrRoles = array(
							'0'    => 'Tetap',
						  '1'    => 'Temporer',
						 
					);
		return $arrRoles;
	}


			public function statuspindah() {
		$arrRoles = array(
							'0'    => 'Tidak Pindah',
						  '1'    => 'Pindah',
						 
					);
		return $arrRoles;
	}

	public function statuskematian() {
		$arrRoles = array(
							'0'    => '-',
						  '1'    => 'Sudah Meninggal',
						 
					);
		return $arrRoles;
	}

	public function getjeniskk() {
		$arrRoles = array(
							'0'    => 'Rumah Tangga Biasa',
						  '1'    => 'Rumah Tangga Khusus',
						 
					);
		return $arrRoles;
	}
	public function jeniskelamin() {
		$arrRoles = array(
							'L'    => 'Laki-laki',
						  'P'    => 'Perempuan',
						 
					);
		return $arrRoles;
	}
	public function getUsername() {
		$list = $this->find('list', array('fields' => array('username', 'id')));
		return $list;
	}
	
	public function getIdPasanganKk($id){
		$data = $this->find('list',array('fields'=>array('id','nama'),
											'conditions'=>array('id_kk = '.$id)



			));
		
		return $data;


	}
	public function getIdPasangan($id){
		$data = $this->find('list',array('fields'=>array('id','nama'),
											'conditions'=>array('id_kk = '.$id)



			));
		
		return $data;


	}


	public function getNamaPasangan(){
		$data = $this->find('list',array('fields'=>array('id','nama')
										



			));
		
		return $data;


	}
}
 ?>