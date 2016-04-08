<?php
class Statuspernikahan extends AppModel {
	public function getStatusPernikahan() {
		$list = $this->find('list', array('fields' => array('id', 'status')




			));
		return $list;
	}
	public function getStatus(){
		$data = $this->find('list',array('fields'=>array('id','status'),
			'conditions'=>array('NOT'=>array('id'=>array( 1,6,8)))



			));
		return $data;


	}

	public function getStatusEdit(){
		$data = $this->find('list',
			array(
				'fields'=>array('id','status'),
				'conditions'=>array('NOT'=>array('id'=>array( '1')))

				));
		return $data;


	}
}