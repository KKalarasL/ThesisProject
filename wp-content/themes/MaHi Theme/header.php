<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<?php wp_head(); ?>
	</head>
	<body>
		<header class="site-header">
	    <div class="container">
	      <h1 class="mahi-logo-text float-left"><a href="<?php echo site_url() ?>"><strong>MaHi</strong></a></h1>
	      <span class="js-search-trigger site-header__search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span>
	      <i class="site-header__menu-trigger fa fa-bars" aria-hidden="true"></i>
	      <div class="site-header__menu group">
	        <nav class="main-navigation">
	          <ul>
	            <li><a href="<?php echo site_url() ?>">Home</a></li>
	            <li><a href="<?php echo site_url('/news') ?>">News</a></li>
	            <li><a href="<?php echo site_url('/mythology') ?>">Mythology</a></li>
	            <li><a href="<?php echo site_url('/history') ?>">History</a></li>
	            <li><a href="<?php echo site_url('/cardgame') ?>">Cardgame</a></li>
	            <li><a href="<?php echo site_url('/forum') ?>">Forum</a></li>
	            <li><a href="<?php echo site_url('/contact') ?>">Contact</a></li>
	          </ul>
	        </nav>
	        <div class="site-header__util">
	          <a href="<?php echo site_url('/login') ?>" class="btn btn--small btn--orange float-left push-right">Login</a>
	          <a href="<?php echo site_url('/signup') ?>" class="btn btn--small  btn--dark-orange float-left">Sign Up</a>
	          <span class="search-trigger js-search-trigger"><i class="fa fa-search" aria-hidden="true"></i></span>
	        </div>
	      </div>
	    </div>
	  </header>
	  