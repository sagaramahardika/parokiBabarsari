<?php
$overview = '';
$jemaat = '';
$laporan = '';
$user = '';
$setup='';
$umat='';
$baptis='';
$pernikahans='';
$kematians='';
$komuni='';
$krismas='';
$kelahiran='';
$tambahjemaat='';
$lihataktivasi='';
$lihatuser='';
$user='';
$tambahbaptis='';
if ($ctl === 'jemaats') {
  $jemaat = 'class="active"';
} else if ($ctl === 'laporans') {
  $laporan = 'class="active"';
} else if ($ctl === 'users') {
  $user = 'class="active"';
}else if ($ctl === 'komuni') {
  $komuni = 'class="active"';
}else if($ctl === 'umats'){
  $umat = 'class="active"';
}else if($ctl === 'baptis'){
  $baptis = 'class="active"';
}else if($ctl ==='pernikahans'){
 $pernikahans = 'class="active"';
}else if($ctl ==='kelahiran'){
 $kelahiran = 'class="active"';
} else if($ctl ==='lihataktivasi'){
 $lihataktivasi = 'class="active"';
}else if($ctl ==='tambahjemaat'){
 $tambahjemaat = 'class="active"';
}else if($ctl ==='krismas'){
 $krismas = 'class="active"';
}else if($ctl ==='user'){
  $user = 'class="active';
}else if ($ctl === 'kematians') {
  $kematians = 'class="active"';
}else if ($ctl === 'tambahbaptis') {
  $tambahbaptis = 'class="active"';
}
else {
  $overview = 'class="active"';
}
?>
<div class="col-sm-3 col-md-2 sidebar-offcanvas" id="sidebar" role="navigation">
<ul class="nav nav-sidebar">

  <li <?php echo $umat; ?>>
  <?php echo $this->Html->link('Home', array('controller'=>'umats','action' => 'index')); ?>

  </li>
  <li <?php echo $baptis; ?>>
  <?php echo $this->Html->link('Baptis', array('id'=>'baptis','controller'=>'umats', 'action' => 'baptis')); ?>
  </li>
  <li <?php echo $pernikahans; ?>>
  <?php echo $this->Html->link('Pernikahan', array('controller'=>'pernikahans', 'action' => 'index')); ?>
  </li>
  <li <?php echo $kematians; ?>>
    <?php echo $this->Html->link('Kematian', array('controller'=>'kematians', 'action' => 'index')); ?>
  </li>
  <li <?php echo $komuni; ?>>
  <?php echo $this->Html->link('Komuni', array('controller'=>'komuni', 'action' => 'index')); ?>
  </li>
  <li <?php echo $krismas; ?>>
  <?php echo $this->Html->link('Krisma', array('controller'=>'krismas', 'action' => 'index')); ?>
  </li>

  <?php
    if($this->Session->read('Auth.User.level') != "1"){
   ?>
  <?php  if($this->Session->read('Auth.User.level') != "5"){ ?>
  <li <?php echo $kelahiran; ?>>
    <?php echo $this->Html->link('Tambah Kelahiran', array('controller'=>'umats', 'action' => 'kelahiran')); ?>
  </li>
  <li <?php echo $tambahjemaat; ?>>
    <?php echo $this->Html->link('Tambah Jemaat', array('controller'=>'umats', 'action' => 'tambahjemaat')); ?>
  </li><?php } ?>
  <li <?php echo $tambahbaptis; ?>>
    <?php echo $this->Html->link('Tambah Baptis', array('controller'=>'baptis', 'action' => 'tambah')); ?>
  </li>
  <li <?php echo $lihataktivasi; ?>>
    <?php echo $this->Html->link('Kode aktivasi', array('controller'=>'umats', 'action' => 'lihataktivasi')); ?>
  </li>
   <?php
    }
   ?>
   <?php
    if($this->Session->read('Auth.User.level') == "5"){
   ?>
      <li <?php echo $user; ?>>
    <?php echo $this->Html->link('Lihat User', array('controller'=>'users', 'action' => 'listuser')); ?>
  </li>
   <?php
    }
   ?>
</ul>

<?php if ($urole === 'admin') { ?>
<ul class="nav nav-sidebar">
  <li <?php echo $user; ?>><?php echo $this->Html->link('Akun Pengguna', array('controller'=>'umats')); ?></li>
</ul>
<?php } ?>
</div><!--/span-->
