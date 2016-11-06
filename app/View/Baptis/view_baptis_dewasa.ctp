<?php
$this->assign('title', 'Halaman Manajemen Baptis');
?>

<h3><i class="fa fa-angle-right"></i>
	<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Baptis', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>

	<i class="fa fa-users"></i> Manajemen Data Baptis </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">

			</div>
		</div>


		<div class="row">
			<div class="col-lg-12">
				<section id="unseen">
					<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Data Baptis Umat</h3>
			</div>
			<div class="panel-body">
				<table  class="">
          <tr>
						<th>Lingkungan 	</th>
						<td>: <?php echo $data['BaptisDewasa']['lingkungan'] ?></td>
					</tr>
					<tr>
						<th>Kode Stasi 	</th>
						<td>: <?php echo $data['Baptis']['kode_stasi'] ?></td>
					</tr>
					<tr>
						<th>Liberbap 	</th>
						<td>: <?php echo $data['Baptis']['liberbap'] ?></td>
					</tr>
					<tr>
						<th>Nama Diri 	</th>
						<td>: <?php if($data['Baptis']['id_umat'] == 0){echo $data['Baptis']['nama_diri'];}else{echo $data['Umat']['nama'];} ?></td>
					</tr>
          <tr>
						<th>Jenis Kelamin 	</th>
						<td>: <?php if($data['Baptis']['id_umat'] == 0){echo $data['Baptis']['jenis_kelamin'];}else{echo $data['Umat']['jenis_kelamin'];} ?></td>
					</tr>
          <tr>
						<th>Tempat Lahir 	</th>
						<td>: <?php if($data['Baptis']['id_umat'] == 0){echo $data['Baptis']['tempat_lahir'];}else{echo $data['Umat']['tmplahir'];} ?></td>
					</tr>
          <tr>
						<th>Tanggal Lahir 	</th>
						<td>: <?php if($data['Baptis']['id_umat'] == 0){echo $data['Baptis']['tanggal_lahir'];}else{echo $data['Umat']['tgl_lahir'];} ?></td>
					</tr>
          <tr>
						<th>Alamat Calon 	</th>
						<td>: <?php echo $data['BaptisDewasa']['alamat'] ?></td>
					</tr>
          <tr>
						<th>Nama Ayah 	</th>
						<td>: <?php if($data['Baptis']['id_umat'] == 0){ echo $data['Baptis']['ayah'];}else{echo $data['Umat']['nama_ayah'];} ?></td>
					</tr>
          <tr>
						<th>Nama Ibu 	</th>
						<td>: <?php if($data['Baptis']['id_umat'] == 0){ echo $data['Baptis']['ibu'];}else{echo $data['Umat']['nama_ibu'];} ?></td>
					</tr>
          <tr>
						<th>Status Perkawinan</th>
						<td>: <?php echo $data['BaptisDewasa']['status_perkawinan'] . ' Menikah'; ?></td>
					</tr>
          <?php if($data['BaptisDewasa']['status_perkawinan'] == 'SUDAH'){ ?>
            <tr>
              <th>Menikah Secara</th>
              <td>: <?php echo $data['BaptisDewasa']['menikah_secara'] ?></td>
            </tr>
          <?php } else if($data['BaptisDewasa']['status_perkawinan'] == 'AKAN'){ ?>
            <tr>
  						<th>Nama Pasangan</th>
  						<td>: <?php echo $data['BaptisDewasa']['nama_pasangan'] ?></td>
  					</tr>
            <tr>
  						<th>Tempat Pernikahan</th>
  						<td>: <?php echo $data['BaptisDewasa']['tempat_pernikahan'] ?></td>
  					</tr>
            <tr>
  						<th>Tanggal Pernikahan</th>
  						<td>: <?php echo $data['BaptisDewasa']['tanggal'] ?></td>
  					</tr>
          <?php } else if($data['BaptisDewasa']['status_perkawinan'] == 'AKAN'){ ?>
            <tr>
  						<th>Alasan Batal Pernikahan</th>
  						<td>: <?php echo $data['BaptisDewasa']['alasan_batal_nikah'] ?></td>
  					</tr>
            <tr>
  						<th>No Surat / Akta</th>
  						<td>: <?php echo $data['BaptisDewasa']['no_surat'] ?></td>
  					</tr>
            <tr>
  						<th>Tanggal Pembatalan Pernikahan</th>
  						<td>: <?php echo $data['BaptisDewasa']['tanggal'] ?></td>
  					</tr>
          <?php } ?>
          <tr>
						<th>Agama Sebelumnya 	</th>
						<td>: <?php if($data['BaptisDewasa']['agama']){ echo $data['BaptisDewasa']['agama'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Mengikuti Pelajaran Agama Sejak 	</th>
						<td>: <?php if($data['BaptisDewasa']['belajar_agama_sejak']){ echo $data['BaptisDewasa']['belajar_agama_sejak'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Mengikuti Misa Sejak  	</th>
						<td>: <?php if($data['BaptisDewasa']['ikut_misa_sejak']){ echo $data['BaptisDewasa']['ikut_misa_sejak'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Mengikuti Kegiatan Lingkungan Sejak  	</th>
						<td>: <?php if($data['BaptisDewasa']['kegiatan_lingkungan_sejak']){ echo $data['BaptisDewasa']['kegiatan_lingkungan_sejak'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Nama Guru Agama  	</th>
						<td>: <?php if($data['BaptisDewasa']['guru_agama']){ echo $data['BaptisDewasa']['guru_agama'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Nama Baptis 	</th>
						<td>: <?php if($data['Baptis']['nama_baptis']){ echo $data['Baptis']['nama_baptis'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Wali Baptis 	</th>
						<td>: <?php if($data['Baptis']['wali_baptis']){ echo $data['Baptis']['wali_baptis'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Tanggal Baptis 	</th>
						<td>: <?php if($data['Baptis']['tanggal']){ echo $data['Baptis']['tanggal'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Nama Romo 	</th>
						<td>: <?php if($data['Baptis']['romo']){ echo $data['Baptis']['romo'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Nama Paroki 	</th>
						<td>: <?php if($data['Baptis']['tempat']){ echo $data['Baptis']['tempat'];}else{ echo "-";} ?></td>
					</tr>
          <tr>
						<th>Kota 	</th>
						<td>: <?php if($data['Baptis']['kota']){ echo $data['Baptis']['kota'];}else{ echo "-";} ?></td>
					</tr>
				</table>

				</div>
				</div>
				</section>
			</div>
		</div>
	</div>
</div>
