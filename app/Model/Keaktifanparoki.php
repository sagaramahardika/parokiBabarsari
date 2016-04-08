<?php
class Keaktifanparoki extends AppModel {
	public function getKeaktifanParoki() {
		$list = $this->find('list', array('fields' => array('id', 'keaktifan')));
		return $list;
	}

}