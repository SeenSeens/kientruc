<?php
/*
 * Template Name: Giới thiệu
 */
?>
<?php get_header(); ?>
<div class="container-fluid">
	<div class="container">
		<div style="background: #121212;margin-bottom: 5px;">
			<?php
            $terms = get_terms("gioithieu_tags");
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
		<?php 
			// the query
			$the_query = new WP_Query(array('post_type' => 'gioithieu')); ?>
				<?php if ( $the_query->have_posts() ) : ?>
			<div class="block-detail-2" style="display: block;">
				<div class="get_page">
					<div id="portfolio-item" class="ga" style="margin: 0;padding: 0;list-style: none;">
						<?php while ( $the_query->have_posts() ) : $the_query->the_post();
		                $terms = get_the_terms( $post->ID, 'gioithieu_tags' );		                                     
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
		                ?>
						<div class="col-md-4 col-sm-6 col-xs-12 giat item <?php echo strtolower($tax); ?>">
							<div class="row">
								<div class="detail">
									<a data-fancybox="images" data-type="image">
			                          	<?php the_post_thumbnail('post-thumbnail',[
			                                'class' => 'img-responsive',
			                                //'style' => 'height: auto;'
			                          	]); ?>
			                          	
			                       	</a>
			                    </div>
							</div>
						</div>	

						<?php endwhile; ?>	
							<div class="col-md-4 col-sm-6 col-xs-12 xem giat">
							<div> <?php next_posts_link('Xem thêm...') ?> </div>      

						</div>			
					</div>
					<div class="clear"></div>
				</div>
				<?php wp_reset_postdata(); ?>
			</div>
			
			<?php endif; ?>
		</div>
	</div>
</div>
<?php get_footer(); ?>