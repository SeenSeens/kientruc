<?php
/**
 * Single Post Template: Not breadcrumb
 */
?>
<?php get_header(); ?>
<div class="container-fluid">
    <div class="container">
        <div class="row">
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