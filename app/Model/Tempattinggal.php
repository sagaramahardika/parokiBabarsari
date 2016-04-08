<?php
class Tempattinggal extends AppModel {
	public function getTempatTinggal() {
		$list = $this->find('list', array('fields' => array('id', 'alamat')));
		return $list;
	}

}