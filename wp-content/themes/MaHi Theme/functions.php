<?php

function mahi_files() {
	wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
	wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	wp_enqueue_style('mahi_main_styles', get_stylesheet_uri());
}

add_action('wp_enqueue_scripts', 'mahi_files');

function mahi_features() {
	add_theme_support('title-tag');
}

add_action('after_setup_theme', 'mahi_features');