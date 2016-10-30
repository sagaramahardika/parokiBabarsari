$("#namaDiriKematian").autocomplete({
    source: function( request, response )
    {
        $.ajax({
            url       : "<?php echo $this->Html->url(array('controller' => 'Kematians', 'action' => 'findAll')) ?>",
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
                $('#tempatKomuni').prop('disabled', true);
                $('#tanggalKomuni').prop('disabled', true);
                $('#namaAyah').prop('readonly', false);
                $('#namaIbu').prop('readonly', false);
                $('#alamatOrtu').prop('disabled', false);

                $('#idUmat').val("");
                $('#namaBaptis').val("");
                $('#tempatLahir').val("");
                $('#tanggalLahir').val("");
                $('#tempatBaptis').val("");
                $('#tanggalBaptis').val("");
                $('#bukuBaptis').val("");
                $('#tempatKomuni').val("");
                $('#tanggalKomuni').val("");
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
          url       : "<?php echo $this->Html->url(array('controller' => 'Kematians', 'action' => 'findUmat')) ?>",
          data      : { nama : term},
          type      : "GET",
          dataType  : "json",
          success   : function(data)
          {
              $('#idUmat').val(data.Umat.id);
              $('#namaBaptis').val(data.Baptis.nama_baptis);
              $('#tempatLahir').val(data.Umat.tmplahir);
              $('#tanggalLahir').val(data.Umat.tgl_lahir);
              $('#namaAyah').val(data.nama_ayah);
              $('#namaIbu').val(data.nama_ibu);
              $('#tempatBaptis').val(data.Baptis.tempat);
              $('#tanggalBaptis').val(data.Baptis.tanggal);
              $('#bukuBaptis').val(data.Baptis.liberbap);

              $('#namaBaptis').prop('disabled', true);
              $('#tempatLahir').prop('disabled', true);
              $('#tanggalLahir').prop('disabled', true);
              $('#namaAyah').prop('readonly', true);
              $('#namaIbu').prop('readonly', true);
              $('#tempatBaptis').prop('disabled', true);
              $('#tanggalBaptis').prop('disabled', true);
              $('#bukuBaptis').prop('disabled', true);
          },
          error: function(e){
            $('#idUmat').prop('disabled', false);
            $('#namaBaptis').prop('disabled', false);
            $('#tempatLahir').prop('disabled', false);
            $('#tanggalLahir').prop('disabled', false);
            $('#namaAyah').prop('readonly', false);
            $('#namaIbu').prop('readonly', false);
            $('#tempatBaptis').prop('disabled', false);
            $('#tanggalBaptis').prop('disabled', false);
            $('#bukuBaptis').prop('disabled', false);

            $('#namaBaptis').val("");
            $('#tempatLahir').val("");
            $('#tanggalLahir').val("");
            $('#namaAyah').val("");
            $('#namaIbu').val("");
            $('#tempatBaptis').val("");
            $('#tanggalBaptis').val("");
            $('#bukuBaptis').val("");
          }
      });
    },
});
