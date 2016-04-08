<?php
class Agama extends AppModel {
	public function getAgama() {
		$list = $this->find('list', array('fields' => array('id', 'agama')));
		return $list;
	}

}