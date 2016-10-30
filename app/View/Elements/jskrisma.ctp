 $("#namaDiriKrisma").autocomplete({
     source: function( request, response )
     {
         $.ajax({
             url       : "<?php echo $this->Html->url(array('controller' => 'Krismas', 'action' => 'findAll')) ?>",
             data      : { nama : request.term},
             type      : "GET",
             dataType  : "json",
             success   : function(data)
             {
               if(data.length == 0){
                 $('#idUmat').prop('disabled', false);
                 $('#namaBaptis').prop('disabled', false);
                 $('#tempatLahir').prop('disabled', false);
                 $('#tanggalLahir').prop('disabled', false);
                 $('#tempatBaptis').prop('disabled', false);
                 $('#tanggalBaptis').prop('disabled', false);
                 $('#bukuBaptis').prop('disabled', false);
                 $('#tempatKomuni').prop('disabled', false);
                 $('#tanggalKomuni').prop('disabled', false);
                 $('#alamatDiri').prop('disabled', false);
                 $('#noHpDiri').prop('disabled', false);
                 $('#namaAyah').prop('readonly', false);
                 $('#namaIbu').prop('readonly', false);
                 $('#alamatOrtu').prop('readonly', false);

                 $('#idUmat').val("");
                 $('#namaBaptis').val("");
                 $('#tempatLahir').val("");
                 $('#tanggalLahir').val("");
                 $('#tempatBaptis').val("");
                 $('#tanggalBaptis').val("");
                 $('#bukuBaptis').val("");
                 $('#tempatKomuni').val("");
                 $('#tanggalKomuni').val("");
                 $('#alamatDiri').val("");
                 $('#noHpDiri').val("");
                 $('#namaAyah').val("");
                 $('#namaIbu').val("");
                 $('#alamatOrtu').val("");
               }

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
     type: 'json',
     select: function (event, ui) {
       var term = ui.item.label;
       $.ajax({
           url       : "<?php echo $this->Html->url(array('controller' => 'Krismas', 'action' => 'findUmat')) ?>",
           data      : { nama : term},
           type      : "GET",
           dataType  : "json",
           success   : function(data)
           {
               $('#idUmat').val(data.Umat.id);
               $('#namaBaptis').val(data.Baptis.nama_baptis);
               $('#tempatLahir').val(data.Umat.tmplahir);
               $('#tanggalLahir').val(data.Umat.tgl_lahir);
               $('#tempatBaptis').val(data.Baptis.tempat);
               $('#tanggalBaptis').val(data.Baptis.tanggal);
               $('#bukuBaptis').val(data.Baptis.liberbap);
               $('#tempatKomuni').val(data.Umat.tmpkomuni);
               $('#tanggalKomuni').val(data.Umat.tglkomuni);
               $('#alamatDiri').val(data.Umat.alamat);
               $('#noHpDiri').val(data.Umat.tlp);
               $('#namaAyah').val(data.nama_ayah);
               $('#namaIbu').val(data.nama_ibu);
               $('#alamatOrtu').val(data.alamat_orangtua);

               $('#namaBaptis').prop('disabled', true);
               $('#tempatLahir').prop('disabled', true);
               $('#tanggalLahir').prop('disabled', true);
               $('#tempatBaptis').prop('disabled', true);
               $('#tanggalBaptis').prop('disabled', true);
               $('#bukuBaptis').prop('disabled', true);
               $('#tempatKomuni').prop('disabled', true);
               $('#tanggalKomuni').prop('disabled', true);
               $('#alamatDiri').prop('disabled', true);
               $('#noHpDiri').prop('disabled', true);
               $('#namaAyah').prop('readonly', true);
               $('#namaIbu').prop('readonly', true);
               $('#alamatOrtu').prop('readonly', true);
           },
           error: function(e){

             $('#idUmat').prop('disabled', false);
             $('#namaBaptis').prop('disabled', false);
             $('#tempatLahir').prop('disabled', false);
             $('#tanggalLahir').prop('disabled', false);
             $('#tempatBaptis').prop('disabled', false);
             $('#tanggalBaptis').prop('disabled', false);
             $('#bukuBaptis').prop('disabled', false);
             $('#tempatKomuni').prop('disabled', false);
             $('#tanggalKomuni').prop('disabled', false);
             $('#alamatDiri').prop('disabled', false);
             $('#noHpDiri').prop('disabled', false);
             $('#namaAyah').prop('readonly', false);
             $('#namaIbu').prop('readonly', false);
             $('#alamatOrtu').prop('readonly', false);

             $('#idUmat').val("");
             $('#namaBaptis').val("");
             $('#tempatLahir').val("");
             $('#tanggalLahir').val("");
             $('#tempatBaptis').val("");
             $('#tanggalBaptis').val("");
             $('#bukuBaptis').val("");
             $('#tempatKomuni').val("");
             $('#tanggalKomuni').val("");
             $('#alamatDiri').val("");
             $('#noHpDiri').val("");
             $('#namaAyah').val("");
             $('#namaIbu').val("");
             $('#alamatOrtu').val("");
           }
       });
     },
 });


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
