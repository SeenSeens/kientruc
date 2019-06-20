<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmgp.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<nav class="navbar navbar-inverse horizontal">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse navbar-responsive-collapse" id="bs-example-navbar-collapse-1">
			<?php
			wp_nav_menu( array(
				'theme_location'    => 'menu-head',
				'depth'             => 1,
				'container'         => 'false',
				'menu_class'        => 'nav navbar-nav',
				'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
				'walker'            => new WP_Bootstrap_Navwalker(),
			) );
			?>
		</div>
	</div><!-- /.container-fluid -->
</nav>
<div class="mm-page mm-slideout">
	<div class="container top">
		<div class="container">
			<div class="col-md-3 col-sm-2 col-xs-10 col-xss-10 log">
				<div class="row">
					<?php halink_logo_view(); ?>
				</div>
			</div>
			<div class="col-md-8 col-md-push-1 col-sm-9 col-sm-push-1 hidden-xs">
				<div class="row">
					<nav class="navbar navbar-inverse navbar-fix">
						<div class="container-fluid">
							<div class="collapse navbar-collapse navbar-responsive-collapse">
								<?php halink_menu('menu-head'); ?>
							</div>
						</div>
					</nav>
				</div>
			</div>
			<div class="language">
				<a href="http://127.0.0.1/kientruc/vi/"><img src="<?php bloginfo( 'template_directory' ) ?>/images/vn.jpg" alt=""></a>
				<a href="http://127.0.0.1/kientruc/en/"><img src="<?php bloginfo( 'template_directory' ) ?>/images/en.jpg" alt=""></a>
			</div>
		</div>
	</div> <!-- .container top header -->
		
	

	
