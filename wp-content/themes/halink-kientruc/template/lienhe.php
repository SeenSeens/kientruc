<?php
/*
 * Author: Tuấn
 * Create: 24/05/2019
 * Template Name: Liên hệ
 */
?>
<?php get_header(); ?>
<div class="container-fluid" style="background-image: url('<?php bloginfo( 'template_directory' )?>/images/bg_lh.png');center center; margin-bottom: 0.5%; overflow: hidden;">
	<div class="container">
			<div class="row" style="background-image: url('<?php bloginfo( 'template_directory' ) ?>/images/bg_bg.png'); margin: 40px; repeat;">
				<?php if(is_active_sidebar('contact')) { dynamic_sidebar( 'contact' ); } ?>
				<?php while(have_posts()) : the_post() ?>
				<?php the_content(); ?>
				<?php endwhile; ?>
			<!-- </div> -->
			</div>
		</div>
	</div>
</div>
<?php get_footer(); ?>