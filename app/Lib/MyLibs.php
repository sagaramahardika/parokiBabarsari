<?php
/*
 * by Budi Susanto
 * last update: 18 Agustus 2015
 */
class MyLibs {
    // mengubah "sebuah String" ke format "sebuah-string"
    public function strToUri($string) {
        if ($string) {
            $string = preg_replace('/[[:blank:]]+/', ' ', strtolower($string));
            $string = preg_replace("/[^A-Za-z0-9 ]/", '', $string);
            return str_replace(" ", "-", $string);
        } else {
            return "";
        }
    }

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

    public function sendEmail($to, $nama, $email, $judul, $isi, $template) {
        App::uses('CakeEmail', 'Network/Email');

        $Email = new CakeEmail('gmail');
        //$Email = new CakeEmail('test');
		$Email->from('scripti.ukdw@gmail.com');
        $Email->to($to);
        $Email->replyTo($email);
        $Email->subject($judul);
        $Email->emailFormat('html');
        $Email->template($template)->viewVars(array('message' => $isi));
        return $Email->send();
    }

    /*
     * resource: http://www.laughing-buddha.net/php/password
     */
	public function generatePassword($length = 8) {
		// start with a blank password
		$password = "";

		// define possible characters - any character in this string can be
		// picked for use in the password, so if you want to put vowels back in
		// or add special characters such as exclamation marks, this is where
		// you should do it
		$possible = "2346789bcdfghjkmnpqrtvwxyzBCDFGHJKLMNPQRTVWXYZ";

		// we refer to the length of $possible a few times, so let's grab it now
		$maxlength = strlen($possible);

		// check for length overflow and truncate if necessary
		if ($length > $maxlength) {
			$length = $maxlength;
		}

		// set up a counter for how many characters are in the password so far
		$i = 0;

		// add random characters to $password until $length is reached
		while ($i < $length) {
			// pick a random character from the possible ones
			$char = substr($possible, mt_rand(0, $maxlength-1), 1);
			// have we already used this character in $password?
			if (!strstr($password, $char)) {
				// no, so it's OK to add it onto the end of whatever we've already got...
				$password .= $char;
				// ... and increase the counter by one
				$i++;
			}
		}

		// done!
		return $password;
	}

	public function getProposalStatus($status=null){
		if ($status) {
			if ($status === 'B') {
				return 'Baru';
			} elseif ($status === 'L') {
				return 'Batal';
			} elseif ($status === 'T') {
				return 'Diterima';
			} elseif ($status === 'K') {
				return 'Tidak Diterima';
			} elseif ($status === 'R') {
				return 'Harus Revisi';
			} elseif ($status === 'V') {
				return 'Valid';
			}
		}
	}

	function dateBetweenToday($date1, $date2) {
		$today = time();
		$fromdate = strtotime($date1);
		$todate = strtotime($date2);

		return ($today>=$fromdate && $today<=$todate);
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
		if ($opsi == 2) {
			return $arrtime["mday"] . ' ' . $nmbulan . ' ' . $arrtime["year"];
		} elseif ($opsi == 3) {
			return $arrtime["mday"] . ' ' . $nmbulan . ' ' . $arrtime["year"]. ' ' . sprintf("%02d", $arrtime['hours']) . ':' . sprintf("%02d", $arrtime['minutes']);
		} elseif ($opsi == 4) {
			return $nmhari . ', ' . $arrtime["mday"] . ' ' . $nmbulan . ' ' . $arrtime["year"]. ' pukul ' . sprintf("%02d", $arrtime['hours']) . ':' . sprintf("%02d", $arrtime['minutes']);
		} elseif ($opsi == 5) {
			return sprintf("%02d", $arrtime["mday"]) . '-' . sprintf("%02d", $arrtime["mon"]) . '-' . $arrtime["year"]. ' ' . sprintf("%02d", $arrtime['hours']) . ':' . sprintf("%02d", $arrtime['minutes']). ':' . sprintf("%02d", $arrtime['seconds']);
		} else {
			return $nmhari . ', ' . $arrtime["mday"] . ' ' . $nmbulan . ' ' . $arrtime["year"];
		}
	}
}
?>
