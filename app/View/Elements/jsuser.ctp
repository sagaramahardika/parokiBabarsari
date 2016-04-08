<?php
if (strtolower($ctrl) === 'users') {
if ($urole === 'admin') { ?>
$('#adduserbtn').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'add')) ?>";
});

$('#finduserbtn').click(function(e){
    e.preventDefault();
    $('#frmCari').submit();
});

$('#alluserbtn').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'index')) ?>";
});

$('#button2id').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'index')) ?>";
});

<?php } else { ?>

$('#button2id').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'main', 'action'=>'index')) ?>";
});

<?php } ?>

PreviewImage = function(no) {
    var oFReader = new FileReader();
    oFReader.readAsDataURL(document.getElementById("uploadImage"+no).files[0]);

    oFReader.onload = function (oFREvent) {
        document.getElementById("uploadPreview"+no).src = oFREvent.target.result;
    };
}

<?php
}
?>
