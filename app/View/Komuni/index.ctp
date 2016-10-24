<?php
$this->assign('title', 'Halaman Manajemen Komuni');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Komuni </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'komuni', 'action'=>'index')); ?>" method="post" id="frmCari">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari nama umat ...">
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
				</span>
			  </div>
			  <br>
			  <div class="input-group">
			  	<span class="input-group-btn">
			  		<?php

					$userRole =$this->Session->read('Auth.User.user_level');
					echo 's' ;
			  		if ( $userRole <> 1) {
			  			# code...
			  			?>
			  			<!-- <button class="btn btn-default btn-success" type="button" id="addkomuni"><span class="fa fa-user-plus"></span> Tambah Data</button> -->
			  			<?php
			  		}
			  		 ?>
             <button class="btn btn-default btn-success" type="button" id="addkomuni"><span class="fa fa-user-plus"></span> Tambah Komuni</button>&nbsp
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
					<table class="table table-bordered table-striped table-condensed ">
						<thead class="text-center">
						<tr>
				 			  <!--<td></td>
					 			<td>Nama</td>
                <td>Kode Stasi</td>
                <td>Liber</td>
                <td>No Urut</td>
					 			<td>Tempat Komuni</td>
					 			<td>Tanggal Komuni</td>
					 			<td>Status Komuni</td>-->

                <td></td>
                <td>No</td>
                <td>Nama Penerima</td>
                <td>Tempat Lahir</td>
                <td>Tanggal Lahir</td>
                <td>Tempat Baptis</td>
                <td>Tanggal Baptis</td>
                <td>Ayah</td>
                <td>Ibu</td>
                <td>Tempat Komuni Pertama</td>
                <td>Tanggal Komuni Pertama</td>

 						</tr>
						</thead>
						<tbody>
						<?php
						$i=0;
            //print_r($datas);
						foreach($datas as $data) {
						?>
            <tr>
            <td>
              <a href="<?php echo $this->Html->url(array('controller'=>'komuni','action'=>'edit', $data['Komuni']['id']));?>">
                <button class="btnedit" idparam="<?php echo $data['Baptis']['id']; ?>">
                  <i class="fa fa-pencil"></i>
                </button>
              </a>
            </td>
            <td> <?php echo $data['Komuni']['id']; ?></td>
            <td>	<?php echo ($data['Komuni']['id_umat'] == 0) ? $data['Komuni']['nama'] : $data['Umat']['nama']; ?></td>
            <td><?php if($data['Komuni']['id_umat'] == 0){echo $data['Komuni']['tempat_lahir'];}else{echo $data['Umat']['tmplahir'];} ?></td>
            <td><?php if($data['Komuni']['id_umat'] == 0){echo $data['Komuni']['tanggal_lahir'];}else{echo $data['Umat']['tgl_lahir'];} ?></td>
            <td><?php if($data['Komuni']['id_umat'] == 0){echo $data['Komuni']['tempat_baptis'];}else{echo $data['Baptis']['tempat'];} ?></td>
            <td><?php if($data['Komuni']['id_umat'] == 0){echo $data['Komuni']['tanggal_baptis'];}else{echo $data['Baptis']['tanggal'];} ?></td>
            <td><?php if($data['Komuni']['id_umat'] == 0){ echo $data['Komuni']['ayah'];}else{echo $data['Umat']['ayah'];} ?></td>
            <td><?php if($data['Komuni']['id_umat'] == 0){ echo $data['Komuni']['ibu'];}else{echo $data['Umat']['ibu'];} ?></td>
            <td><?php if($data['Komuni']['tempat']){ echo $data['Komuni']['tempat'];}else{ echo "-"; }?></td>
            <td><?php if($data['Komuni']['tanggal']){ echo $data['Komuni']['tanggal'];}else{ echo "-";} ?></td>
          </tr>

						<?php
            }

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
