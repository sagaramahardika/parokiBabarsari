$('#addbaptisditerima').click(function(e){
  console.log('a')
    e.preventDefault();

    location.href="<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'tambah')).'/' ?>";
});
$('#addbaptisanak').click(function(e){
    e.preventDefault();

    location.href="<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'tambahBaptisAnak')).'/' ?>";
});
$('#addbaptisdewasa').click(function(e){
    e.preventDefault();

    location.href="<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'tambahBaptisDewasa')).'/' ?>";
});
$('#addbaptisdarurat').click(function(e){
    e.preventDefault();

    location.href="<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'tambahBaptisDarurat')).'/' ?>";
});

function baptistotal(){

}

$(document).ready(function() {

  $("#nama_umat").autocomplete({
      source: function( request, response )
      {
          $.ajax({
              url       : "<?php echo $this->Html->url(array('controller' => 'Baptis', 'action' => 'searchNama')) ?>",
              data      : { nama : request.term},
              type      : "GET",
              dataType  : "json",
              success   : function(data)
              {
                if(data.length == 0){
                  $('#idUmat').prop('disabled', false);
                  $('#jnskel').prop('disabled', false);
                  $('#tempatLahir').prop('disabled', false);
                  $('#tanggal_lahir').prop('disabled', false);
                  $('#tglLahir').prop('disabled', false);
                  $('#namaAyah').prop('disabled', false);
                  $('#namaIbu').prop('disabled', false);
                  $('#alamatOrtu').prop('disabled', false);

                  $('#idUmat').val("");
    		          $('#jnskel').val("");
    		          $('#tempatLahir').val("");
    		          $('#tanggal_lahir').val("");
                  $('#tglLahir').val("");

                  $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
                  $('#cek_umat').css('color','red');
                  $('#cek_umat').attr('cek',false);
                  $('#form_id_umat').val("");
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
  		      url       : "<?php echo $this->Html->url(array('controller' => 'Komuni', 'action' => 'findUmat')) ?>",
  		      data      : { nama : term},
  		      type      : "GET",
  		      dataType  : "json",
  		      success   : function(data)
  		      {
  		          console.log(data)
  		          $('#idUmat').val(data.Umat.id);
  		          $('#jnskel').val(data.Umat.jenis_kelamin);
  		          $('#tempatLahir').val(data.Umat.tmplahir);
  		          $('#tanggal_lahir').val(data.Umat.tgl_lahir);
                $('#tglLahir').val(data.Umat.tgl_lahir);
                //$('#namaAyah').val(data.nama_ayah);
                //$('#namaIbu').val(data.nama_ibu);
                $('#namaAyah').val(data.Umat.nama_ayah);
                $('#namaIbu').val(data.Umat.nama_ibu);

  		          $('#jnskel').prop('disabled', true);
  		          $('#tempatLahir').prop('disabled', true);
  		          $('#tanggal_lahir').prop('disabled', true);
                $('#tglLahir').prop('disabled', true);
                $('#namaAyah').prop('disabled', true);
                $('#namaIbu').prop('disabled', true);
                $('#alamatOrtu').prop('disabled', true);
  		          $('#cek_umat').addClass('fa fa-check fa-2x').removeClass('fa-times');
  		          $('#cek_umat').css('color','green');
  		          $('#cek_umat').attr('cek',true);
  		      },
  		      error: function(e){

              $('#idUmat').prop('disabled', false);
              $('#jnskel').prop('disabled', false);
              $('#tempatLahir').prop('disabled', false);
              $('#tanggal_lahir').prop('disabled', false);
              $('#tglLahir').prop('disabled', false);
              $('#namaAyah').prop('disabled', false);
              $('#namaIbu').prop('disabled', false);
              $('#alamatOrtu').prop('disabled', false);

              $('#idUmat').val("");
              $('#jnskel').val("");
              $('#tempatLahir').val("");
              $('#tanggal_lahir').val("");
              $('#tglLahir').val("");

              $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
              $('#cek_umat').css('color','red');
              $('#cek_umat').attr('cek',false);
              $('#form_id_umat').val("");
  		      }
  		  });
  	  },
  });

  $("#tempatBaptis").autocomplete({
      source: function( request, response )
      {
          $.ajax({
              url       : "<?php echo $this->Html->url(array('controller' => 'baptis', 'action' => 'searchParoki')) ?>",
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

  if($( "#status_perkawinan_calon option:selected" ).text() == "Belum Menikah"){
    $('.nosurat').val("");
    $('.nosurat').css("display","none");
    $('.nosurat').prop('disabled', true);

    $('.tanggal_perkawinan').val("");
    $('.tanggal_perkawinan').css("display","none");
    $('.tanggal_perkawinan').prop('disabled', true);

    $('.tempat_pernikahan').val("");
    $('.tempat_pernikahan').css("display","none");
    $('.tempat_pernikahan').prop('disabled', true);

    $('.nama_pasangan').val("");
    $('.nama_pasangan').css("display","none");
    $('.nama_pasangan').prop('disabled', true);

    $('.alasan_batal_nikah').val("");
    $('.alasan_batal_nikah').css("display","none");
    $('.alasan_batal_nikah').prop('disabled', true);

    $('.menikah_secara').val("");
    $('.menikah_secara').css("display","none");
    $('.menikah_secara').prop('disabled', true);
  }else if($( "#status_perkawinan_calon option:selected" ).text() == "Sudah Menikah"){
    $('.nosurat').val("");
    $('.nosurat').css("display","none");
    $('.nosurat').prop('disabled', true);

    $('.label_tanggal_perkawinan').text("Tanggal Pernikahan");

    $('.alasan_batal_nikah').val("");
    $('.alasan_batal_nikah').css("display","none");
    $('.alasan_batal_nikah').prop('disabled', true);
  }else if($( "#status_perkawinan_calon option:selected" ).text() == "Akan Menikah"){
    $('.nosurat').val("");
    $('.nosurat').css("display","none");
    $('.nosurat').prop('disabled', true);

    $('.alasan_batal_nikah').val("");
    $('.alasan_batal_nikah').css("display","none");
    $('.alasan_batal_nikah').prop('disabled', true);

    $('.menikah_secara').val("");
    $('.menikah_secara').css("display","none");
    $('.menikah_secara').prop('disabled', true);
  }else if($( "#status_perkawinan_calon option:selected" ).text() == "Perkawinan diputuskan / dibatalkan"){
    $('.nosurat').val("");
    $('.nosurat').css("display","");
    $('.nosurat').prop('disabled', false);

    $('.tanggal_perkawinan').val("");
    $('.tanggal_perkawinan').css("display","");
    $('.tanggal_perkawinan').prop('disabled', false);

    $('.label_tanggal_perkawinan').text("Tanggal Pembatalan Pernikahan");

    $('.tempat_pernikahan').val("");
    $('.tempat_pernikahan').css("display","none");
    $('.tempat_pernikahan').prop('disabled', true);

    $('.nama_pasangan').val("");
    $('.nama_pasangan').css("display","none");
    $('.nama_pasangan').prop('disabled', true);

    $('.menikah_secara').val("");
    $('.menikah_secara').css("display","none");
    $('.menikah_secara').prop('disabled', true);
  }

  $('#status_perkawinan_calon').on('change', function(){
    if($( "#status_perkawinan_calon option:selected" ).text() == "Belum Menikah"){
      $('.nosurat').val("");
      $('.nosurat').css("display","none");
      $('.nosurat').prop('disabled', true);

      $('.tanggal_perkawinan').val("");
      $('.tanggal_perkawinan').css("display","none");
      $('.tanggal_perkawinan').prop('disabled', true);

      $('.tempat_pernikahan').val("");
      $('.tempat_pernikahan').css("display","none");
      $('.tempat_pernikahan').prop('disabled', true);

      $('.nama_pasangan').val("");
      $('.nama_pasangan').css("display","none");
      $('.nama_pasangan').prop('disabled', true);

      $('.alasan_batal_nikah').val("");
      $('.alasan_batal_nikah').css("display","none");
      $('.alasan_batal_nikah').prop('disabled', true);

      $('.menikah_secara').val("");
      $('.menikah_secara').css("display","none");
      $('.menikah_secara').prop('disabled', true);
    } else if ($( "#status_perkawinan_calon option:selected" ).text() == "Sudah Menikah"){
      $('.nosurat').val("");
      $('.nosurat').css("display","none");
      $('.nosurat').prop('disabled', true);

      $('.tanggal_perkawinan').val("");
      $('.tanggal_perkawinan').css("display","");
      $('.tanggal_perkawinan').prop('disabled', false);

      $('.label_tanggal_perkawinan').text("Tanggal Pernikahan");

      $('.tempat_pernikahan').val("");
      $('.tempat_pernikahan').css("display","");
      $('.tempat_pernikahan').prop('disabled', false);

      $('.nama_pasangan').val("");
      $('.nama_pasangan').css("display","");
      $('.nama_pasangan').prop('disabled', false);

      $('.alasan_batal_nikah').val("");
      $('.alasan_batal_nikah').css("display","none");
      $('.alasan_batal_nikah').prop('disabled', true);

      $('.menikah_secara').val("");
      $('.menikah_secara').css("display","");
      $('.menikah_secara').prop('disabled', false);
    } else if ($( "#status_perkawinan_calon option:selected" ).text() == "Akan Menikah"){
      $('.nosurat').val("");
      $('.nosurat').css("display","none");
      $('.nosurat').prop('disabled', true);

      $('.tanggal_perkawinan').val("");
      $('.tanggal_perkawinan').css("display","");
      $('.tanggal_perkawinan').prop('disabled', false);

      $('.label_tanggal_perkawinan').text("Tanggal Pernikahan");

      $('.tempat_pernikahan').val("");
      $('.tempat_pernikahan').css("display","");
      $('.tempat_pernikahan').prop('disabled', false);

      $('.nama_pasangan').val("");
      $('.nama_pasangan').css("display","");
      $('.nama_pasangan').prop('disabled', false);

      $('.alasan_batal_nikah').val("");
      $('.alasan_batal_nikah').css("display","none");
      $('.alasan_batal_nikah').prop('disabled', true);

      $('.menikah_secara').val("");
      $('.menikah_secara').css("display","none");
      $('.menikah_secara').prop('disabled', true);
    } else if ($( "#status_perkawinan_calon option:selected" ).text() == "Perkawinan diputuskan / dibatalkan"){
      $('.nosurat').val("");
      $('.nosurat').css("display","");
      $('.nosurat').prop('disabled', false);

      $('.tanggal_perkawinan').val("");
      $('.tanggal_perkawinan').css("display","");
      $('.tanggal_perkawinan').prop('disabled', false);

      $('.label_tanggal_perkawinan').text("Tanggal Pembatalan Pernikahan");

      $('.tempat_pernikahan').val("");
      $('.tempat_pernikahan').css("display","none");
      $('.tempat_pernikahan').prop('disabled', true);

      $('.nama_pasangan').val("");
      $('.nama_pasangan').css("display","none");
      $('.nama_pasangan').prop('disabled', true);

      $('.alasan_batal_nikah').val("");
      $('.alasan_batal_nikah').css("display","");
      $('.alasan_batal_nikah').prop('disabled', false);

      $('.menikah_secara').val("");
      $('.menikah_secara').css("display","none");
      $('.menikah_secara').prop('disabled', true);
    }
  })

});
