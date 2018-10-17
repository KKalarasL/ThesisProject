<?php

add_action('rest_api_init', 'mahiRegisterSearch');

function mahiRegisterSearch() {
    register_rest_route('mahi/v1', 'search', array(
        'methods' => WP_REST_SERVER::READABLE,
        'callback' => 'mahiSearchResults'
    ));
}

function mahiSearchResults() {
    $mythology = new WP_Query(array(
        'post_type' => 'mythology'
    ));
    $history = new WP_Query(array(
        'post_type' => 'history'
    ));

    $mahiResults = array();

    while($mythology->have_posts()) {
        $mythology->the_post();
        array_push($mahiResults, array(
            'title' => get_the_title()
        ));
    }

    while($history->have_posts()) {
        $history->the_post();
        array_push($mahiResults, array(
            'title' => get_the_title()
        ));
    }

    return $mahiResults;
}