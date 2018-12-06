<?php

function mahi_post_types() {
  register_post_type('mythology', array(
    'taxonomies' => array('category', 'post_tag'),
    'supports' => array('title', 'post_tag', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'mythology'),
    // 'has_archive' => true,
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
    'taxonomies' => array('category', 'post_tag'),
    'supports' => array('title', 'post_tag', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'history'),
    // 'has_archive' => true,
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
  register_post_type('carddb', array(
    'taxonomies' => array('category', 'post_tag'),
    'supports' => array('title', 'post_tag', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'carddb'),
    // 'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'CardDB',
      'add_new_item' => 'Add New Data',
      'edit_item' => 'Edit Data',
      'all_items' => 'All Data',
      'singular_name' => 'Data'
    ),
    'menu_icon' => 'dashicons-screenoptions'
  ));
}

add_action('init', 'mahi_post_types');