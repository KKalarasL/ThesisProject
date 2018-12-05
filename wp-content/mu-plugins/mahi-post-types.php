<?php

function mahi_post_types() {
  register_post_type('mythology', array(
    'supports' => array('title', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'mythology'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Mythology',
      'add_new_item' => 'Add New Data',
      'edit_item' => 'Edit Data',
      'all_items' => 'All Data',
      'singular_name' => 'Data'
    ),
    'menu_icon' => 'dashicons-media-text'
  ));
  register_post_type('history', array(
    'supports' => array('title', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'history'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'History',
      'add_new_item' => 'Add New Data',
      'edit_item' => 'Edit Data',
      'all_items' => 'All Data',
      'singular_name' => 'Data'
    ),
    'menu_icon' => 'dashicons-media-spreadsheet'
  ));
  register_post_type('cardgame', array(
    'supports' => array('title', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'cardgame'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Cardgame',
      'add_new_item' => 'Add New Data',
      'edit_item' => 'Edit Data',
      'all_items' => 'All Data',
      'singular_name' => 'Data'
    ),
    'menu_icon' => 'dashicons-screenoptions'
  ));
}

add_action('init', 'mahi_post_types');