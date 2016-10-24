$('#addkomuni').click(function(e){
    e.preventDefault();

    location.href="<?php echo $this->Html->url(array('controller'=>'komuni', 'action'=>'tambah')).'/' ?>";
});

$(document).ready(function() {

  $("#nama_umat_komuni").autocomplete({
      source: function( request, response )
      {
          $.ajax({
              url       : "<?php echo $this->Html->url(array('controller' => 'komuni', 'action' => 'searchNama')) ?>",
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
                  $('#liberbap').prop('disabled', false);
                  $('#tglLahir').prop('disabled', false);
                  $('#tempatBaptis').prop('disabled', false);
                  $('#tanggal_baptis').prop('disabled', false);
                  $('#namaBaptis').prop('disabled', false);
                  $('#namaAyah').prop('disabled', false);
                  $('#namaIbu').prop('disabled', false);
                  $('#alamatOrtu').prop('disabled', false);

                  $('#idUmat').val("");
    		          $('#jnskel').val("");
    		          $('#tempatLahir').val("");
    		          $('#tanggal_lahir').val("");
                  $('#liberbap').val("");
                  $('#tglLahir').val("");
                  $('#tempatBaptis').val("");
                  $('#tanggal_baptis').val("");
                  $('#namaBaptis').val("");

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
                $('#liberbap').val(data.Baptis.liberbap);
                $('#tglLahir').val(data.Umat.tgl_lahir);
                $('#tempatBaptis').val(data.Baptis.tempat);
                $('#tanggal_baptis').val(data.Baptis.tanggal);
                $('#namaBaptis').val(data.Baptis.nama_baptis);
                $('#namaAyah').val(data.nama_ayah);
                $('#namaIbu').val(data.nama_ibu);
                $('#alamatOrtu').val(data.alamat_orangtua);

                $('#idUmat').prop('disabled', true);
  		          $('#jnskel').prop('disabled', true);
  		          $('#tempatLahir').prop('disabled', true);
  		          $('#tanggal_lahir').prop('disabled', true);
                $('#liberbap').prop('disabled', true);
                $('#tglLahir').prop('disabled', true);
                $('#tempatBaptis').prop('disabled', true);
                $('#tanggal_baptis').prop('disabled', true);
                $('#namaBaptis').prop('disabled', true);
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
              $('#liberbap').prop('disabled', false);
              $('#tglLahir').prop('disabled', false);
              $('#tempatBaptis').prop('disabled', false);
              $('#tanggal_baptis').prop('disabled', false);
              $('#namaBaptis').prop('disabled', false);
              $('#namaAyah').prop('disabled', false);
              $('#namaIbu').prop('disabled', false);
              $('#alamatOrtu').prop('disabled', false);

              $('#idUmat').val("");
              $('#jnskel').val("");
              $('#tempatLahir').val("");
              $('#tanggal_lahir').val("");
              $('#liberbap').val("");
              $('#tglLahir').val("");
              $('#tempatBaptis').val("");
              $('#tanggal_baptis').val("");
              $('#namaBaptis').val("");

              $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
              $('#cek_umat').css('color','red');
              $('#cek_umat').attr('cek',false);
              $('#form_id_umat').val("");
  		      }
  		  });
  	  },
  });

  $("#tempatKomuni").autocomplete({
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

});
