<?php 
if (strtolower($ctrl) === 'pernikahans') {
 ?>


$('#input_nama').keyup(function(){ 
   
   event.preventDefault();
    
    $.ajax({
     
     url : "<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'coba')) ?>",
     data: 
           {
              nama : $('#input_nama').val(),
           
           },
           type : 'GET',
      dataType: "json",
    success : function(response) {
     
      $.each(response, function(index, element) {
      if(element.status == 'success'){
      
        $('#cek_umat').addClass('fa fa-check fa-2x').removeClass('fa-times');
        $('#cek_umat').css('color','green');
        $('#cek_umat').attr('cek',true);
    }else{
       $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
        $('#cek_umat').css('color','red');
        $('#cek_umat').attr('cek',false);
        $('#form_id_umat').val("");
  }
         
        });
      
           
    },
    error : function() {
           alert('aaaax');
    }
   });
  
 });


$('#lingkungan_nama').keyup(function(){ 
   
   event.preventDefault();
    $.ajax({
     
     url : "<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'coba')) ?>",
     data: 
           {
              nama : $('#lingkungan_nama').val(),
           
           },
           type : 'GET',
      dataType: "json",
    success : function(response) {
     
      $.each(response, function(index, element) {
      if(element.status == 'success'){
      
        $('#cek_pasangan').addClass('fa fa-check fa-2x').removeClass('fa-times');
        $('#cek_pasangan').css('color','green');
        $('#cek_pasangan').attr('cek',true);
    }else{
       $('#cek_pasangan').addClass('fa fa-times fa-2x').removeClass('fa-check');
        $('#cek_pasangan').css('color','red');
        $('#cek_pasangan').attr('cek',false);
        $('#form_id_pasangan').val("");
  }
         
        });
      
           
    },
    error : function() {
           alert('aaaax');
    }
   });
  
 });




$("#btnSubmitEdit").click(function(e) {
e.preventDefault();

   if($('#libermateditper').val() != "" && $('#romoeditper').val() != "" && $('#tmpeditper').val() != "" || ($('#cekpassluar').val() == "luar" && $('#namaeditpas').val() != "" &&  $('#alamateditpas').val() != "" &&  $('#tmplhreditpas').val() != "" &&  $('#telpeditpas').val() != "")){
   bootbox.confirm("Apakah yakin untuk mengubah data pernikahan ini?", function(result) {

 if(result){
         $('#formEdit').submit();
}else{
       
    return;
}
}); 
  }else{
   bootbox.alert("Data pernikahan tidak boleh kosong !!",function(){
 return;
});
}
});

$("#buttonaddper").click(function(e) {
e.preventDefault();

     var umat = $('#input_nama').val();
    var pas = "";
    var pil = $('input[type=radio][name=radioPil]:checked').val();
    if($('input[type=radio][name=radioPil]:checked').val() == 'lain'){
         pas = $('#nm_pas_luar').val();
    }else{
        pas = $('#lingkungan_nama').val();
    }
    var cekpasluar = $('#nm_pas_luar').val();
    var cekumat = $('#cek_umat').attr('cek');
    var cekpass = $('#cek_pasangan').attr('cek');
    if((cekumat == 'true' && cekpass == 'true' && pil != 'lain') || (cekumat == 'true'  && pil == 'lain' && cekpasluar != "" && $('#alamat_pasangan_luar').val() != "" && $('#telp_pasangan_luar').val() != "" && $('#tmplahir_pasangan_luar').val() != "")){
       
    if($('#tmpper').val() != "" && $('#romoper').val() != "" && $('#libermatper').val() != "" && $('#tmpper').val() != "" ){

       bootbox.confirm("Apakah benar data yang anda masukkan bahwa " + umat + " menikah  dengan " + pas, function(result) {

           if(result){
                   $('#formSubmit').submit();
                }else{
                
              return;
            }
  }); 
}else{
  bootbox.alert("Data pernikahan tidak boleh kosong !!",function(){
 return;
});
}
  }else{
 bootbox.alert("Anda harus memasukkan nama umat dan nama pasangan dengan benar !!",function(){
 return;
});
}
});

$('#addpernikahan').click(function(e){
    e.preventDefault();
  
    location.href="<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'tambah')).'/' ?>";
});


$('#buttonbtlper').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'index')) ?>";
});


$('.btneditper').click(function(e){
    e.preventDefault();
    var idparam = $(this).attr('idparam');
    location.href="<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'edit')) ?>/" + idparam;
});

$('#editstatuspernikahan').click(function(e){
    e.preventDefault();
    
    $('#submitstatus').show();
    $('#editstatuspernikahan').hide();
      $('.pilstatus').prop('disabled', false);
    
});

$('#submitstatus').click(function(e){
   
    $('#submitstatus').hide();
    $('#editstatuspernikahan').show();

	$('.pilstatus').prop('disabled', true);

    <!-- location.href="<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'index')) ?>" -->
});

$( document ).ready(function() {
     $('#submitstatus').hide();
       $(".pilstatus").prop('disabled', true);
});




$('#finduserbtn').click(function(e){
    e.preventDefault();
    $('#frmCari').submit();
});
<?php 


}


 ?>