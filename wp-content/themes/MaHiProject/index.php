<?php
get_header(); ?>

<div class="page-banner">
    <div class="page-banner__bg-image-page" style="background-image: url(<?php echo get_theme_file_uri('/images/map.jpg') ?>);"></div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title">Welcome to our News</h1>
      <div class="page-banner__intro">
        <p>Keep up with our latest news.</p>
      </div>
    </div>  
</div>

<div class="paper">
  <hr style="background-color: black; border: none"/>
  <div class="container container--narrow page-section">
    <?php
      while(have_posts()) {
        the_post(); ?>
        <div class="post-item">
          <br>
          <h2 class="headline headline--medium headline--post-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>

          <div class="metabox">
            <p>Posted by <?php the_author_posts_link(); ?> on <?php the_time('d/m/Y'); ?> in <?php echo get_the_category_list(', '); ?></p>
          </div>

          <div class="generic-content">
            <div class="img-thumb"><img src="<?php echo get_theme_file_uri('/images/thumpa.jpg'); ?>"></div>
            <br>
            <?php the_excerpt(); ?>
            <p style="float: right;"><a class="btn btn--blue" href="<?php the_permalink(); ?>">Continue Reading &raquo</a></p>
          </div>
        </div>
        <br>
        <hr style="background-color: black; height: 1px; margin-top: 30px;"/>
      <?php }
      echo paginate_links();
  ?>
  </div>
</div>

<?php get_footer();

?>