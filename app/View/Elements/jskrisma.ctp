<?php 
if (strtolower($ctrl) === 'krismas') {
 ?>

if($('#stskrismaedit').val() == 1){
 		 $(".editkrisma").prop('disabled', true);
       
     
}

$('#stskrismaedit').change(function(e){
    if ($('#stskrismaedit').val() != 1) 
  { 
       $(".editkrisma").prop('disabled', false);
       $("#UmatTglkrismaDay").prop('disabled', false); 
        $("#UmatTglkrismaMonth").prop('disabled', false); 
          $("#UmatTglkrismaYear").prop('disabled', false); 
      
  } else {
      $(".editkrisma").prop('disabled', true); 
       
      $("#UmatTglkrismaDay").prop('disabled', true); 
        $("#UmatTglkrismaMonth").prop('disabled', true); 
          $("#UmatTglkrismaYear").prop('disabled', true); 
  }
});

$('#addkrisma').click(function(e){
    e.preventDefault();
  
    location.href="<?php echo $this->Html->url(array('controller'=>'krismas', 'action'=>'tambah')) ?>";
});


$('#buttonbtlper').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'krismas', 'action'=>'index')) ?>";
});

$('#btnsubmitkris').click(function(e){
    e.preventDefault();

   

    bootbox.confirm("Apakah yakin untuk mengubah data krisma ini?", function(result) {

 if(result){
         $('#formKrisEdit').submit();
}else{
       
    return;
}
}); 


});


$('.btneditkris').click(function(e){
    e.preventDefault();
    var idparam = $(this).attr('idparam');
    location.href="<?php echo $this->Html->url(array('controller'=>'krismas', 'action'=>'edit')) ?>/" + idparam;
});

$('#finduserbtn').click(function(e){
    e.preventDefault();
    $('#frmCari').submit();
});
<?php 


}


 ?>