<?php
class Statusekonomi extends AppModel {
	public function getStatusEkonomi() {
		$list = $this->find('list', array('fields' => array('id', 'status')));
		return $list;
	}

}