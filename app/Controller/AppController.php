<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('AppController', 'Controller');
App::uses('AuthComponent', 'Controller/Component');
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {
  //public $helpers = array('MyTools');

	public $components = array(
    'Session',
    'Auth' => array(
  		'authenticate' => array(
  		'Basic' => array('userModel' => 'User'),
    	'Form' => array('userModel' => 'User','passwordHasher' => 'Blowfish'),
    	),
    	'loginAction' => array(
            'controller' => 'users',
            'action' => 'login'),
        'loginRedirect' => array('controller' => 'umats', 'action' => 'index'),
        'logoutRedirect' => array('controller' => 'users', 'action' => 'login'),
        'authError' => 'You must be logged in to view this page.',
        'loginError' => 'Invalid Username or Password entered, please try again.'
    ));
    
    public function afterFilter(){    
        $url = Router::url(NULL, true); //complete url
        $this->Session->write('lastUrl', $url);
    }

	public function beforeFilter(){
		//$urole = $this->Session->read('Auth.Umat.role');
		if (strpos($this->request->url, 'login') !== false) {
			$this->layout = "login";
		} else {
			$this->layout = "default";
		}
		$this->Auth->allow('login');
	}

	public function isAuthorized($umat) {
		return true;
	}
}
