<page backleft="10mm" backright="20mm" backtop="10mm" style="font-size: 15px;">
  <table style="width: 100%; text-align: center; ">
    <tr>
      <td rowspan="6" style="width: 25%; font-size: 16px; text-align: center; ">
        <b>ARCHIDIOCESIS</b>
        <br>
        <b>De SEMARANG</b>
      </td>
      <td rowspan="6" style="width: 15%; text-align: center">Logo</td>
      <td style="width: 80%; font-size: 15px;"><b>EXTRACTUM E LIBRO MATRIMONIORUM</b></td>
    </tr>
    <tr>
      <td style="font-size: 15px;"><i>Ad ecclesiam SANTA MARIA ASSUMPTA</i></td>
    </tr>
    <tr>
      <td style="font-size: 15px;"><b>GEREJA ST. MARIA ASSUMPTA</b></td>
    </tr>
    <tr>
      <td style="font-size: 15px;">PAROKI BABARSARI</td>
    </tr>
    <tr>
      <td style="font-size: 15px;">Jl. Inspeksi Selokan Mataram, Sleman - 55281 - DIY</td>
    </tr>
    <tr>
      <td style="font-size: 15px;">Telp/Fax : (0274) 487202</td>
    </tr>
  </table>
  <table style="width: 100%;">
    <tr>
      <td style="font-size: 15px; display: inline;">
      No :
      </td>
      <td>
        <?php echo $pernikahan['Pernikahan']['no']; ?>
      </td>
      <td>
        LM : 
      </td>
      <td>
        <?php echo $pernikahan['Pernikahan']['kode_LM']; ?>
      </td>
    </tr>
  </table>
  <div style="width: 100%; text-align: center;">
    <p style="text-align: center; font-size: 24px; font-weight: bold; text-decoration: underline; padding-bottom: 0px; margin-bottom: 0px;">TESTIMONIUM MATRIMONII</p>
    <p style="padding-top: 0px; margin-top: 0px;">( SURAT KAWIN )</p>
  </div>
  <br>

  <div style="width: 100%; text-align: center;">
    <p style="text-align: center; text-decoration: underline; padding-bottom: 0px; margin-bottom: 0px;">EGO SUBSCRIPTOR ATTESTOR</p>
    <p style="padding-top: 0px; margin-top: 0px;"><i>Yang bertanda tangan dibawah ini menyatakan</i></p>
  </div>
  <br>
  <br>

  <table style="width: 100%;">
    <tr>
      <td style="width: 25%; font-size: 18px; text-decoration: underline;">QUOD</td>
      <td style="font-size: 18px;">: <i><?php echo $umat1['Umat']['nama'];?></i></td>
    </tr>
    <tr>
      <td style="width: 25%; font-size: 13px;">bahwa</td>
      <!-- <td style="font-size: 18px;">: <i>Agustina Herlina Yustantil</i></td> -->
    </tr>
    <tr>
      <td style="width: 25%; font-size: 18px; text-decoration: underline;">C.P.S</td>
      <td style="font-size: 13px;">: <?php echo $umat1['nama_ayah'] . "<i> dengan </i>". $umat1['nama_ibu'] ;?></td>
    </tr>
    <tr>
      <td style="width: 25%; font-size: 13px;"><i>anak laki-laki dari</i></td>
    </tr>
    <br>
  </table>
  <div style="width: 100%; text-align: center;">
    <p style="text-align: center; text-decoration: underline; padding-bottom: 0px; margin-bottom: 0px;">RITE MATRIMONIO JUSTUM ESSE</p>
    <p style="padding-top: 0px; margin-top: 0px;"><i>Sudah kawin menurut upacara Gereja Katolik</i></p>
  </div>
  <br>
  <br>
  <table style="width: 100%;">
    <tr>
      <td style="width: 25%; font-size: 18px; text-decoration: underline;">CUM</td>
      <?php if ($umat2 == NULL) { ?>
        <td style="font-size: 18px;">: <i><?php echo $pernikahan['Pernikahan']['nm_pasangan'] ?></i></td>
      <?php } else { ?>
        <td style="font-size: 18px;">: <i><?php echo $umat2['Umat']['nama'] ?></i></td>
      <?php } ?>  
    </tr>
    <tr>
      <td style="width: 25%; font-size: 13px;">dengan</td>
      <!-- <td style="font-size: 18px;">: <i>Agustina Herlina Yustantil</i></td> -->
    </tr>
    <tr>
      <td style="width: 25%; font-size: 18px; text-decoration: underline;">C.P.S</td>
      <?php if ($umat2 != NULL) { ?>
        <td style="font-size: 13px;">: <?php echo $umat2['nama_ayah'] . "<i> dengan </i>". $umat2['nama_ibu'] ;?></td>
      <?php }?>
    </tr>
    <tr>
      <td style="width: 25%; font-size: 13px;"><i>anak perempuan dari</i></td>
    </tr>
    <br>
  </table>

  <br>

  <table style="width: 100%;">
    <tr>
      <td style="width: 25%; font-size: 18px; text-decoration: underline;">DIE</td>

      <td style="font-size: 18px;">: <i><?php echo date("d F Y", strtotime($pernikahan['Pernikahan']['tglpernikahan']));?></i></td>
    </tr>
    <tr>
        <td style="width: 25%; font-size: 13px;"><i>tanggal</i></td>
        <!-- <td style="font-size: 18px;">: <i>Agustina Herlina Yustantil</i></td> -->
    </tr>
  </table>

  <div style="width: 100%;">
    <p style="text-decoration: underline; padding-bottom: 0px; margin-bottom: 0px;">DISPENSASI SUPER IMPEDIMENTUM :</p>
    <p style="padding-top: 0px; margin-top: 0px;"><i>Diberi kebebasan atas halangan</i></p>
  </div>
  <br>

  <table style="width: 100%;">
    <tr>
      <td style="width: 25%; font-size: 18px; text-decoration: underline;">TESTES</td>

      <td style="font-size: 18px;">: 1. <i><?php echo $pernikahan['Pernikahan']['saksi1'] ;?></i></td>
    </tr>
    <tr>
        <td style="width: 25%; font-size: 13px;"><i>saksi-saksi</i></td>
        <!-- <td style="font-size: 18px;">: <i>Agustina Herlina Yustantil</i></td> -->
        <td style="font-size: 18px;">&nbsp; 2. <i><?php echo $pernikahan['Pernikahan']['saksi2'] ;?></i></td>
    </tr>
    <tr>
      <td></td>
      <td>
      
      </td>
    </tr>
    <tr>
      <td style="width: 25%; font-size: 18px; text-decoration: underline;">CORAM</td>

      <td style="font-size: 18px;">: Rm. <i><?php echo $pernikahan['Pernikahan']['romopernikahan'] ;?></i></td>
    </tr>
    <tr>
        <td style="width: 25%; font-size: 13px;"><i>imam yaitu</i></td>
    </tr>
  </table>
  <table style="width: 100%;">
    <tr>
      <td style="width: 60%;"></td>
      <td style="width: 40%; font-size: 13px; text-decoration: underline;">CONCORDAT CUM SUO ORIGINALI</td>
    </tr>
    <tr>
      <td style="width: 60%;"></td>
      <td style="width: 40%;"><i>sesuai dengan aslinya</i></td>
    </tr>
    <tr style="border-collapse:separate;">
      <td style="width: 60%; padding-top: 15px;"></td>
      <td style="width: 40%; padding-top: 15px;">Sleman, <?php echo date("d F Y"); ?></td>
    </tr>
    <tr style="border-collapse:separate;">
      <td style="width: 60%; padding-top: 15px;"></td>
      <td style="width: 40%; padding-top: 15px; text-decoration: underline;">QUOD ATTESTOR</td>
    </tr>
    <tr>
      <td style="width: 60%;"></td>
      <td style="width: 40%;"><i>yang memberikan salinan ini</i></td>
    </tr>
    <tr style="border-collapse:separate;">
      <td style="width: 60%; padding-top: 45px;"></td>
      <td style="width: 40%; padding-top: 45px;">__________________________</td>
    </tr>
    <tr>
      <td style="width: 40%;"></td>
      <td style="width: 60%;">CHRISTOPHORUS SUTRASNO PURWANTO, Pr</td>
    </tr>
  </table>
</page>