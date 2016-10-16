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

  $tgl_baptis = $baptis['Baptis']['tanggal'];

  $arrDay = array("Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu");
  $arrMonth = array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");

  $hariLahir = date("w", strtotime($tgl_lahir));
  $bulanLahir = date("n", strtotime($tgl_lahir));
  $hariLahir = $arrDay[$hariLahir];
  $intDayLahir = date("j", strtotime($tgl_lahir));
  $bulanLahir = $arrMonth[$bulanLahir];
  $tahunLahir = date("Y", strtotime($tgl_lahir));

  $hariBaptis = date("w", strtotime($tgl_baptis));
  $bulanBaptis = date("n", strtotime($tgl_baptis));
  $hariBaptis = $arrDay[$hariBaptis];
  $intDayBaptis = date("j", strtotime($tgl_baptis));
  $bulanBaptis = $arrMonth[$bulanBaptis];
  $tahunBaptis = date("Y", strtotime($tgl_baptis));

  $tempat_baptis = 'Gereja ' . $baptis['Baptis']['tempat'] . ' ' . $baptis['Baptis']['kota'];
?>

<page backleft="10mm" backright="20mm" backtop="10mm">
  <table style="width: 100%; ">
    <tr>
      <td rowspan="6" style="width: 27.5%; font-size: 16px;">
        <b>Keuskupan Agung Semarang</b>
      </td>
      <td rowspan="6" style="width: 25%; text-align: center">Gambar</td>
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
      <td style="width: 80%; font-size: 18px; text-align: center;"><b><u><?php echo strtoupper($nama); ?></u></b></td>
    </tr>
  </table>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 45%; font-size: 18px;">Nama Ayah</td>
      <td style="font-size: 18px;">: <i>Yustinus Ade Stirman</i></td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Nama Ibu</td>
      <td style="font-size: 18px;">: <i>Agustina Herlina Yustantil</i></td>
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
      <td style="font-size: 18px;">: ..............................................................................</td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Di Gereja</td>
      <td style="font-size: 18px;">: .................................di...........................................</td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Telah Menikah dengan</td>
      <td style="font-size: 18px;">: ..............................................................................</td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Pada Tanggal</td>
      <td style="font-size: 18px;">: ..............................................................................</td>
    </tr>
    <tr>
      <td style="width: 45%; font-size: 18px;">Di Gereja</td>
      <td style="font-size: 18px;">: .................................di...........................................</td>
    </tr>
  </table>
  <br>
  <br>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 55%;"></td>
      <td style="font-size: 18px; text-align: center;">Babarsari, <?php echo $intDayBaptis . ' ' . $bulanBaptis . ' ' . $tahunBaptis; ?></td>
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
      <td style="font-size: 18px; text-align: center;">Dominicus Donny Widiyarso, Pr.</td>
    </tr>
  </table>
</page>
