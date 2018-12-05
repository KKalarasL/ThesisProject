<?php

add_action('rest_api_init', 'mahiRegisterSearch');

function mahiRegisterSearch() {
    register_rest_route('mahi/v1', 'search', array(
        'methods' => WP_REST_SERVER::READABLE,
        'callback' => 'mahiSearchResults'
    ));
}

function mahiSearchResults($data) {
  $mainQuery = new WP_Query(array(
    'post_type' => array('mythology', 'history', 'carddb'),
    's' => sanitize_text_field($data['term'])
  ));

  $results = array(
    'generalInfo' => array(),
    'mythology' => array(),
    'history' => array(),
    'carddb' => array(),
  );

  while($mainQuery->have_posts()) {
    $mainQuery->the_post();

    if (get_post_type() == 'mythology') {
      array_push($results['mythology'], array(
        'title' => get_the_title(),
        'permalink' => get_the_permalink()
      ));
    }

    if (get_post_type() == 'history') {
      array_push($results['history'], array(
        'title' => get_the_title(),
        'permalink' => get_the_permalink()
      ));
    }

    if (get_post_type() == 'carddb') {
      array_push($results['carddb'], array(
        'title' => get_the_title(),
        'permalink' => get_the_permalink()
      ));
    }
  }

  return $results;
}