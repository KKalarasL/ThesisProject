<?php /* Template Name: Mythology-Page */ ?>

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

  	<?php
      $theParent = wp_get_post_parent_id(get_the_ID());
      if ($theParent) { ?>
        <div class="metabox metabox--position-up metabox--with-home-link">
      		<p><a class="metabox__blog-home-link" href="<?php echo get_permalink($theParent); ?>"><i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($theParent); ?></a> <span class="metabox__main"><?php the_title(); ?></span></p>
    	</div>
      <?php }
    ?>
    
    <?php 
    $testArray = get_pages(array(
      'child_of' => get_the_ID()
    ));
    
    if ($theParent or $testArray) { ?>
    <div class="page-links">
      <h2 class="page-links__title"><a href="<?php echo get_permalink($theParent); ?>"><?php echo get_the_title($theParent); ?></a></h2>
      <ul class="min-list">
        <?php
          if ($theParent) {
            $findChildrenOf = $theParent;
          } else {
            $findChildrenOf = get_the_ID();
          }

          wp_list_pages(array(
            'title_li' => NULL,
            'child_of' => $findChildrenOf,
            'sort_column' => 'menu_order'
          ));
        ?>
      </ul>
    </div>
    <?php } ?>

    <div class="generic-content">
      <?php the_content(); ?>
    </div>

  </div>
</div>
    
  <?php }

  get_footer();

?>