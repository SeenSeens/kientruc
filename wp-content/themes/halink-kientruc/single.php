<?php
/*
 * Author: Tuấn
 * Create: 25/05/2019
 */
?>
<?php get_header(); ?>
<div class="container-fluid">
    <div class="container">
        <div class="row">
            
            <div style="background: #121212;margin-bottom: 5px;line-height: 40px;" class="hihihehe">
            <?php
            $post = the_title();
            ?>
                <a href=""></a> &nbsp;
                <span><a href=""><?php the_category(); ?></a></span> &nbsp;
                <span><?= $post->name; ?></span>
            </div> <!-- .hihihehe -->
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
            </div> <!-- .hahh -->
        </div> <!-- row -->
    </div> <!-- .container -->
</div> <!-- .container-fluid -->

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
    function loadSubMenu(id) {
        jQuery.post('<?php echo admin_url('admin-ajax.php');?>',
			{
				action 		: 'loadSubMenu',
				id_ax : id
			}, 
			function (res) { 
                $('#get_page').html(res);
			}
		);
    }
</script>
<?php get_footer(); ?>