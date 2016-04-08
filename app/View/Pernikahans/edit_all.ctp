<?php 

echo $this->Form->create('Pernikahan', array('action'=>'editAll','controller'=>'pernikahans'));
debug($edit);
foreach($edit as $key => $value) {
echo $this->Form->input('Pernikahan.'.$key.'.romo');
echo $this->Form->input('Pernikahan.'.$key.'.paroki_pria');

echo $this->Form->input('Pernikahan.'.$key.'.paroki_wanita');
echo $this->Form->input('Pernikahan.'.$key.'.id');
}

echo $this->Form->end('Save All Profiles');


 ?>