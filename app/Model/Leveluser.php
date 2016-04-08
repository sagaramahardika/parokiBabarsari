<?php
class Leveluser extends AppModel {
	public function getLevel() {
		$list = $this->find('list', array('fields' => array('level', 'keterangan')));
		return $list;
	}

}