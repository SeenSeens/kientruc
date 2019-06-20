<?php get_header(); ?>
<div class="container-fluid" style="min-height: 550px;">
    <div class="container">
        <div class="row">
            <div style="background: #121212;margin-bottom: 5px;">
                <ul style="display:none" class="block-list-1 tab-title">
                    <li class="sole">
                        <a href=""><?php the_category(); ?></a>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            <div>
                <div class="block-detail-1 active1" style="display: block;">
                    <div id="get_page">
                        <ul class="ga" style="margin: 0;padding: 0;list-style: none;">
                        <?php 
                        if(have_posts()) {
                        while(have_posts()) { the_post(); ?>
                            <li class="col-md-4 col-sm-6 col-xs-12 giat" style="position: relative;">
                                <div class="row">
                                    <div class="detail">
                                        <a href="<?php the_permalink(); ?>">
                                        <?php
                                        the_post_thumbnail('', [
                                            'class' => 'img-responsive'
                                        ]);
                                        ?>
                                        </a>
                                    </div> <!-- .detail -->
                                    <div class="tooltip-detail" style="position: absolute;bottom: -101%;z-index: 99;">
                                        <a href="<?php the_permalink();  ?>">
                                            <h2 class="product_title"> <?php the_title(); ?> </h2>
                                        </a>
                                    </div>
                                </div>
                            </li>
                            <?php } ?>
                        <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>