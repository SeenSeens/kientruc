<div style="background: #121212;margin-bottom: 5px;">
<?php
$cat = get_queried_object_id();
$query = new WP_Query(
    array(
        'post_type' => 'post',
        'cat' => $cat
    )
);
?>
<ul class="filter-button-group block-list-2 tab-title">
<?php
if ($query->have_posts() ) :  
    while ($query->have_posts()) : 
        $query->the_post();
        $result = strtolower(get_the_title());
        $result = str_replace(' ', '-', $result);
        ?>
        <li class="sole">
            <a href="#" data-filter=".<?= $result ?>"><?php the_title(); ?></a>
        </li>
        <?php
    endwhile;
endif;
?>
</ul>
<div class="clear"></div>
</div>
<div class="block-detail-2" style="display: block;">
    <div class="get_page">
        <div id="portfolio-item" class="ga" style="margin: 0;padding: 0;list-style: none;">
            <?php
            while (have_posts() ) : the_post();
                $p   = get_the_ID();
                $terms = get_post($p);
                //echo '<pre>'; var_dump($terms); die;                                    
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
                            <a href="<?php the_permalink(); ?>">
                                <?php the_post_thumbnail('post-thumbnail',[
                                    'class' => 'img-responsive',
                                    //'style' => 'height: auto;'
                                ]); ?>                           
                            </a>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>
    <?php wp_reset_postdata(); ?>
</div>