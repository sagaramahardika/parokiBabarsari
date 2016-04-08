<?php
class Hubkk extends AppModel {
	public function getHubkk() {
		$list = $this->find('list', array('fields' => array('id', 'hubkk')));
		return $list;
	}

}