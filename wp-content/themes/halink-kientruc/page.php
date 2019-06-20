<?php
/*
 * Author: Tuấn
 * Create date: 24/05/2019
 * Describe: 
 */
?>
ádasd
<?php get_header();?>
<div style="font-size: 24px; color: #FFFF;"> 
	<?php while ( have_posts() ) : the_post(); ?>
	<?php the_content(); ?>
<?php endwhile; ?>
</div>
đasad
<?php get_footer(); ?>