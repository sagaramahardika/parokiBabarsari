<?php
class MainController extends AppController {
  public function beforeFilter() {
		parent::beforeFilter();
	}

	public function isAuthorized($user) {
			return parent::isAuthorized($user);
	}

  public function index() {

  }
}
