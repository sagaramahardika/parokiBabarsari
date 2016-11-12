  $('#form_pasangan_lain').hide();
  $('#nama_pasangan_dalam').hide();
  $('#lingkungan_nama').prop('disabled', true);

  $('input[type=radio][name=radioPil]').change(function(){
    if(this.value != 'lain'){
      $('#form_pasangan_lain').hide();
      $('#nama_pasangan_dalam').show();
      $('.form_pasangan').val("");
      $('.form_pasangan').prop('disabled', true);
      $('#lingkungan_nama').val("");
      $('#cek_pasangan').attr('cek',false);

      if($('#input_nama').val() == ""){
        $('#lingkungan_nama').prop('disabled', true);
      } else {
        $('#lingkungan_nama').prop('disabled', false);
      }

      $('#cek_pasangan').addClass('fa fa-times fa-2x').removeClass('fa-check');
      $('#cek_pasangan').css('color','red');
      $('#cek_pasangan').attr('cek',false);
      $('#form_id_pasangan').val("");

      if(this.value == 'ling'){
        $('#lingkungan_nama').attr('type_find','ling');
      }else if(this.value=='wil'){
        $('#lingkungan_nama').attr('type_find','wil');
      }
      else if(this.value=='par'){
        $('#lingkungan_nama').attr('type_find','par');
      }
    } else {
      $('#nama_pasangan_dalam').hide();
      $('#form_pasangan_lain').show();
      $('.form_pasangan').prop('disabled', false);
      $('#lingkungan_nama').prop('disabled', true);
      $('#lingkungan_nama').val("");
      $('#form_id_pasangan').val("");
      $('#cek_pasangan').addClass('fa fa-times fa-2x').removeClass('fa-check');
      $('#cek_pasangan').css('color','red');
      $('#cek_pasangan').attr('cek',false);
      $('#form_id_pasangan').val("");
    }
  });

  $('#input_nama').change(function(){
    if($("#input_nama").val() != ""){
      $('#lingkungan_nama').prop('disabled', false);
    }else{
      $('#lingkungan_nama').prop('disabled', true);
    }
  });

  $("#nama_lengkap").autocomplete({
      source: function( request, response )
      {
          $.ajax({
              url       : "<?php echo $this->Html->url(array('controller' => 'kematians', 'action' => 'findAll')) ?>",
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

  $( "#input_nama" ).autocomplete({
    source:  function( request, response )
    {
      $.ajax(
      {
          url:"<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'findAll')) ?>",
          data: {
            term: request.term
          },
          type: "GET",
          dataType: "json",
          success: function( data )
          {
            response( $.map( data, function( item )
            {
                return{
                  value: item.value,
                  id: item.id,
                  gender: item.jenis_kelamin
                 }
            }));
          }
      });
    },
    minLength: 1,
    autoFocus: true,
    type: 'json',
    select: function( event, ui ) {
      a = ui.item.id;
      b = ui.item.gender;
      $('#non_umat').attr('gender',b);
      $('#lingkungan_nama').attr('gender',b);
      $('#lingkungan_nama').attr('id_umat',a);
      $('#form_id_umat').val(a);
      $('#lingkungan_nama').prop('disabled', false);

      $('#cek_umat').addClass('fa fa-check fa-2x').removeClass('fa-times');
      $('#cek_umat').css('color','green');
      $('#cek_umat').attr('cek',true);
    }
  });

  $( "#non_umat" ).autocomplete({
    source:  function( request, response )
    {
      $.ajax(
      {
          url:"<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'findNonUmat')) ?>",
          data: {
            term: request.term,
            gender: $('#non_umat').attr('gender')
          },
          type: "GET",
          dataType: "json",
          success: function( data )
          {
            response( $.map( data, function( item )
            {
                return{
                  value: item.value
                 }
            }));
          }
      });
    },
    minLength: 1,
    autoFocus: true,
    type: 'json',
    select: function( event, ui ) {
      // console.log(ui);
      // console.log()
      // $('#nmayah').val(ui.item.ayah);
      // $('#nmibu').val(ui.item.ibu);
      // $('#tmplahir_pasangan_luar').val(ui.item.tempat_lahir);
      // $('#tgllahir_pasangan').val(ui.item.tanggal_lahir);
      var term = ui.item.label;
        $.ajax({
            url       : "<?php echo $this->Html->url(array('controller' => 'pernikahans', 'action' => 'dataNonUmat')) ?>",
            data      : { nama : term },
            type      : "GET",
            dataType  : "json",
            success   : function(data)
            {
                console.log(data);
                $('#nmayah').val(data.Baptis.ayah);
                $('#nmibu').val(data.Baptis.ibu);
                $('#tmplahir_pasangan_luar').val(data.Baptis.tempat_lahir);
                $('#tgllahir_pasangan').val(data.Baptis.tanggal_lahir);

                // console.log(data)
                // $('#idUmat').val(data.Umat.id);
                // $('#jnskel').val(data.Umat.jenis_kelamin);
                // $('#tempatLahir').val(data.Umat.tmplahir);
                // $('#tanggal_lahir').val(data.Umat.tgl_lahir);
                // $('#tglLahir').val(data.Umat.tgl_lahir);
                // $('#namaAyah').val(data.nama_ayah);
                // $('#namaIbu').val(data.nama_ibu);
                // $('#namaAyah').val(data.Umat.nama_ayah);
                // $('#namaIbu').val(data.Umat.nama_ibu);

                // $('#jnskel').prop('disabled', true);
                // $('#tempatLahir').prop('disabled', true);
                // $('#tanggal_lahir').prop('disabled', true);
                // $('#tglLahir').prop('disabled', true);
                // $('#namaAyah').prop('disabled', true);
                // $('#namaIbu').prop('disabled', true);
                // $('#alamatOrtu').prop('disabled', true);
                // $('#cek_umat').addClass('fa fa-check fa-2x').removeClass('fa-times');
                // $('#cek_umat').css('color','green');
                // $('#cek_umat').attr('cek',true);
            },
            error: function(e){

              // $('#idUmat').prop('disabled', false);
              // $('#jnskel').prop('disabled', false);
              // $('#tempatLahir').prop('disabled', false);
              // $('#tanggal_lahir').prop('disabled', false);
              // $('#tglLahir').prop('disabled', false);
              // $('#namaAyah').prop('disabled', false);
              // $('#namaIbu').prop('disabled', false);
              // $('#alamatOrtu').prop('disabled', false);

              // $('#idUmat').val("");
              // $('#jnskel').val("");
              // $('#tempatLahir').val("");
              // $('#tanggal_lahir').val("");
              // $('#tglLahir').val("");

              // $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
              // $('#cek_umat').css('color','red');
              // $('#cek_umat').attr('cek',false);
              // $('#form_id_umat').val("");
          }
        });


        // 
    }
  });

  $( "#lingkungan_nama" ).autocomplete({
    source:  function( request, response )
    {
      $.ajax(
      {
        url:"<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'find')) ?>",
        data: {
          term: request.term,
          gender: $('#lingkungan_nama').attr('gender'),
          idUmat : $('#lingkungan_nama').attr('id_Umat'),
          tipe : $('#lingkungan_nama').attr('type_find')
        },

        type: "GET",
        dataType: "json",
        success: function( data )
        {
          response( $.map( data, function( item )
          {
            return{
              id : item.id,

              value: item.value,
              key: item.id,

              ayah : item.ayah,
              ibu : item.ibu,
              data : item
            }
          }));
        }
      });
    },
    minLength:1,
    autoFocus: true,
    type: 'json',
    select: function( event, ui ) {
      a  = ui.item.id;
      $('#form_id_pasangan').val(a);
      $('#nmayah').val(ui.item.ayah);
      $('#nmibu').val(ui.item.ibu); 
      $('#cek_pasangan').addClass('fa fa-check fa-2x').removeClass('fa-times');
      $('#cek_pasangan').css('color','green');
      $('#cek_pasangan').attr('cek',true);
    }
  });
