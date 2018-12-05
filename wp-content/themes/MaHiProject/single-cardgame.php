<?php
  
  get_header();

  while(have_posts()) {
    the_post(); ?>

    <div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/map.jpg') ?>);"></div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title"><?php the_title(); ?></h1>
      <div class="page-banner__intro">
        <p>TODO Subheader</p>
      </div>
    </div>  
  </div>

  <div class="container container--narrow page-section">
  	<div class="metabox metabox--position-up metabox--with-home-link">
      	<p><a class="metabox__blog-home-link" href="<?php echo site_url('/events') ?>"><i class="fa fa-home" aria-hidden="true"></i> Cardgame Home</a> <span class="metabox__main"><?php the_title(); ?></span></p>
    </div>
    
 	<div class="generic-content"><?php the_content(); ?></div>

  </div>
    
  <?php }

  get_footer();

?>