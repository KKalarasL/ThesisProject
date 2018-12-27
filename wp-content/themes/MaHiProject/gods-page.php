<?php /* Template Name: Gods-Page */ ?>

<?php 

  get_header();

  while(have_posts()) {
    the_post(); ?>
    
  <div class="page-banner">
    <div class="page-banner__bg-image-page" style="background-image: url(<?php echo get_theme_file_uri('/images/mythology-banner.jpg') ?>);"></div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title"><?php the_title(); ?></h1>
      <div class="page-banner__intro">
        <p><?php echo get_post_meta($post->ID, 'Subheader', true); ?></p>
      </div>
    </div>
  </div>

<div class="paper-contact">
  <hr style="background-color: black; border: none"/>
  <div class="container container--narrow page-section-contact">

    <div class="generic-content">
      <?php the_content(); ?>
    </div>

  </div>
</div>
    
  <?php }

  get_footer();

?>