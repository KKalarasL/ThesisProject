<?php get_header(); ?>

  <div class="page-banner">
  <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/homebanner.jpg') ?>);"></div>
    <div class="page-banner__content container t-center c-white">
      <h1 class="headline headline--large">MaHi</h1>
      <h2 class="headline headline--medium">Mythology & History</h2>
      <h3 class="headline headline--small">Online Database</h3>
      <a href="#" class="btn btn--large btn--blue">Start Here</a>
      <br>
      <br>
    </div>
  </div>

  <div class="full-width-split group">

    <div class="full-width-split__one" style="background-color: #FAF0CA;">
      <div class="full-width-split__inner">
        <div class="sp-img"><img src="<?php echo get_theme_file_uri('/images/history.jpg') ?>">
          <div class="img-desc1">History</div>
        </div>
      </div>
    </div>

    <div class="full-width-split__two" style="background-color: #FAF0CA;">
      <div class="full-width-split__inner">
        <div class="sp-img"><img src="<?php echo get_theme_file_uri('/images/mythology.jpg') ?>">
          <div class="img-desc2">Mythology</div>
        </div>
	    </div>
	  </div>

	</div>
  <!-- ------------------- -->
  <!-- ABOUT US -->
  <div class="full-width-split group">

    <div class="full-width-split__one" style="background-color: #4C638B; color: white;">
      <div class="full-width-split__inner" style="padding-left: 50%;">
        <div class="tcg-desc-right">
          <h1 style="text-align: center; text-shadow: 2px 2px #000000;"><?php echo get_the_title(29); ?></h1><hr>
          <p style="text-align: center; width: 100%;"><?php echo get_post_field('post_content', 29); ?></p>
          <hr><br>
        <p class="t-center no-margin"><a href="#" class="btn btn--blue">Contact Us</a></p></div>
      </div>
    </div>

    <div class="full-width-split__two" style="background-color: #4C638B;">
      <div class="full-width-split__inner">
          <div class="ss-img"><img src="<?php echo get_theme_file_uri('/images/contact.jpg') ?>"></div>
      </div>
    </div>

  </div>
   <!-- ------------------- -->

  <div class="full-width-split group">
    <div class="full-width-split__one" style="background-color: #FAF0CA;">
      <div class="full-width-split__inner">
        <div class="tcg-img-grid"><img src="<?php echo get_theme_file_uri('/images/thumpa.jpg') ?>"></div>
        <div class=tcg-desc><h2 style="text-align: center; text-shadow: 2px 2px #c4c4c4;"><?php echo get_the_title(108); ?></h1><hr>
          <p style="text-align: center;"><?php echo get_post_field('post_content', 108); ?></p>
          <hr><br>
          <p class="t-center no-margin"><a href="#" class="btn btn--blue">Read More...</a></p>
        </div>
      </div>
    </div>
    <hr width="1" size="500">
    <div class="full-width-split__two" style="background-color: #FAF0CA;">
      <div class="full-width-split__inner">
        <div class="tcg-img-grid"><img src="<?php echo get_theme_file_uri('/images/thumpb.jpg') ?>"></div>
        <div class=tcg-desc><h2 style="text-align: center; text-shadow: 2px 2px #c4c4c4;"><?php echo get_the_title(106); ?></h1><hr>
          <p style="text-align: center;"><?php echo get_post_field('post_content', 106); ?></p>
          <hr><br>
          <p class="t-center no-margin"><a href="#" class="btn btn--blue">Read More...</a></p>
        </div>
      </div>
    </div>
    <hr width="1" size="500">
    <div class="full-width-split__three" style="background-color: #FAF0CA;">
      <div class="full-width-split__inner">
        <div class="tcg-img-grid"><img src="<?php echo get_theme_file_uri('/images/thumpc.jpg') ?>"></div>
        <div class=tcg-desc><h2 style="text-align: center; text-shadow: 2px 2px #c4c4c4;"><?php echo get_the_title(1); ?></h1><hr>
          <p style="text-align: center;"><?php echo get_post_field('post_content', 1); ?></p>
          <hr><br>
          <p class="t-center no-margin"><a href="#" class="btn btn--blue">Read More...</a></p>
        </div>
      </div>
    </div>
  </div>

  <!-- TCG Game -->
   <div class="full-width-split group">

    <div class="full-width-split__one" style="background-color: #870000;">
      <div class="full-width-split__inner">
        <div class="ss-img"><img src="<?php echo get_theme_file_uri('/images/ranks.jpg') ?>"></div>
      </div>
    </div>

    <div class="full-width-split__two" style="background-color: #870000; color: white;">
      <div class="full-width-split__inner" style="padding-right: 50%;>
        <div class="tcg-desc-left">
          <h2 style="text-align: center; text-shadow: 2px 2px #000000;"><?php echo get_the_title(15); ?></h2><hr>
          <p style="text-align: center; width: 100%; "><?php echo get_post_field('post_content', 15); ?></p>
          <hr><br>
          <p class="t-center no-margin"><a href="#" class="btn btn--blue">Play Now</a></p>
        </div>
      </div>
    </div>

  </div>
  <!-- ------------------- -->
  
    <hr style="background-color: black; border: none;"/>
	  <div class="hero-slider">
	  <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('/images/alexander.jpg') ?>);">
	    <div class="hero-slider__interior container">
	      <div class="hero-slider__overlay">
	        <h2 class="headline headline--medium t-center">Alexander The Great</h2>
	        <p class="t-center">The Greek Hero from Macedonia.</p>
	        <p class="t-center no-margin"><a href="#" class="btn btn--blue">Learn more</a></p>
	      </div>
	    </div>
	  </div>
	  <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('/images/zeus.jpg') ?>);">
	    <div class="hero-slider__interior container">
	      <div class="hero-slider__overlay">
	        <h2 class="headline headline--medium t-center">Zeus</h2>
	        <p class="t-center">The Greek father of Gods.</p>
	        <p class="t-center no-margin"><a href="#" class="btn btn--blue">Learn more</a></p>
	      </div>
	    </div>
	  </div>
	  <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('/images/forum.jpg') ?>);">
	    <div class="hero-slider__interior container">
	      <div class="hero-slider__overlay">
	        <h2 class="headline headline--medium t-center">Forum</h2>
	        <p class="t-center">Our forum threads are open for discussion.</p>
	        <p class="t-center no-margin"><a href="#" class="btn btn--blue">Learn more</a></p>
	      </div>
	    </div>
	  </div>
	</div>

  <?php get_footer();

  get_footer();

?>