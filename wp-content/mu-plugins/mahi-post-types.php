<?php

function mahi_post_types() {

  // Mythology Post Type
  register_post_type('mythology', array(
    'show_in_rest' => true,
    'supports' => array('title', 'editor', 'thumbnail'),
    'public' => true,
    'labels' => array(
      'name' => 'Mythology',
      'add_new_item' => 'Add New Mythology',
      'edit_item' => 'Edit Mythology',
      'all_items' => 'All Mythology',
      'singular_name' => 'Mythology'
    ),
    'menu_icon' => 'dashicons-welcome-learn-more'
  ));

  // History Post Type
  register_post_type('history', array(
    'show_in_rest' => true,
    'supports' => array('title', 'editor', 'thumbnail'),
    'public' => true,
    'labels' => array(
      'name' => 'History',
      'add_new_item' => 'Add New History',
      'edit_item' => 'Edit History',
      'all_items' => 'All History',
      'singular_name' => 'History'
    ),
    'menu_icon' => 'dashicons-welcome-learn-more'
  ));
}

add_action('init', 'mahi_post_types');