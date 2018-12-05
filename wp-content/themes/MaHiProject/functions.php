<?php

require get_theme_file_path('/inc/search-route.php');

function mahi_custom_rest() {
  register_rest_field('post', 'authorName', array(
    'get_callback' => function() {return get_the_author();}
  ));
}

add_action('rest_api_init', 'mahi_custom_rest');

function pageBanner($args = NULL) {
  
  if (!$args['title']) {
    $args['title'] = get_the_title();
  }

  if (!$args['subtitle']) {
    // $args['subtitle'] = get_field('page_banner_subtitle');
  }

  if (!$args['photo']) {
    // if (get_field('page_banner_background_image')) {
      // $args['photo'] = get_field('page_banner_background_image')['sizes']['pageBanner'];
    // } else {
      $args['photo'] = get_theme_file_uri('/images/ocean.jpg');
    }

  ?>
  <div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo $args['photo']; ?>);"></div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title"><?php echo $args['title'] ?></h1>
      <div class="page-banner__intro">
        <p><?php echo $args['subtitle']; ?></p>
      </div>
    </div>  
  </div>
<?php }

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
	add_theme_support('title-tag');
	add_theme_support('post-thumbnails');
	add_image_size('SmallThumbnail', 377, 242, true);
	add_Image_size('DefaultSize', 1200, 800, true);
	add_image_size('PageBanner', 1920, 796, true);
}

add_action('after_setup_theme', 'mahi_features');

// function university_adjust_queries($query) {
//   if (!is_admin() AND is_post_type_archive('campus') AND is_main_query()) {
//     $query->set('posts_per_page', -1);
//   }

//   if (!is_admin() AND is_post_type_archive('program') AND is_main_query()) {
//     $query->set('orderby', 'title');
//     $query->set('order', 'ASC');
//     $query->set('posts_per_page', -1);
//   }

//   if (!is_admin() AND is_post_type_archive('event') AND is_main_query()) {
//     $today = date('Ymd');
//     $query->set('meta_key', 'event_date');
//     $query->set('orderby', 'meta_value_num');
//     $query->set('order', 'ASC');
//     $query->set('meta_query', array(
//               array(
//                 'key' => 'event_date',
//                 'compare' => '>=',
//                 'value' => $today,
//                 'type' => 'numeric'
//               )
//             ));
//   }
// }

// add_action('pre_get_posts', 'university_adjust_queries');