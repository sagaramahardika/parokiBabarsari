<?php
$this->assign('title', 'Halaman Halaman Pengaturan');
?>
<h1>Pegaturan Sistem</h1>
<?php echo $this->Html->link( "Logout",   array('action'=>'logout') ); ?> 
<table class="table">
	<thead>
		<tr>
			<td>Nama Umat</td>
			<td>Nama Baptis</td>
			<td>Tanggal</td>
			<td>Liber Baptis</td>
			<td>Tempat</td>
			<td>Romo</td>
		</tr>
	</thead>
	<tbody>
		<?php foreach($datas as $data){?>
		<tr>
			<?php $idumat = $data['Baptis']['id_umat'] 
			?>
			<td><?php echo $umats[$idumat]; ?>
			<td><?php echo $data['Baptis']['nama_baptis'] ?>				
			<td> <?php echo $data['Baptis']['tanggal'] ?></td>
			<td><?php echo $data['Baptis']['liberbap'] ?></td>
			<td><?php echo $data['Baptis']['tempat'] ?></td>	
			<td><?php echo $data['Baptis']['romo'] ?></td>
			<td>
				<button class="btnedit" idparam="<?php echo $data['Baptis']['id_umat'] ?>">
					<i class="fa fa-pencil"></i>
				</button></td>
			</td>
		</tr>
		<?php } ?>
	</tbody>
</table>
<div class="paging">
	<?php
		echo $this->Paginator->prev(' << ',array('escape' => false), null, array('escape'=>'false', 'class'=>'prev disabled')).$this->Paginator->numbers(array('before'=>false, 'after'=>false, 'separator'=>false)).$this->Paginator->next(' >> ', array('escape' => false), null, array('escape'=>false, 'class'=>'next disabled'));
	?>

</div>	