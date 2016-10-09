<?php
$urole = 'baptis';
if (strtolower($ctrl) === 'baptis') {
  /*sementara
 ?>
$(document).ready(function() {
	if (!document.getElementById('checkBaptis').checked)
  {
      $("#bapNama").prop('disabled', true);
      $("#bapTanggalMonth").prop('disabled', true);
      $("#bapTanggalDay").prop('disabled', true);
      $("#bapTanggalYear").prop('disabled', true);
 	  $("#bapTempat").prop('disabled', true);
      $("#bapRomo").prop('disabled', true);
  }
});
$('#checkBaptis').click(function(e){
    if (document.getElementById('checkBaptis').checked)
  {
      $("#bapNama").prop('disabled', false);
      $("#bapTanggalMonth").prop('disabled', false);
      $("#bapTanggalDay").prop('disabled', false);
      $("#bapTanggalYear").prop('disabled', false);
      $("#bapTempat").prop('disabled', false);
      $("#bapRomo").prop('disabled', false);
  } else {
      $("#bapNama").prop('disabled', true);
      $("#bapTanggalMonth").prop('disabled', true);
      $("#bapTanggalDay").prop('disabled', true);
      $("#bapTanggalYear").prop('disabled', true);
 	  $("#bapTempat").prop('disabled', true);
      $("#bapRomo").prop('disabled', true);
  }
});
$('.btnedit').click(function(e){
    e.preventDefault();
    var idparam = $(this).attr('idparam');
    location.href="<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'edit')) ?>/" + idparam;
});

$("#nama_umat").mouseout(function(){
  event.preventDefault();
  var term = $("#nama_umat").val();
  console.log(term)
  $.ajax({
      url       : "<?php echo $this->Html->url(array('controller' => 'baptis', 'action' => 'findUmat')) ?>",
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
          $('#cek_umat').addClass('fa fa-check fa-2x').removeClass('fa-times');
          $('#cek_umat').css('color','green');
          $('#cek_umat').attr('cek',true);
      },
      error: function(e){
         console.log(e);
         $('#jnskel').val('-');
         $('#tempatLahir').val('-');
         $('#tglLahir').val('-');
         $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
         $('#cek_umat').css('color','red');
         $('#cek_umat').attr('cek',false);
         $('#form_id_umat').val("");
      }
  });
});

$("#nama_umat").autocomplete({
    source: function( request, response )
    {
        $.ajax({
            url       : "<?php echo $this->Html->url(array('controller' => 'baptis', 'action' => 'searchNama')) ?>",
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

$("#kotaBaptis").autocomplete({
    source: function( request, response )
    {
        $.ajax({
            url       : "<?php echo $this->Html->url(array('controller' => 'baptis', 'action' => 'searchKotaParoki')) ?>",
            data      : { nama : request.term, paroki: $("#tempatBaptis").val()},
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

<?php
*/}

$(document).ready(function() {

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

?>
