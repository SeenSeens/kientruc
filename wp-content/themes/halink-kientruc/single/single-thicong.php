<?php
/**
 * Single Post Template: Giao diện thi công
 */
?>
<?php get_header(); ?>
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div style="background: #121212;margin-bottom: 5px;line-height: 40px;" class="hihihehe">
                <a href=""><?php the_category(); ?></a>
                <span><?php the_title(); ?></span>
            </div>
            <div>
                <h1 class="hidden">Tên bài viết</h1>
                <h2 class="hidden">Tên danh mục con</h2>
                <h3 class="hidden">Tên danh mục cha</h3>
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
                </div>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>