<?php
$this->assign('title','Halaman Pendataan Krisma')

 ?>

<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Krisma</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'krismas', 'action'=>'index')); ?>" method="post" id="frmCari">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari nama umat ...">
  				<span class="input-group-btn">
  				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
  				</span>
			  </div>
        <br>
        <div class="input-group">
			  	<span class="input-group-btn">
			  		<a href="<?php echo $this->Html->url(array('controller' => 'krismas', 'action' => 'newTambah')); ?>" class="btn btn-default btn-success"><span class="fa fa-user-plus"></span> Tambah Data Krisma</a>
			  	</span>
			  </div>

			  	</form>
			  <div class="input-group">
			  	<span class="input-group-btn">
			  		<?php

					$userRole =$this->Session->read('Auth.User.user_level');

			  		if ( $userRole <> 1) {
			  			# code...
			  			?>
			  			<!-- <button class="btn btn-default btn-success" type="button" id="addkrisma"><span class="fa fa-user-plus"></span> Tambah Akun</button> -->

			  			<?php
			  		}
			  		 ?>




			  	</span>

			  </div>

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
					<table class="table table-bordered table-striped table-condensed ">
						<thead class="text-center">
						<tr>
				 			<td></td>
              <td>Tanggal Krisma</td>
				 			<td>Nama Diri</td>
              <td>Nama Ayah</td>
              <td>Nama Ibu</td>
              <td>Nama Pelindung Krisma</td>
              <td>Nama Emban Krisma</td>
 						</tr>
						</thead>
						<tbody>
						<?php
						$i=0;


							# code...

						foreach($datas as $data) {

							?>

						<tr>
							<td>
								<?php if($userRole <> 1){ ?>
							  <a href="<?php
					        echo $this->Html->url(array('controller'=>'krismas','action'=>'newEdit', $data['Krisma']['id']));?>"
                  <span class="fa fa-edit" aria-hidden="true"></span>
                </a>
                <?php
					        echo $this->Html->link('<span class="fa fa-file-pdf-o" aria-hidden="true"></span>', array('controller'=>'krismas','action'=>'viewPDF', $data['Krisma']['id']), array('target'=>'_blank', 'escape'=> FALSE));
                ?>
                <?php
					        echo $this->Html->link('<span class="fa fa-eye" aria-hidden="true"></span>', array('controller'=>'krismas','action'=>'viewDetail', $data['Krisma']['id']), array('escape'=> FALSE));
                ?>
                <?php } ?>
 				      </td>
              <td>	<?php echo $data['Krisma']['tanggal_krisma']; ?> </td>
       				<td>	<?php echo $data['Krisma']['nama_diri']; ?></td>
              <td>	<?php echo $data['Krisma']['nama_ayah']; ?> </td>
              <td>	<?php echo $data['Krisma']['nama_ibu']; ?> </td>
              <td>	<?php echo $data['Krisma']['nama_pelindung_krisma']; ?> </td>
              <td>	<?php echo $data['Krisma']['nama_emban_krisma']; ?> </td>

						</tr>






						<?php }

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