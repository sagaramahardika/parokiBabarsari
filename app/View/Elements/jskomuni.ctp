<?php 
if (strtolower($ctrl) === 'komuni') {
 ?>




 if($('#stskomedit').val() == 0){
 		 $(".editkom").prop('disabled', true);
    
}

$('#stskomedit').change(function(e){
    if ($('#stskomedit').val() != 0) 
  { 
       $(".editkom").prop('disabled', false);
      
  } else {
      $(".editkom").prop('disabled', true); 
        
  }
});


$('#addkomuni').click(function(e){
    e.preventDefault();
  
    location.href="<?php echo $this->Html->url(array('controller'=>'komuni', 'action'=>'tambah')) ?>";
});


$('#buttonbtlkom').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'komuni', 'action'=>'index')) ?>";
});
$('#btnsubmitkom').click(function(e){
    e.preventDefault();
   
    

    bootbox.confirm("Apakah yakin untuk mengubah data komuni ini?", function(result) {

 if(result){
         $('#formeditkom').submit();
}else{
       
    return;
}
}); 


});
$('.btneditkom').click(function(e){
    e.preventDefault();
    var idparam = $(this).attr('idparam');
    location.href="<?php echo $this->Html->url(array('controller'=>'komuni', 'action'=>'edit')) ?>/" + idparam;
});


$('#finduserbtn').click(function(e){
    e.preventDefault();
    $('#frmCari').submit();
});
<?php 


}


 ?>