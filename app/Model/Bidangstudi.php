<?php
class Bidangstudi extends AppModel {
	public function getBidangStudi() {
		$list = $this->find('list', array('fields' => array('id', 'bidangstudi')));
		return $list;
	}

}