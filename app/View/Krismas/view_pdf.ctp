<?php
  $arrDay = array("Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu");
  $arrMonth = array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");
  $numDay = date("w", strtotime($krisma['Krisma']['tanggal_krisma']));
  $numMonth = date("n", strtotime($krisma['Krisma']['tanggal_krisma']));
  $strDay = $arrDay[$numDay];
  $intDay = date("j", strtotime($krisma['Krisma']['tanggal_krisma']));
  $month = $arrMonth[$numMonth];
  $year = date("Y", strtotime($krisma['Krisma']['tanggal_krisma']));
?>

<page backbottom="14mm">
  <table style="width: 100%; border-bottom: double 5px #000;">
    <tr>
      <td rowspan="4" style="width: 20%; text-align: center;">
        qeqwewqeqqw
      </td>
      <td style="width: 80%; text-align: center; font-size: 16px;">GEREJA KATOLIK SANTA MARIA ASSUMPTA</td>
    </tr>
    <tr>
      <td style="text-align: center; font-size: 20px;"><b>PAROKI BABARSARI</b></td>
    </tr>
    <tr>
      <td style="text-align: center; font-size: 14px;">Jl. Inspeksi Selokan Mataram Babarsari Sleman 55281 DIY Telp. (0274) 487203</td>
    </tr>
    <tr>
      <td style="text-align: center; font-size: 20px;"><b>YOGYAKARTA</b></td>
    </tr>
  </table>
  <h2>Kenangan Penguatan</h2>
  <table style="width: 100%;">
    <tr>
      <td style="text-align: right; width: 47.5%; font-size: 18px;"><b>diberikan kepada :</b></td>
      <td style="width: 5%"></td>
      <td style="text-align: center; width: 40%; font-size: 18px;"><b><?php echo $krisma['Krisma']['nama_baptis'] . " " . $krisma['Krisma']['nama_diri']; ?></b></td>
    </tr>
  </table>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="font-size: 14px; width: 50%; text-align: justify;">
        " Karena itu pergilah, jadikanlah semua bangsa murid-Ku dan baptislah mereka dalam nama Bapa
        dan Anak dan Roh Kudus, dan ajarlah mereka melakukan segala sesuatu yang telah Kuperintahkan
        kepadamu. Dan ketahuilah, Aku menyertai kamu senantiasa sampai kepada akhir zama." (Mateus 28:19-20)
      </td>
      <td style="width: 2.5%;"></td>
      <td style="font-size: 13px;">
        <b>Telah Menerima Sakramen Penguatan di :</b>
        <table style="width: 100%;">
          <tr>
            <td style="width: 27.5%;">
              Gereja
            </td>
            <td style="width: 3.5%;">
              :
            </td>
            <td>
              Santa Maria Assumpta
            </td>
          </tr>
          <tr>
            <td>
              Paroki
            </td>
            <td>
              :
            </td>
            <td>
              Babarsari
            </td>
          </tr>
          <tr>
            <td>
              Oleh
            </td>
            <td>
              :
            </td>
            <td>
              Rm. FX. Sukendar Wigyosumarto, Pr.
            </td>
          </tr>
          <tr>
            <td>
              Hari/Tgl
            </td>
            <td>
              :
            </td>
            <td>
              <?php echo $strDay . ", " . $intDay . " " . $month . " " . $year; ?>
            </td>
          </tr>
          <tr>
            <td>
              Pelindung Penguatan
            </td>
            <td>
              :
            </td>
            <td>
              <?php echo $krisma['Krisma']['nama_pelindung_krisma']; ?>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <table style="width: 100%;">
    <tr>
      <td style="width: 55%;"> </td>
      <td style="font-size: 14px;">Babarsari, <?php echo $intDay . " " . $month . " " . $year; ?></td>
    </tr>
    <tr>
      <td></td>
      <td style="font-size: 14px;">Administrator Diosesan Keuskupan Agung Semarang,</td>
    </tr>
  </table>
  <br>
  <br>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 55%;"> </td>
      <td style="font-size: 14px;">Rm. Fransiscus Xaverius Sukendar Wigyosumarto</td>
    </tr>
  </table>

</page>