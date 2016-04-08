<?php
$this->assign('title', 'Halaman Baptis Umat');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Baptis </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'baptis')); ?>" method="post" id="frmCari">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari akun ...">
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
				 <!-- <button class="btn btn-default btn-warning" type="button" id="alluserbtn">Semua</button>
				  <button class="btn btn-default btn-success" type="button" id="adduserbtn"><span class="fa fa-user-plus"></span> Tambah Akun</button>-->
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
							<?php if($usrlvl!=1){ ?>
							<th></th>
							<?php }?>
							<th>Nama Umat</th>
							<th>Nama Baptis</th>
							<th>Tanggal</th>	
							<th>Liber Baptis</th>
							<th>Tempat Baptis</th>
							<th>Romo</th>
							<th>Status</th>		
						</tr>
						</thead>
						<tbody>
						<?php
						$i=0;
						foreach($datas as $user) {
							$i++; ?>
						<tr>
<!--							<td>
							<button class="btneditbaptis" idparam="<?php echo $user['Umat']['id'] ?>">
								<i class="fa fa-edit" aria-hidden="true"></i>
							</button>
							</td>-->
							<?php if($usrlvl!=1){ ?>
							<td>
								<a href="<?php 
								echo $this->Html->url(array('controller'=>'umats','action'=>'editBaptis', $user['Umat']['id'])); 
								?>"<span class="fa fa-edit" aria-hidden="true"></span></a>
							</td>
							<?php } ?>
							<td><?php echo $user['Umat']['nama'] ?>
							<td><?php echo $user['Umat']['namabaptis'] ?>				
							<td> 
								<?php
									if($user['Umat']['tglbaptis'] != "0000-00-00") 
									echo $user['Umat']['tglbaptis']; 
								?>
							</td>
							<td><?php echo $user['Umat']['liberbap'] ?></td>
							<td><?php echo $user['Umat']['tmpbaptis'] ?></td>	
							<td><?php echo $user['Umat']['romobaptis'] ?></td>
							<td>
								<?php
									if($user['Umat']['id_statusbaptis'] == 9){
										echo '<span style="color:red;" class="fa fa-times" aria-hidden="true"></span>';
									}else if($user['Umat']['id_statusbaptis'] == 11)
									echo '<span style="color:blue;" class="fa fa-question" aria-hidden="true"></span>';
									else
										echo '<span style="color:green;" class="fa fa-check" aria-hidden="true"></span>';
								?>
							</td>
			</td>
		</tr>
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
