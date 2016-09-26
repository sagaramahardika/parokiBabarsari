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
     }else{
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
}else{
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
                      term: request.term,
                      gender: 'L'

                    },
              type: "GET",
              dataType: "json",
              success: function( data )
              {
                response( $.map( data, function( item )
                {
                    return{
                      value: item.value,
                      id: item.id
                     }
                }));
              }
          });
      },
       minLength:1,
       autoFocus: true,
       type: 'json',
       select: function( event, ui ) {
      						a = ui.item.id;
                  b = ui.item.gender;
                  $('#lingkungan_nama').attr('gender',b);
                  $('#lingkungan_nama').attr('id_umat',a);
      		 $('#form_id_umat').val(a);
          $('#lingkungan_nama').prop('disabled', false);

           $('#cek_umat').addClass('fa fa-check fa-2x').removeClass('fa-times');
              $('#cek_umat').css('color','green');
              $('#cek_umat').attr('cek',true);
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
                            gender:$('#lingkungan_nama').attr('gender'),
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
                                   <!--  label: item.label, -->
                                   id : item.id,

                                    value: item.value,
                                    key:item.id,

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

     $('#cek_pasangan').addClass('fa fa-check fa-2x').removeClass('fa-times');
        $('#cek_pasangan').css('color','green');
        $('#cek_pasangan').attr('cek',true);
  }
    });
