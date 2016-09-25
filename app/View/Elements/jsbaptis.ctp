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
?>
