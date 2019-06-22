<div class="row">
    <div>
        <div class="block-detail-1" style="display: block; overflow: hidden;">
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
                                    the_post_thumbnail('post-thumbnail', [
                                        'class' => 'img-responsive',
                                        'style' => 'max-height: 440px'
                                    ]);
                                    ?>
                                    </a>
                                </div> <!-- .detail -->
                                <div class="tooltip-detail" style="position: absolute;">
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