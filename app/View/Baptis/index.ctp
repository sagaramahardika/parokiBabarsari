<?php
$this->assign('title', 'Halaman Manajemen Baptis');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Baptis</h3>
<div class="row mt">
  <br>
    <div class="col-lg-12">
      <div class="row tile_count" style="color: #606060;">
        <div class="col-md-2 col-sm-4 col-xs-4 tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Total:</span>
          <div class="count green" style="font-size: 40px;font-weight: 600;"><?php echo $totalBaptis[0][0]['ctotal']; ?></div>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-4 tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Baptis Anak:</span>
          <div class="count green" style="font-size: 40px;font-weight: 600;"><?php echo $totalBaptisAnak[0][0]['ctotal']; ?></div>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-4 tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Baptis Dewasa:</span>
          <div class="count green" style="font-size: 40px;font-weight: 600;"><?php echo $totalBaptisDewasa[0][0]['ctotal']; ?></div>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-4 tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Baptis Diterima:</span>
          <div class="count green" style="font-size: 40px;font-weight: 600;"><?php echo $totalBaptisDiterima[0][0]['ctotal']; ?></div>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-4 tile_stats_count">
          <span class="count_top"><i class="fa fa-user"></i> Baptis Darurat:</span>
          <div class="count green" style="font-size: 40px;font-weight: 600;"><?php echo $totalBaptisDarurat[0][0]['ctotal']; ?></div>
        </div>
      </div>
      <br>
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'index')); ?>" method="post" id="frmCari">
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
			  		 ?>
             <button style="margin-right: 8px;" class="btn btn-default btn-success" type="button" id="addbaptisanak"><span class="fa fa-user-plus"></span> Tambah Baptis Anak</button>
             &nbsp;<button style="margin-right: 8px;" class="btn btn-default btn-success" type="button" id="addbaptisdewasa"><span class="fa fa-user-plus"></span> Tambah Baptis Dewasa</button>
             &nbsp;<button style="margin-right: 8px;" class="btn btn-default btn-success" type="button" id="addbaptisditerima"><span class="fa fa-user-plus"></span> Tambah Baptis Diterima</button>
             &nbsp;<button style="margin-right: 8px;" class="btn btn-default btn-success" type="button" id="addbaptisdarurat"><span class="fa fa-user-plus"></span> Tambah Baptis Darurat</button>
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
							<td></td>
              <?php /*
							<td>Nama Umat</td>
							<td>Nama Baptis</td>
							<td>Tanggal</td>
							<td>Kode Stasi</td>
							<td>Liber Baptis</td>
							<td>Tempat</td>
							<td>Kota</td>
							<td>Romo</td>
							<td>Wali</td>
							<td>Status Baptis</td>
							<td>Catatan</td>
              */?>
              <td>No</td>
              <td>Tempat Lahir</td>
              <td>Tanggal Lahir</td>
              <td>Baptis di Gereja</td>
              <td>Tanggal Baptis</td>
              <td>Nama</td>
              <td>Nama Baptis</td>
              <td>Ayah</td>
              <td>Ibu</td>
              <td>Wali Baptis</td>
              <td>Romo Baptis</td>
              <td>Jenis Baptis</td>
 						</tr>
						</thead>
						<tbody>
							<?php foreach($datas as $data){?>
							<tr>
                <?php
                  $action = null;
                  if($data['Baptis']['jenis_baptis'] == 'ANAK'){
                    $action = 'editBaptisAnak';
                  }else if($data['Baptis']['jenis_baptis'] == 'DEWASA'){
                    $action = 'editBaptisDewasa';
                  }else if($data['Baptis']['jenis_baptis'] == 'DARURAT'){
                    $action = 'editBaptisDarurat';
                  }else if($data['Baptis']['jenis_baptis'] == 'DITERIMA'){
                    $action = 'editBaptisDiterima';
                  }else{
                    $action = 'edit';
                  }

                  $viewaction = 'view';
                  /*if($data['Baptis']['jenis_baptis'] == 'ANAK'){
                    $viewaction = 'viewBaptisAnak';
                  }else if($data['Baptis']['jenis_baptis'] == 'DEWASA'){
                    $viewaction = 'viewBaptisDewasa';
                  }else if($data['Baptis']['jenis_baptis'] == 'DARURAT'){
                    $viewaction = 'viewBaptisDarurat';
                  }else if($data['Baptis']['jenis_baptis'] == 'DITERIMA'){
                    $viewaction = 'viewBaptisDiterima';
                  }else{
                    $viewaction = 'view';
                  }*/
                ?>
								<td>
                  <a href="<?php
                    echo $this->Html->url(array('controller'=>'baptis','action'=>$action, $data['Baptis']['id']));
                    ?>"
                    <button class="btnedit" idparam="<?php echo $data['Baptis']['id'] ?>">
  										<i class="fa fa-pencil"></i>
  									</button>
                    <?php
    					        echo $this->Html->link('<span class="fa fa-file-pdf-o" aria-hidden="true"></span>', array('controller'=>'baptis','action'=>'viewPDF', $data['Baptis']['id']), array('target'=>'_blank', 'escape'=> FALSE));
                    ?>
                    <a href="<?php
										echo $this->Html->url(array('controller'=>'baptis','action'=>$viewaction, $data['Baptis']['id']));
										?>"<span class="fa fa-eye" aria-hidden="true"></span></a>
                  </a>
								</td>
                <td><?php echo $data['Baptis']['id']; ?></td>
                <td><?php if($data['Baptis']['id_umat'] == 0){echo $data['Baptis']['tempat_lahir'];}else{echo $data['Umat']['tmplahir'];} ?></td>
                <td><?php if($data['Baptis']['id_umat'] == 0){echo $data['Baptis']['tanggal_lahir'];}else{echo $data['Umat']['tgl_lahir'];} ?></td>
                <td><?php if($data['Baptis']['tempat']){ echo $data['Baptis']['tempat'] . ', ' . $data['Baptis']['kota'];}else{ echo "-";} ?></td>
                <td><?php if($data['Baptis']['tanggal']){ echo $data['Baptis']['tanggal'];}else{ echo "-";} ?></td>
                <td><?php if($data['Baptis']['id_umat'] == 0){echo $data['Baptis']['nama_diri'];}else{echo $data['Umat']['nama'];} ?></td>
                <td><?php if($data['Baptis']['nama_baptis']){ echo $data['Baptis']['nama_baptis'];}else{ echo "-";} ?></td>
                <td><?php if($data['Baptis']['id_umat'] == 0){ echo $data['Baptis']['ayah'];}else{echo $data['Umat']['nama_ayah'];} ?></td>
                <td><?php if($data['Baptis']['id_umat'] == 0){ echo $data['Baptis']['ibu'];}else{echo $data['Umat']['nama_ibu'];} ?></td>
                <td><?php if($data['Baptis']['wali_baptis']){ echo $data['Baptis']['wali_baptis'];}else{ echo "-";} ?></td>
                <td><?php if($data['Baptis']['romo']){ echo $data['Baptis']['romo'];}else{ echo "-";} ?></td>
                <td><?php if($data['Baptis']['jenis_baptis']){ echo $data['Baptis']['jenis_baptis'];}else{ echo "-";} ?></td>
                <?php /*
								<td><?php echo $data['Umat']['nama']; ?></td>
								<td><?php echo $data['Baptis']['nama_baptis'] ?></td>
								<td> <?php echo $data['Baptis']['tanggal'] ?></td>
								<td><?php echo $data['Baptis']['kode_stasi'] ?></td>
								<td><?php echo $data['Baptis']['liberbap'] ?></td>
								<td><?php echo $data['Baptis']['tempat'] ?></td>
								<td><?php echo $data['Baptis']['kota'] ?></td>
								<td><?php echo $data['Baptis']['romo'] ?></td>
								<td><?php echo $data['Baptis']['wali_baptis'] ?></td>
								<td><?php echo $data['Statusbaptis']['status'] ?></td>
								<td><?php echo $data['Baptis']['catatan'] ?></td>
                */?>
              </tr>
							<?php } ?>
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
