<?php
/*
 * Template Name: Dự án
 */
?>
ádasd
<?php get_header(); ?>
<?php
$slug = get_the_title();
$categories   = get_queried_object_id();
//echo '<pre>'; var_dump($categories); exit;
$taxonomy     = 'portfolio_category';
$orderby      = 'name';
$show_count   = 0;
$pad_counts   = 0;
$hierarchical = 1;
$title        = '';
$empty        = 0;
$parent 	  = $categories;
$args = array(
    'taxonomy'     => $taxonomy,
    'orderby'      => $orderby,
    'show_count'   => $show_count,
    'pad_counts'   => $pad_counts,
    'hierarchical' => $hierarchical,
    'title_li'     => $title,
    'hide_empty'   => $empty,
    'parent' => $categories,
);
$all_categories = get_categories($args);
?>
<div class="row">
	<div style="background: #121212;margin-bottom: 5px; overflow: auto;">
		<?php
		// the query
		$the_query = new WP_Query( array('post_type' => 'portfolio') ); ?>

		<?php if ( $the_query->have_posts() ) : ?>

			<!-- pagination here -->

			<!-- the loop -->
			<?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
				<h2><?php the_title(); ?></h2>
				<?php the_permalink(); ?>
			<?php endwhile; ?>
			<!-- end of the loop -->

			<!-- pagination here -->

			<?php wp_reset_postdata(); ?>

		<?php else : ?>
	<p><?php esc_html_e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>
		?>
	</div>
</div>
<?php get_footer(); ?>