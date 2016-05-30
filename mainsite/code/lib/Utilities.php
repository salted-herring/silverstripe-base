<?php
/**
 * @file Utilities
 *
 * Generic utility functions
 * */
class Utilities {
	
	public static function stripTags($strip_list, $html) {
		foreach ($strip_list as $tag)
		{
			$html = preg_replace('/<\/?' . $tag . '(.|\s)*?>/', '', $html);
		}
		return $html;
	}
	
	public static function endsWith($haystack, $needle) {
		$haystack = strtolower($haystack);
		$needle = strtolower($needle);
		return $needle === "" || (($temp = strlen($haystack) - strlen($needle)) >= 0 && strpos($haystack, $needle, $temp) !== false);
	}
	
	public static function startsWith($haystack, $needle) {
		$haystack = strtolower($haystack);
		$needle = strtolower($needle);
		return $needle === "" || strrpos($haystack, $needle, -strlen($haystack)) !== false;
	}
	public static function sanitiseClassName($string, $space_replacement = '-', $replacement = '') {
   		$string = str_replace(' ', $space_replacement, strtolower($string));
   		return preg_replace('/[^A-Za-z0-9\-]/', $replacement, $string);
	}
	
	public static function params_to_cachekey($params){
		$str = '';
		if (count($params) > 0) {
			foreach ($params as $name => $value) {
				$value = self::sanitiseClassName($value);
				$str .= $name . '__' . $value . '_';
			}
		
			$str = '__' . rtrim($str, '_');
		}
		return $str;
	}
	
	public static function paramStringify($params, $prefix = '') {
		$str = '';
		if (count($params) > 0) {
			foreach ($params as $name => $value) {
				$value = str_replace(' ', '+', $value);
				$str .= $name . '=' . $value . '&';
			}
		
			$str = $prefix . rtrim($str, '&');
		}
		return $str;
	}
	
	public static function get_emails($groupCode) {
		$group = DataObject::get_one('Group', "Code = '" . $groupCode . "'");
		
		if (!empty($group)) {
			return $group->Members()->column('Email');
		}
		
		return array();
	}
	
	public static function valid_email($email) {
		return filter_var($email, FILTER_VALIDATE_EMAIL);
	}
	
	public static function member_exist($email) {
		$member = DataObject::get_one("Member",  "Email = '".$email."'");
		return !empty($member);
	}
	
	public static function isBrowser() {
		// Regular expression to match common browsers
		$browserlist = '/(opera|aol|msie|firefox|chrome|konqueror|safari|netscape|navigator|mosaic|lynx|amaya|omniweb|avant|camino|flock|seamonkey|mozilla|gecko)+/i';
		
		$validBrowser = preg_match($browserlist, strtolower($_SERVER['HTTP_USER_AGENT'])) === 1;
		
		return $validBrowser;// && !empty($_SERVER['HTTP_REFERER']);
	}
	
	public static function match_string($pattern, $str) {
		return fnmatch($pattern, $str);
	}
	
	public static function truncate_html($s, $l, $e = '&hellip;', $isHTML = true) {
		$s = trim($s);
		$e = (strlen(strip_tags($s)) > $l) ? $e : '';
		$i = 0;
		$tags = array();
	
		if($isHTML) {
			preg_match_all('/<[^>]+>([^<]*)/', $s, $m, PREG_OFFSET_CAPTURE | PREG_SET_ORDER);
			foreach($m as $o) {
				if($o[0][1] - $i >= $l) {
					break;                  
				}
				$t = substr(strtok($o[0][0], " \t\n\r\0\x0B>"), 1);
				if($t[0] != '/') {
					$tags[] = $t;                   
				}
				elseif(end($tags) == substr($t, 1)) {
					array_pop($tags);                   
				}
				$i += $o[1][1] - $o[0][1];
			}
		}
		$output = substr($s, 0, $l = min(strlen($s), $l + $i)) . (count($tags = array_reverse($tags)) ? '</' . implode('></', $tags) . '>' : '') . $e;
		return $output;
	}
}

/**
 * @file Utilities
 *
 * Generating random stuff
 * */
class Random {
	
	public static function password($len = 8, $char_pool = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890') {
		$alphabet = $char_pool;
		$pass = array(); //remember to declare $pass as an array
		$alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
		for ($i = 0; $i < $len; $i++) {
			$n = rand(0, $alphaLength);
			$pass[] = $alphabet[$n];
		}
		return implode($pass); //turn the array into a string
	}
}

class Debugger {
	public static function inspect($obj, $die = true) {
		Debug::dump($obj);
		if ($die) die;
	}
	
	public static function methods(&$obj) {
		if (!empty($obj)){
			echo '<pre>';
			print_r(get_class_methods($obj));
			echo '</pre>';
		}else{
			echo 'object is empty';
		}
		die;
	}
}

class UtilityFunctions {
	
	/**
	 * Take a string with new line feeds & create paragraphs.
	 * */
	public static function nl2p($string, $viewer) {
		$items = new ArrayList();
			
		foreach(explode(PHP_EOL, $string) as $item) {
			if (trim($item)) {
				$items->push(new ArrayData(array(
					'line'	=> $item
				)));
			}
		}
		
		return $viewer->customise(new ArrayData(array(
			'Paragraphs' => $items
		)))->renderWith('Paragraphs');
	}
	
	/**
	 * find the key that matches a specific pattern.
	 * Used primarily with dbo field tags.
	 *
	 * e.g. UtilityFunctions::getValidKey('/*Description/', $this->db);
	 * */
	public static function getValidKey($pattern, $arr) {
		$keys = array();
		foreach($arr as $key => $value) {
			if (preg_match($pattern, $key)){
				$keys[] = $key;
			}
		}
		
		return $keys;
	}
	
	/**
	 * Get $count words from a piece of text.
	 * */
	public static function getWords($sentence, $count = 10) {
		/*preg_match("/(?:\w+(?:\W+|$)){0,$count}/", $sentence, $matches);
		return $matches[0];*/
		$sentence = trim(strip_tags($sentence));
		$words = explode(' ', $sentence);
		
		if (count($words) <= $count) {
			return $sentence;
		}
		
		$trimmed = '';
		for ($i = 0; $i < $count; $i++) {
			$trimmed .= $words[$i] . ' ';
		}
		
		$trimmed = trim($trimmed);
		
		return $trimmed;
	}
	
	/**
	 * Get max number of words within a character limit.
	 * */
	public static function getWordsWithinCharLimit($sentence, $limit = 150) {
		$str = '';
		$i = 1;
		
		if(strlen($sentence) < $limit) {
			return $sentence;
		}
		
		while (strlen($current = self::getWords($sentence, $i++)) < $limit) {
			$str = $current;
		}
		
		return $str;
	}
}