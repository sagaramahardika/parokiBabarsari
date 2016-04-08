<?php
/*
 * by Budi Susanto
 * last update: 26 September 2015
 */
class MyToolsHelper extends AppHelper {
   /*
     * Fungsi untuk memotong string berdasar jumlah kata
     * disadur dari http://stackoverflow.com/questions/12444945/cut-the-content-after-10-words
     *
     */
    public function shorten_string($oldstring, $wordsreturned) {
        $search = array('@<script[^>]*?>.*?</script>@si',  // Strip out javascript
               '@<[\/\!]*?[^<>]*?>@si',            // Strip out HTML tags
               '@<style[^>]*?>.*?</style>@siU',    // Strip style tags properly
               '@<![\s\S]*?--[ \t\n\r]*>@'         // Strip multi-line comments including CDATA
        );
        $retval = preg_replace($search, '', $oldstring);
        $string = preg_replace('/(?<=\S,)(?=\S)/', ' ', $retval);
        $string = str_replace("\n", " ", $string);
        $array = explode(" ", $string);
        if (count($array)<=$wordsreturned) {
          $retval = $string;
        }
        else {
          array_splice($array, $wordsreturned);
          $retval = implode(" ", $array)." ...";
        }
        return $retval;
    }

	public function dropHtml($oldstring) {
        $search = array('@<script[^>]*?>.*?</script>@si',  // Strip out javascript
               '@<[\/\!]*?[^<>]*?>@si',            // Strip out HTML tags
               '@<style[^>]*?>.*?</style>@siU',    // Strip style tags properly
               '@<![\s\S]*?--[ \t\n\r]*>@'         // Strip multi-line comments including CDATA
        );
        $retval = preg_replace($search, '', $oldstring);
        $string = preg_replace('/(?<=\S,)(?=\S)/', ' ', $retval);
        $string = str_replace("\n", " ", $string);

		return $string;
	}

    public function getMonthName($month) {
        $months = array('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September',
                        'Oktober', 'November', 'Desember');

        if ($month !== null || ($month >= 1 && $month <= 12) ) {
            $m = intval($month);
            return $months[$month - 1];
        } else {
            return "";
        }
    }

	public function prnDate($tgl = null, $opsi = null){
		if (!$tgl) {
			return "";
		}
		$time = strtotime($tgl);
		$arrtime = getdate($time);
		$nmhari = '';
		switch($arrtime["wday"]){
			case 0:
				$nmhari = 'Minggu'; break;
			case 1:
				$nmhari = 'Senin'; break;
			case 2:
				$nmhari = 'Selasa'; break;
			case 3:
				$nmhari = 'Rabu'; break;
			case 4:
				$nmhari = 'Kamis'; break;
			case 5:
				$nmhari = 'Jumat'; break;
			case 6:
				$nmhari = 'Sabtu'; break;
		}
		$nmbulan = '';
		switch($arrtime["mon"]){
			case 1:
				$nmbulan = 'Januari'; break;
			case 2:
				$nmbulan = 'Februari'; break;
			case 3:
				$nmbulan = 'Maret'; break;
			case 4:
				$nmbulan = 'April'; break;
			case 5:
				$nmbulan = 'Mei'; break;
			case 6:
				$nmbulan = 'Juni'; break;
			case 7:
				$nmbulan = 'Juli'; break;
			case 8:
				$nmbulan = 'Agustus'; break;
			case 9:
				$nmbulan = 'September'; break;
			case 10:
				$nmbulan = 'Oktober'; break;
			case 11:
				$nmbulan = 'November'; break;
			case 12:
				$nmbulan = 'Desember'; break;
		}
		if ($opsi == 1) {
			return $arrtime['mday'] . '-' . $arrtime['mon'] . '-' . $arrtime['year'];
		} elseif ($opsi == 2) {
			return $arrtime["mday"] . ' ' . $nmbulan . ' ' . $arrtime["year"];
		} elseif ($opsi == 3) {
			return $arrtime["mday"] . ' ' . $nmbulan . ' ' . $arrtime["year"]. ' ' . sprintf("%02d", $arrtime['hours']) . ':' . sprintf("%02d", $arrtime['minutes']);
		} elseif ($opsi == 4) {
			return $nmhari . ', ' . $arrtime["mday"] . ' ' . $nmbulan . ' ' . $arrtime["year"]. ' pukul ' . sprintf("%02d", $arrtime['hours']) . ':' . sprintf("%02d", $arrtime['minutes']);
		} elseif ($opsi == 5) {
			return $arrtime["mday"] . '-' . $arrtime["mon"] . '-' . $arrtime["year"]. ' ' . sprintf("%02d", $arrtime['hours']) . ':' . sprintf("%02d", $arrtime['minutes']). ':' . sprintf("%02d", $arrtime['seconds']);
		} else {
			return $nmhari . ', ' . $arrtime["mday"] . ' ' . $nmbulan . ' ' . $arrtime["year"];
		}
	}

	function handleEmpty($d){
		if ($d) {
			return $d;
		} else {
			return '-';
		}
	}

	function dateBetweenToday($date1, $date2) {
		$today = time();
		$fromdate = strtotime($date1);
		$todate = strtotime($date2);
		return ($today>=$fromdate && $today<=$todate);
	}

	function search_array($exif, $fieldname, $field) {
		foreach ($exif as $data) {
			if ($data[$fieldname] == $field)
				return true;
		}
		return false;
	}

	function cekDate($tgl){
		if (!$tgl) {
			return "";
		}
		$time = strtotime($tgl);
		$arrtime = getdate($time);
		//$date = new DateTime($tgl);
		if ($arrtime["wday"] == 0) {
			$t = date("Y-m-d H:i:s", strtotime("-2 day", $time));
			// $date->sub(new DateInterval('P2D'));
		} else if ($arrtime["wday"] == 6) {
			$t = date("Y-m-d H:i:s", strtotime("-1 day", $time));
			//$date->sub(new DateInterval('P1D'));
		} else {
			$t = date("Y-m-d H:i:s", $time);
		}
		//return $date->format('Y-m-d H:i:s');
		return $t;
	}
}
?>
