<?php
class Pendidikan extends AppModel {
	public function getDidik() {
		$list = $this->find('list', array('fields' => array('id', 'pendidikan')));
		return $list;
	}

}