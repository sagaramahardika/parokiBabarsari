<?php
class Paroki extends AppModel {
	public function getParoki() {
		$list = $this->find('all', array('fields' => array('id', 'nama_paroki')));
		return $list;
	}
	
}