<?php
class Penguru extends AppModel {
	public function getPengurus() {
		$list = $this->find('list', array('fields' => array('id', 'jenis_pengurus')));
		return $list;
	}

}