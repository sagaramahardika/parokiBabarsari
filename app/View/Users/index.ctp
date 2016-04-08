<?php
$this->assign('title', 'Halaman Manajemen Pengguna');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'index')); ?>" method="post" id="frmCari">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari akun ...">
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
				  <button class="btn btn-default btn-warning" type="button" id="alluserbtn">Semua</button>
				  <button class="btn btn-default btn-success" type="button" id="adduserbtn"><span class="fa fa-user-plus"></span> Tambah Akun</button>
				</span>
			  </div>
			  </form>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p></p>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<section id="unseen">
					<table class="table table-bordered table-striped table-condensed">
						<thead>
						<tr>
							<th></th>
							<th>Username</th>
							<th>Nama Lengkap</th>
							<th>Login</th>
							<th>Created</th>
						</tr>
						</thead>
						<tbody>
						<?php
						$i=0;
						foreach($users as $user) {
							$i++; ?>
						<tr>
							<td>
								<?php
								$curruser = 'btn-primary';
								if ($user['User']['id'] == $this->Session->read('Auth.User.id')) {
								  $curruser = 'btn-info';
								} ?>
								<div class="btn-group">
								  <button class="btn <?php echo $curruser?> btn-default dropdown-toggle" type="button" id="drop<?php echo $i; ?>" data-toggle="dropdown" aria-expanded="true">
									<i class="fa fa-cog"></i>
									<span class="caret"></span>
								  </button>
								  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
									<li role="presentation"><a role="menuitem" tabindex="-1" href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'edit', md5('UKDWjogja'.$user['User']['username']))); ?>"><i class="fa fa-pencil"></i> Update Akun</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1" href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'chpasswd', md5('UKDWjogja'.$user['User']['username']))); ?>"><i class="fa fa-key"></i> Ubah Password</a></li>
									<li role="presentation" class="divider"></li>
									<?php
									$disabled = '';
									if ($user['User']['id'] == $this->Session->read('Auth.User.id')) {
									  $disabled = 'class="disabled"';
									} ?>
									<li role="presentation" <?php echo $disabled ?>>
									  <?php
									  if ($disabled === '') {
										echo $this->Form->postLink('<i class="fa fa-user-times"></i> Hapus Akun',
												  array('controller'=>'users', 'action'=>'delete',  md5('UKDWjogja'.$user['User']['username'])),
												  array('role'=>"menuitem", 'tabindex'=>"-1", 'escape' => false, 'confirm' => 'Yakinkan Anda?'));
									  } else {
									  ?>
									  <a role="menuitem" tabindex="-1" href="#"><i class="fa fa-trash-o"></i> Hapus Akun</a>
									  <?php }
									  ?>
									</li>
								  </ul>
								</div>
							</td>
							<td>
							<?php
							echo '<span style="padding-right: 8px;">' . $this->Html->image($user['User']['filedir'] . $user['User']['filename'], array('width'=>40, 'class'=>'mini-pp')) . '</span>';
							echo '<span>' . $user['User']['username'] . '</span>'; ?>
							<span class="label label-default"><?php echo $user['User']['role']; ?></span>
							</td>
							<td><?php echo $user['User']['name']; ?>
								<?php if ($user['User']['aktif'] === 'Aktif') { ?>
								<span class="label label-success">Aktif</span>
								<?php } else { ?>
								<span class="label label-danger">Non Aktif</span>
								<?php } ?>
							</td>
							<td><?php
                if ($user['User']['last_login']) {
                  echo date('d-m-Y H:i:s', strtotime($user['User']['last_login']));
                } else {
                  echo '[tidak pernah]';
                }
              ?></td>
							<td><?php echo date('d-m-Y H:i:s', strtotime($user['User']['created'])); ?></td>
						</tr>
						<?php }
						unset($users);
						?>
						</tbody>
					</table>
					<div class="paging">
					<?php
						if ($this->Session->check('search')) {
							$this->Paginator->options['url'] = array_merge($this->passedArgs, array('o' => 'search'));
						}

						echo $this->Paginator->prev(' <i class="fa fa-angle-left"></i> ', array('escape' => false), null, array('escape' => false, 'class'=>'prev disabled')) .
							 $this->Paginator->numbers(array('before' => false, 'after' => false, 'separator' => false)) .
							 $this->Paginator->next(' <i class="fa fa-angle-right"></i> ', array('escape' => false, '#ok'), null, array('escape' => false, 'class' => 'next disabled'))
					?>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
