<?php
$this->assign('title', 'Halaman Kematian');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Kematian </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Kematian</h3>
			</div>
			<div class="panel-body">
                <form role="form">
                      <div class="form-group">
                          <label class="col-sm-3">Kode Stasi:</label>
                          <div class="col-sm-3">
                            <select id="selectStasi"></select>
                          </div>
                          <label>Paroki Induk</label>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">No. Urut:</label>
                          <div class="col-sm-4">
                            <input class="text-center" type="text" id="txtNomorUrut"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Nama Lengkap:</label>
                          <div class="col-sm-4">
                            <input class="text-center" type="text" id="txtNamaLengkap"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Nama Baptis:</label>
                          <div class="col-sm-4">
                              <input class="text-center" type="text" id="txtNamaBaptis"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Gender:</label>
                          <div class="col-sm-3">
                              <select id="selectGender">
                                 <option>Laki - Laki</option>
                                 <option>Perempuan</option>
                              </select>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Tempat Lahir:</label>
                          <div class="col-sm-3">
                            <input class="text-center" type="text" id="txtTempatLahir"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Tanggal Lahir:</label>
                          <div class="col-sm-4">
                            <input class="text-center" type="date" id="dateTanggalLahir"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Tempat Meninggal:</label>
                          <div class="col-sm-4">
                            <input class="text-center" type="text" id="txtTempatMeninggal"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Tanggal Meninggal:</label>
                          <div class="col-sm-4">
                              <input class="text-center" type="date" id="dateTanggalMeninggal"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Tempat Dimakamkan:</label>
                          <div class="col-sm-3">
                              <input class="text-center" type="text" id="txtTempatDimakamkan"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Tanggal Dimakamkan:</label>
                          <div class="col-sm-3">
                            <input class="text-center" type="date" id="dateTanggalDimakamkan"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Nama Saudara:</label>
                          <div class="col-sm-4">
                            <input class="text-center" type="text" id="txtNamaSaudara"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Hubungan Persaudaraan:</label>
                          <div class="col-sm-4">
                            <select id="selectHubSaudara"></select>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Sakramen Terakhir:</label>
                          <div class="col-sm-4">
                              <select id="selectSakramen"></select>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                      <div class="form-group">
                          <label class="col-sm-3">Pemberi Sakramen:</label>
                          <div class="col-sm-3">
                              <input class="text-center" type="text" id="txtPemberiSakramen"/>
                          </div>
                          <div class="clearfix"></div>
                      </div>
                </form>
			</div>
		</div>
	</div>
</div>
<button id="buttonBatal" name="buttonBatal" class="btn btn-danger pull-right">Batal</button>
<button id="buttonSubmit" name="buttonSubmit" class="btn btn-success pull-right" type="submit" >Simpan</button>
