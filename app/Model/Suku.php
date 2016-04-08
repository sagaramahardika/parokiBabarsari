<?php
class Suku extends AppModel {
	public function getSuku() {
		$list = $this->find('list', array('fields' => array('id', 'suku')));
		return $list;
	}

}