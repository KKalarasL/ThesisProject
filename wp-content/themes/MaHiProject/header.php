<!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<?php wp_head(); ?>
	</head>
	<body <?php body_class(); ?>>
		<header class="site-header">
	    <div class="container">
	      <h1 class="mahi-logo-text float-left"><a href="<?php echo site_url() ?>"><strong>MaHi</strong></a></h1>
	      <span class="js-search-trigger site-header__search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span>
	      <i class="site-header__menu-trigger fa fa-bars" aria-hidden="true"></i>
	      <div class="site-header__menu group">
	        <nav class="main-navigation">
	        <div class="navbar">
	          <ul>
	            <li ><?php if (is_page('home') or wp_get_post_parent_id(0) == 13) echo 'class="current-menu-item"' ?>> <a href="<?php echo site_url() ?>">Home</a></li>
	            <div style="margin-left: 10px" class="dropdown">
	            	<button class="dropbtn"><li <?php if (get_post_type() == 'mythology') echo 'class="current-menu-item"' ?>> <a href="<?php echo site_url('/mythology') ?>">Mythology <i class="fa fa-caret-down"></i></a></li></button>
	            	<ul class="dropdown-content">
	            		<li style="float: inherit; width: fit-content;" <?php if (get_post_type() == 'mythology') echo 'class="current-menu-item"' ?>><a style="color: #870000" href="<?php echo site_url('/mythology/gods') ?>">Gods</a></li>
	            		<li style="float: inherit; width: fit-content;" <?php if (get_post_type() == 'mythology') echo 'class="current-menu-item"' ?>><a style="color: #870000" href="<?php echo site_url('/mythology/heroes') ?>">Heroes</a></li>
	            		<li style="float: inherit; width: fit-content;" <?php if (get_post_type() == 'mythology') echo 'class="current-menu-item"' ?>><a style="color: #870000" href="<?php echo site_url('/mythology/creatures') ?>">Creatures</a></li>
	            	</ul>
	            </div>
	            <div style="margin-left: 10px" class="dropdown">
	            	<button class="dropbtn"><li <?php if (get_post_type() == 'history') echo 'class="current-menu-item"' ?>><a href="<?php echo site_url('/history') ?>">History <i class="fa fa-caret-down"></i></a></li></button>
	            	<ul class="dropdown-content">
	            		<li style="float: inherit; width: fit-content;" <?php if (get_post_type() == 'history') echo 'class="current-menu-item"' ?>><a style="color: #870000" href="<?php echo site_url('/history/battles') ?>">Battles</a></li>
	            		<li style="float: inherit; width: fit-content;" <?php if (get_post_type() == 'history') echo 'class="current-menu-item"' ?>><a style="color: #870000" href="<?php echo site_url('/history/armies') ?>">Armies</a></li>
	            		<li style="float: inherit; width: fit-content;" <?php if (get_post_type() == 'history') echo 'class="current-menu-item"' ?>><a style="color: #870000" href="<?php echo site_url('/history/persons') ?>">Persons</a></li>
	            	</ul>
	            </div>
	            <div style="margin-left: 10px" class="dropdown">
	            	<button class="dropbtn"><li <?php if (get_post_type() == 'carddb') echo 'class="current-menu-item"' ?>> <a href="<?php echo site_url('/cardgame') ?>">TCG <i class="fa fa-caret-down"></i></a></li></button>
	            		<ul class="dropdown-content">
	            			<li style="float: inherit; width: fit-content;" <?php if (get_post_type() == 'play') echo 'class="current-menu-item"' ?>><a style="color: #870000" href="<?php echo site_url('/carddb/play') ?>">Play</a></li>
	            			<li style="float: inherit; width: fit-content;" <?php if (get_post_type() == 'library') echo 'class="current-menu-item"' ?>><a style="color: #870000" href="<?php echo site_url('/carddb/library') ?>">Library</a></li>
	            		</ul>
	            </div>
	            <li style="margin-left: 10px" <?php if (get_post_type() == 'contact') echo 'class="current-menu-item"' ?>><a href="<?php echo site_url('/contact') ?>">Contact</a></li>
	          </ul>
	         </div>
	        </nav>
			<?php if(is_user_logged_in()) { ?>
	            <a href="<?php echo wp_logout_url();  ?>" class="btn btn--small  btn--dark-orange float-left btn--with-photo">
	            <span class="site-header__avatar"><?php echo get_avatar(get_current_user_id(), 60); ?></span>
	            <span class="btn__text">Log Out</span>
	            </a>
	            <?php } else { ?>
	              <a href="<?php echo wp_login_url(); ?>" class="btn btn--small btn--orange float-left push-right">Login</a>
	              <a href="<?php echo wp_registration_url(); ?>" class="btn btn--small  btn--dark-orange float-left">Sign Up</a>
	        	<?php } ?>
          
          	<a href="<?php echo esc_url(site_url('/search')); ?>" class="search-trigger js-search-trigger"><i class="fa fa-search" aria-hidden="true"></i></a>
	        </div>
	      </div>
	    </div>
	  </header>