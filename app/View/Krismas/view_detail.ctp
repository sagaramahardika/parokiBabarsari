<?php
$this->assign('title', 'Halaman Detail Krisma');
?>
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Krisma', array('action'=>'newRead'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Detail Data Krisma
</h3>
<div class="row mt">
  <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-body">
        <table style="width: 100%;">
          <tr>
            <td style="width: 15%;">Tanggal Krisma</td>
            <td style="width: 50%;">: <?php echo $krisma['Krisma']['tanggal_krisma']; ?></td>
          </tr>
          <tr>
            <td>Nama Diri</td>
            <td>: <?php echo $krisma['Krisma']['nama_diri']; ?></td>
          </tr>
          <tr>
            <td>Nama Ayah</td>
            <td>: <?php echo $krisma['Krisma']['nama_ayah']; ?></td>
          </tr>
          <tr>
            <td>Nama Ibu</td>
            <td>: <?php echo $krisma['Krisma']['nama_ibu']; ?></td>
          </tr>
          <tr>
            <td>Nama Pelindung Krisma</td>
            <td>: <?php echo $krisma['Krisma']['nama_pelindung_krisma']; ?></td>
          </tr>
          <tr>
            <td>Nama Emban Krisma</td>
            <td>: <?php echo $krisma['Krisma']['nama_emban_krisma']; ?></td>
          </tr>
        </table>
        <div class="table-responsive">
          <table class="table">
            <thead>
              <th>No</th>
              <th>Sakramen</th>
              <th>Pelayan Sakramen</th>
            </thead>
          </table>
        </div>
			</div>
		</div>
	</div>
</div>
<!-- /.row -->
