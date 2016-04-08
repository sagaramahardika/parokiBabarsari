<?php
class Statuskekatolikan extends AppModel {
	public function statuskatolik() {
		$list = $this->find('list', array('fields' => array('id', 'status')));
		return $list;
	}

}