<?php
class Keaktifangereja extends AppModel {
	public function getKeaktifanGereja() {
		$list = $this->find('list', array('fields' => array('id', 'keaktifan')));
		return $list;
	}

}