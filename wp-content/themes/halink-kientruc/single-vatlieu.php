<?php get_header(); ?>
<div class="container-fluid">
    <div class="container">
        <div class="row">
        	<?php $p = get_the_ID(); ?>
        	<?php $query = new WP_Query( array( 'p' => $p )); ?>
			<?php if (have_posts() ) : ?>
			<?php while (have_posts() ) : the_post(); ?>
			<h2 style="color: red;"><?php the_title(); ?></h2>
			<?php get_template_part('template-parts/content/content', get_post_format()); ?>
			<?php endwhile; ?>
			<?php wp_reset_postdata(); ?>
			<?php else : ?>
			<p><?php esc_html_e( 'Sorry, no posts matched your criteria.' ); ?></p>
			<?php endif; ?>
        </div> <!-- row -->
    </div> <!-- .container -->
</div> <!-- .container-fluid -->
<?php get_footer(); ?>