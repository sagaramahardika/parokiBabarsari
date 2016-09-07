<?php 
if (strtolower($ctrl) === 'pengurapans') {
 ?>

	$('#addpengurapan').click(function(e){
	    e.preventDefault();
	  
	    location.href="<?php echo $this->Html->url(array('controller'=>'pengurapans', 'action'=>'tambah')).'/' ?>";
	});

	$("#buttonaddpeng").click(function(e) {
		e.preventDefault();
		 $('#formSubmit').submit();

		//      var umat = $('#input_nama').val();
		//     var pas = "";
		//     var pil = $('input[type=radio][name=radioPil]:checked').val();
		//     if($('input[type=radio][name=radioPil]:checked').val() == 'lain'){
		//          pas = $('#nm_pas_luar').val();
		//     }else{
		//         pas = $('#lingkungan_nama').val();
		//     }
		//     var cekpasluar = $('#nm_pas_luar').val();
		//     var cekumat = $('#cek_umat').attr('cek');
		//     var cekpass = $('#cek_pasangan').attr('cek');
		//     if((cekumat == 'true' && cekpass == 'true' && pil != 'lain') || (cekumat == 'true'  && pil == 'lain' && cekpasluar != "" && $('#alamat_pasangan_luar').val() != "" && $('#telp_pasangan_luar').val() != "" && $('#tmplahir_pasangan_luar').val() != "")){
		       
		//     if($('#tmpper').val() != "" && $('#romoper').val() != "" && $('#libermatper').val() != "" && $('#tmpper').val() != "" ){

		//        bootbox.confirm("Apakah benar data yang anda masukkan bahwa " + umat + " menikah  dengan " + pas, function(result) {

		//            if(result){
		//                    $('#formSubmit').submit();
		//                 }else{
		                
		//               return;
		//             }
		//   }); 
		// }else{
		//   bootbox.alert("Data pernikahan tidak boleh kosong !!",function(){
		//  return;
		// });
		// }
		//   }else{
		//  bootbox.alert("Anda harus memasukkan nama umat dan nama pasangan dengan benar !!",function(){
		//  return;
		// });
		// }
	});

	$('#buttonbtlpeng').click(function(e){
	    e.preventDefault();
	    location.href="<?php echo $this->Html->url(array('controller'=>'pengurapans', 'action'=>'index')) ?>";
	});

	$('#finduserbtn').click(function(e){
	    e.preventDefault();
	    $('#frmCari').submit();
	});
<?php 
}
?>