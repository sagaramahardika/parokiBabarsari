<?php
class Statusbaptis extends AppModel {
	public function getStatusBaptis() {
		$list = $this->find('list', array('fields' => array('id', 'status')));
		return $list;
	}

}