<?php
class Statussosial extends AppModel {
	public function getStatusSosial() {
		$list = $this->find('list', array('fields' => array('id', 'status')));
		return $list;
	}

}