<?php
$this->assign('title', 'Halaman Halaman Pengaturan');
?>
<h1>Pegaturan Sistem</h1>
<table class="table">
	<thead>
		<tr>
			<td>Parameter</td>
			<td>Value</td>
		</tr>
	</thead>
	<tbody>
		<?php foreach($datas as $data){?>
		<tr>
			<td><?php echo $data['Setup']['parameter'] ?>
				<button id="btnedit" idparam="<?php echo $data['Setup']['id'] ?>">
					<i class="fa fa-pencil"></i>
				</button></td>
			<td> <?php echo $data['Setup']['value'] ?></td>
		</tr>
		<?php } ?>
	</tbody>
</table>