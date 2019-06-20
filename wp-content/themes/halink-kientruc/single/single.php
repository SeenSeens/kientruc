<?php get_header(); ?>
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div style="background: #121212;margin-bottom: 5px;line-height: 10px;">
                <ul class="block-list tab-title">
                    <span class="sole" style="font-size: 16px; padding-left: 1%; color: #777;"><?php the_breadcrumb(); ?></span>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="">
                <div class="hahh" style="position: relative;padding-bottom: 15px;">
                <?php
                if (have_posts()) :
                    while (have_posts()) :
                        the_post();
                        get_template_part('template-parts/content/content', get_post_format());
                ?>
            	<?php
                    endwhile;
                else : get_template_part('template-parts/single/single', '404');
                    wp_reset_query();	
                endif;
                ?>
                <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>