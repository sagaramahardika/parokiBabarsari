<?php
class Statuskesehatan extends AppModel {
	public function getStatusKesehatan() {
		$list = $this->find('list', array('fields' => array('id', 'status')));
		return $list;
	}

}