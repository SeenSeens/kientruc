<?php
/**
 * Single Post Template: Giao diện trang dự án
 */
?>
<?php get_header(); ?>
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div style="background: #121212;margin-bottom: 5px; line-height: 10px;">
                <ul class="block-list tab-title">
                    <span class="sole" style="font-size: 16px; padding-left: 1%; color: #777;"><?php the_breadcrumb(); ?></span>
                </ul>
                <div class="clear"></div>
            </div>
            <div>
                <div class="block-detail-2"style="display: block;" id="<?php the_ID(); ?>">
                    <div id="get_page">
                        <ul class="ga grid" style="margin: 0;padding: 0;list-style: none;">
                        <?php            
                        while (have_posts()) :
                            the_post();
                            the_content();
                        endwhile;
                        ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>