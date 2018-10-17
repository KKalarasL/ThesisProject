<?php

require get_theme_file_path('/inc/search-route.php');

function university_custom_rest() {
	register_rest_field('post', 'authorName', array(
	  'get_callback' => function() {return get_the_author();}
	));
  }
  
  add_action('rest_api_init', 'university_custom_rest');

function mahi_files() {
	wp_enqueue_script('main-mahi-js', get_theme_file_uri('/js/scripts-bundled.js'), array("jquery"), '1.0', true);
	wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
	wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	wp_enqueue_style('mahi_main_styles', get_stylesheet_uri());
	wp_localize_script('main-mahi-js', 'mahiData', array(
		'root_url' => get_site_url()
	));
}

add_action('wp_enqueue_scripts', 'mahi_files');

function mahi_features() {
	register_nav_menu('headerMenuLocation', 'Header Menu Location');
	register_nav_menu('footerMenuLocationOne', 'Footer Menu Location One');
	register_nav_menu('footerMenuLocationTwo', 'Footer Menu Location Two');
	add_theme_support('title-tag');
	add_theme_support('post-thumbnails');
	add_image_size('SmallThumbnail', 377, 242, true);
	add_Image_size('DefaultSize', 1200, 800, true);
	add_image_size('PageBanner', 1920, 796, true);
}

add_action('after_setup_theme', 'mahi_features');