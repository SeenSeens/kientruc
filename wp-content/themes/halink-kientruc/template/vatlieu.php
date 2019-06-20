<?php
/**
 * Template Name: Vật liệu
 */
get_header();
?>
<div class="container-fluid">
	<div class="container">
		<div class="row">
			<div style="background: #121212;margin-bottom: 5px;">
				<?php
                $terms = get_terms("vatlieu_tags");
                $count = count($terms);                          
                echo '<ul class="filter-button-group block-list-2 tab-title">';
                echo '<li class="sole"><a href="#" data-filter="*">'. __('All', 'halink').'</a></li>';
                if($count > 0) {
                	foreach ($terms as $term) {
                		$termname = strtolower($term->name);
                		$termname = str_replace(' ', '-', $termname);
                		echo '<li class="sole"><a href="#" data-filter=".'.$termname.'">'.$term->name.'</a></li>';
                	}
                }
                echo '</ul>';
                echo '<div class="clear"></div>';
                ?>
			</div>
			<div>
			
				<div class="block-detail-2" style="display: block;">
					<div id="get_page">						
						<ul class="ga" style="margin: 0;padding: 0;list-style: none;">
						<?php 
						// the query
						$the_query = new WP_Query(array('post_type' => 'vatlieu')); ?>
						<?php if ( $the_query->have_posts() ) : ?>
						<?php
							while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
				                <?php
				                $terms = get_the_terms( $post->ID, 'vatlieu_tags' );
				                                   
				                if ( $terms && ! is_wp_error( $terms ) ) : 
				                    $links = array();
				 
				                    foreach ( $terms as $term ) 
				                    {
				                        $links[] = $term->name;
				                    }
				                    $links = str_replace(' ', '-', $links); 
				                    $tax = join( " ", $links );     
				                else :  
				                    $tax = '';  
				                endif;
				                next_posts_link('Xem thêm...')
				                ?>
							<li class="col-md-4 col-sm-6 col-xs-12 giat item <?php echo strtolower($tax); ?>">
								<div class="row">
									<div class="detail">
										<a href="<?php the_permalink(); ?>">
				                          	<?php the_post_thumbnail('post-thumbnail',[
				                                'class' => 'img-responsive',
				                                //'style' => 'max-height: 440px'
				                          	]); ?>
				                       	</a>
									</div>
								</div>
							</li>
							<?php endwhile; wp_reset_query(); ?>
							<?php endif; ?>
							<li class="col-md-4 col-sm-6 col-xs-12 xem giat">
                  <div> <?php next_posts_link('Xem thêm...') ?> </div>                         
              </li>
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
<script>
	$('[data-fancybox="images"]').fancybox({
    baseClass: "fancybox-custom-layout",
    infobar: false,
    touch: {
        vertical: false
    },
    buttons: ["close", "thumbs", "share"],
    animationEffect: "fade",
    transitionEffect: "fade",
    preventCaptionOverlap: false,
    idleTime: false,
    gutter: 0,
    // Customize caption area
    caption: function(instance) {
        return '<h3>home</h3><p>interiors, exteriors, and the humans that inhabit them.</p><p><a href="https://unsplash.com/collections/curated/162" target="_blank">unsplash.com</a></p>';
    }
});
</script>
<?php
get_footer();