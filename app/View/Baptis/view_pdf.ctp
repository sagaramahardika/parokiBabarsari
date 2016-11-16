<?php

  $tgl_lahir;
  if($baptis['Baptis']['id_umat'] == 0){
    $tgl_lahir = $baptis['Baptis']['tanggal_lahir'];
  }else{
    $tgl_lahir = $baptis['Umat']['tgl_lahir'];
  };

  $nama;
  if($baptis['Baptis']['id_umat'] == 0){
    $nama = $baptis['Baptis']['nama_diri'];
  }else{
    $nama = $baptis['Umat']['nama'];
  };

  if (strpos($nama, ',') !== false){
    $nama = explode(",", $nama);
    $nama_diri = $nama[0];
    $nama_baptis = $nama[1];
  }else{
    $nama_diri = $nama;
    $nama_baptis = '';
  }

  $wali_baptis = $baptis['Baptis']['wali_baptis'];
  if($wali_baptis == '' || $wali_baptis == null){
    $wali_baptis = '-';
  }

  $romo = $baptis['Baptis']['romo'];

  $tempat_lahir;
  if($baptis['Baptis']['id_umat'] == 0){
    $tempat_lahir = $baptis['Baptis']['tempat_lahir'];
  }else{
    $tempat_lahir = $baptis['Umat']['tmplahir'];
  };

  $ayah;
  if($baptis['Baptis']['id_umat'] == 0){
    $ayah = $baptis['Baptis']['ayah'];
  }else{
    $ayah = $baptis['Umat']['nama_ayah'];
  };

  $ibu;
  if($baptis['Baptis']['id_umat'] == 0){
    $ibu = $baptis['Baptis']['ibu'];
  }else{
    $ibu = $baptis['Umat']['nama_ibu'];
  };

  $tgl_baptis = $baptis['Baptis']['tanggal'];


  $arrDay = array("Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu");
  $arrMonth = array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");

  $hariLahir = date("w", strtotime($tgl_lahir));
  $bulanLahir = date("n", strtotime($tgl_lahir));
  $hariLahir = $arrDay[$hariLahir-1];
  $intDayLahir = date("j", strtotime($tgl_lahir));
  $bulanLahir = $arrMonth[$bulanLahir-1];
  $tahunLahir = date("Y", strtotime($tgl_lahir));

  $hariBaptis = date("w", strtotime($tgl_baptis));
  $bulanBaptis = date("n", strtotime($tgl_baptis));
  $hariBaptis = $arrDay[$hariBaptis-1];
  $intDayBaptis = date("j", strtotime($tgl_baptis));
  $bulanBaptis = $arrMonth[$bulanBaptis-1];
  $tahunBaptis = date("Y", strtotime($tgl_baptis));

if($tanggalMenikah != '-'){
  $hariNikah = date("w", strtotime($tanggalMenikah));
  $bulanNikah = date("n", strtotime($tanggalMenikah));
  $hariNikah = $arrDay[$hariNikah-1];
  $intDayNikah = date("j", strtotime($tanggalMenikah));
  $bulanNikah = $arrMonth[$bulanNikah-1];
  $tahunNikah = date("Y", strtotime($tanggalMenikah));
}


  if(count($krisma) != 0){
    $tgl_krisma = $krisma['Krisma']['tanggal_krisma'];
    $hariKrisma = date("w", strtotime($tgl_krisma));
    $bulanKrisma = date("n", strtotime($tgl_krisma));
    $hariKrisma = $arrDay[$hariKrisma-1];
    $intDayKrisma = date("j", strtotime($tgl_krisma));
    $bulanKrisma = $arrMonth[$bulanKrisma-1];
    $tahunKrisma = date("Y", strtotime($tgl_krisma));
  }

  $tgl_skarang = date('d-m-Y');
  $hariSkrg = date("w", strtotime($tgl_skarang));
  $bulanSkrg = date("n", strtotime($tgl_skarang));
  $hariSkrg = $arrDay[$hariSkrg-1];
  $intDaySkrg = date("j", strtotime($tgl_skarang));
  $bulanSkrg = $arrMonth[$bulanSkrg-1];
  $tahunSkrg = date("Y", strtotime($tgl_skarang));

  //var_dump($pernikahan);

  $tempat_baptis = 'Gereja ' . $baptis['Baptis']['tempat'] . ' ' . $baptis['Baptis']['kota'];

  if (strpos($namaPasangan, ',') !== false && $namaPasangan != '-'){
    $namaPasangan = explode(",", $namaPasangan);
    $nama_diri_pasangan = $namaPasangan[0];
    $nama_baptis_pasangan = $namaPasangan[1];
  }

  if($namaPasangan == '-'){
    $nama_diri_pasangan = '-';
    $nama_baptis_pasangan = '';
  }

?>

<page backleft="10mm" backright="20mm" backtop="10mm">
  <table style="width: 100%; ">
    <tr>
      <td rowspan="6" style="width: 27.5%; font-size: 16px;">
        <b>Keuskupan Agung Semarang</b>
      </td>
      <td rowspan="6" style="width: 25%; text-align: center"><img src="<?php echo APP; ?>\webroot\logo-hitam.jpg" height="100" width="100"></td>
      <td style="width: 80%; font-size: 18px;"><b>Kutipan</b></td>
    </tr>
    <tr>
      <td style="font-size: 18px;"><i>Dari Buku Baptis</i></td>
    </tr>
    <tr>
      <td style="font-size: 18px;"><b>GEREJA ST. MARIA ASSUMPTA</b></td>
    </tr>
    <tr>
      <td style="font-size: 18px;">PAROKI BABARSARI</td>
    </tr>
    <tr>
      <td style="font-size: 18px;">Jl. Inspeksi Selokan Mataram, Sleman-55281</td>
    </tr>
    <tr>
      <td style="font-size: 18px;">Tlp/Fax ( 0274 ) 487202</td>
    </tr>
  </table>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 15%; font-size: 18px;">No.</td>
      <td style="font-size: 18px;">: <?php echo $baptis['Baptis']['liberbap'];?></td>
    </tr>
    <tr>
      <td style="font-size: 18px;">Tahun</td>
      <td style="font-size: 18px;">: <?php echo $tahunLahir;?> tanggal <i><?php echo $intDayLahir; ?> <?php echo $bulanLahir; ?></i> di <i><?php echo ucwords(strtolower($tempat_lahir)); ?></i> telah lahir</td>
    </tr>
    <tr>
      <td style="font-size: 18px;">Tahun</td>
      <td style="font-size: 18px;">: <?php echo $tahunBaptis;?> tanggal <i><?php echo $intDayBaptis; ?> <?php echo $bulanBaptis; ?></i> di <?php echo ucwords(strtolower($tempat_baptis)); ?></td>
    </tr>
    <tr>
      <td></td>
      <td style="font-size: 18px; text-align: center;">telah DIBAPTIS</td>
    </tr>
  </table>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 15%;"></td>
      <td style="width: 80%; font-size: 18px; text-align: center;"><b><u><?php echo strtoupper($nama_baptis . ' ' . $nama_diri); ?></u></b></td>
    </tr>
  </table>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 45%; font-size: 18px;">Nama Ayah</td>
      <td style="font-size: 18px;">: <i><?php echo $ayah; ?></i></td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Nama Ibu</td>
      <td style="font-size: 18px;">: <i><?php echo $ibu; ?></i></td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Wali Permandian</td>
      <td style="font-size: 18px;">: <i><?php echo ucwords(strtolower($wali_baptis));?></i></td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Yang Membaptis</td>
      <td style="font-size: 18px;">: <i><?php echo ucwords(strtolower($romo));?></i></td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Sakramen Penguatan tanggal</td>
      <td style="font-size: 18px;">:<i><?php if(count($krisma) != 0){ echo $intDayLahir.' '.$bulanLahir.' '.$tahunLahir; }else{ echo ' -'; } ?></i></td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Di Gereja</td>
      <td style="font-size: 18px;">: <?php if(count($krisma) != 0 && $krisma['Krisma']['tempat_krisma'] != null){ echo $krisma['Krisma']['tempat_krisma'] .' di '.$krisma['Krisma']['kota_krisma']; }else{ echo '-'; } ?> </td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Telah Menikah dengan</td>
      <td style="font-size: 18px;">: <?php echo strtoupper($nama_baptis_pasangan . ' ' . $nama_diri_pasangan); ?></td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Pada Tanggal</td>
      <?php if($tanggalMenikah != '-'){ ?>
        <td style="font-size: 18px;">: <?php echo $hariNikah . ', ' . $intDayNikah . ' ' . $bulanNikah . ' ' . $tahunNikah; ?></td>
      <?php }else { ?>
        <td style="font-size: 18px;">: - </td>
      <?php } ?>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Di Gereja</td>
      <td style="font-size: 18px;">: <?php echo $tempatMenikah; ?> di <?php echo $kotaMenikah; ?> </td>
    </tr>
  </table>
  <br>
  <br>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 55%;"></td>
      <td style="font-size: 18px; text-align: center;">Babarsari, <?php echo $intDaySkrg . ' ' . $bulanSkrg . ' ' . $tahunSkrg; ?></td>
    </tr>
  </table>
  <table style="width: 100%;">
    <tr>
      <td style="width: 50%;"></td>
      <td style="font-size: 18px; text-align: center;">Dikutip sesuai dengan aslinya</td>
    </tr>
  </table>
  <br>
  <br>
  <br>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 50%;"></td>
      <td style="font-size: 18px; text-align: center;"><?php echo $setting['Setting']['value_setting']; ?></td>
      <?php/*Dominicus Donny Widiyarso, Pr.*/?>
    </tr>
  </table>
</page>
