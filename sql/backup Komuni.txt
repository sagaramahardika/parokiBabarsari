<?php
if (strtolower($ctrl) === 'komuni') {
  /*
 ?>

 $("#nama_umat").mouseout(function(){
   event.preventDefault();
   var term = $("#nama_umat").val();
   console.log(term)
   $.ajax({
       url       : "<?php echo $this->Html->url(array('controller' => 'komuni', 'action' => 'findUmat')) ?>",
       data      : { nama : term},
       type      : "GET",
       dataType  : "json",
       success   : function(data)
       {
           console.log(data)
           $('#idUmat').val(data.Umat.id);
           $('#jnskel').val(data.Umat.jenis_kelamin);
           $('#tempatLahir').val(data.Umat.tmplahir);
           $('#tglLahir').val(data.Umat.tgl_lahir);
           $('#tempatBaptis').val(data.Baptis.tempat);
           $('#tglBaptis').val(data.Baptis.tanggal);
           if(data.Baptis.nama_baptis == null){
             $('#namaBaptis').val('-');
           }else{
             $('#namaBaptis').val(data.Baptis.nama_baptis);
           }
           $('#cek_umat').addClass('fa fa-check fa-2x').removeClass('fa-times');
           $('#cek_umat').css('color','green');
           $('#cek_umat').attr('cek',true);

           $('#jnskel').prop('disabled', true);
           $('#tempatLahir').prop('disabled', true);
           $('#tglLahir').prop('disabled', true);
           $('#tempatBaptis').prop('disabled', true);
           $('#tglBaptis').prop('disabled', true);
           $('#namaBaptis').prop('disabled', true);

           $('#noTelpOrangtua').prop('disabled', true);
           $('#alamatOrtu').prop('disabled', true);
           $('#namaIbu').prop('disabled', true);
           $('#namaAyah').prop('disabled', true);
           $('#noBukuBaptis').prop('disabled', true);
           $('#bukuBaptis').prop('disabled', true);

       },
       error: function(e){
          console.log(e);
          /*
          $('#jnskel').val('-');
          $('#tempatLahir').val('-');
          $('#tglLahir').val('-');
          $('#tempatBaptis').val('-');
          $('#tglBaptis').val('-');
          $('#namaBaptis').val('-');
          $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
          $('#cek_umat').css('color','red');
          $('#cek_umat').attr('cek',false);
          $('#form_id_umat').val("");

          $('#jnskel').prop('disabled', false);
          $('#tempatLahir').prop('disabled', false);
          $('#tglLahir').prop('disabled', false);
          $('#tempatBaptis').prop('disabled', false);
          $('#tglBaptis').prop('disabled', false);
          $('#namaBaptis').prop('disabled', false);
          $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
          $('#cek_umat').css('color','red');
          $('#cek_umat').attr('cek',false);

          $('#noTelpOrangtua').prop('disabled', false);
          $('#alamatOrtu').prop('disabled', false);
          $('#namaIbu').prop('disabled', false);
          $('#namaAyah').prop('disabled', false);
          $('#noBukuBaptis').prop('disabled', false);
          $('#bukuBaptis').prop('disabled', false);

          $('#form_id_umat').val("");
       }
   });
 });*/

 $("#nama_umat").autocomplete({
     source: function( request, response )
     {
         $.ajax({
             url       : "<?php echo $this->Html->url(array('controller' => 'komuni', 'action' => 'searchNama')) ?>",
             data      : { nama : request.term},
             type      : "GET",
             dataType  : "json",
             success   : function(data)
             {
                 response( $.map(data, function ( item )
                 {
                     return{
                         value: item.nama,
                     }
                 }));
             }
         });
     },
     minLength: 1,
     autoFocuse: true,
     type: 'json'
 });

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

*/
 ?>
