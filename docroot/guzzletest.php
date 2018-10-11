<?php
/**
 * @file oauthRequest.php
 * Performs an OAuth request to retrieve a node.
 */
// Note: the following require is only needed if you want to run this
// code as a standalone script. If you are running this within a Drupal
// environment, then remove the following line, since Drupal does this
// for you already.
require 'vendor/autoload.php';
use GuzzleHttp\Client;
use GuzzleHttp\HandlerStack;
use GuzzleHttp\Subscriber\Oauth\Oauth1;

$client = new Client([
  'base_uri' => 'https://api.ipify.org'
]);

$response = $client->get('?format=json',['force_ip_resolve' => 'v4']);
$body = $response->getBody();

print_r(json_decode((string) $body));


$response = $client->get('?format=json',['force_ip_resolve' => 'v6']);
$body = $response->getBody();

print_r(json_decode((string) $body));