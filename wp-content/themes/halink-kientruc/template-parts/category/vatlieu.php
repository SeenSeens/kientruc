<?php get_header(); ?>
<div class="container-fluid" style="margin-bottom: 0.5%;overflow: hidden;">
    <div class="container">
        <div class="row">
            <?php if (have_posts()) : ?>
            <div style="background: #121212;margin-bottom: 5px;">
                <ul class="block-list-2 tab-title">
                <?php            
                    while (have_posts()) :
                        the_post();
                ?>
                    <li class="sole"><a onclick="loadpost(<?= the_ID(); ?>)" href="#" class="menusub"> <?php the_title(); ?> </a></li>
                <?php endwhile; ?>
                </ul>
                <div class="clear"></div>
            </div>
            <div>            
                <div class="block-detail-2" style="display: block;">
                    <div id="get_page">
                        <ul class="ga" style="margin: 0;padding: 0;list-style: none;">
                        <?php            
                        while (have_posts()) :
                            the_post();
                        ?>
                            <li class="col-md-4 col-sm-6 col-xs-12 giat" style="position: relative;">
                                <div class="row">
                                    <div class="detail">
                                        <?php the_post_thumbnail('', [
                                            'class' => 'img-responsive'
                                        ]); ?>
                                    </div> <!-- .detail -->
                                    <div class="tooltip-detail" style="position: absolute;bottom: -101%;z-index: 99;"></div>
                                </div>
                            </li>
                        <?php endwhile; ?>
                        </ul>
                    </div>
                </div>
            </div>
            <?php endif; ?>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- Empty tag div -->
<script>
    $(document).ready(function(){
        $(".menusub").click(function(){
            $("#get_page").empty();
        });
    });
</script>
<script>
    function loadpost(id) {
        jQuery.post('<?php echo admin_url('admin-ajax.php'); ?>',
			{
				action 		: 'loadpost',
				id_ax : id
			}, 
			function (res) { 
                $('#get_page').html(res);
			}
        );
    }
</script>
<?php get_footer(); ?>
