<?php
class Pekerjaan extends AppModel {
	public function getKerja() {
		$list = $this->find('list', array('fields' => array('id', 'pekerjaan')));
		return $list;
	}

}