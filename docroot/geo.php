<?php

$headers = $_SERVER;

foreach ($headers as $h => $v) {
  if (strtolower($h) == 'http_cf_ipcountry') {
    header('X-IpCountry: ' . $v);
    header('Vary: CF-IpCountry');

    echo $v;
  }
}