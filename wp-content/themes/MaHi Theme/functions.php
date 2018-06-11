<?php

function MaHi_files() {
  wp_enqueue_style('MaHi_main_styles', get_stylesheet_uri());
}

add_action('wp_enqueue_scripts', 'MaHi_files');