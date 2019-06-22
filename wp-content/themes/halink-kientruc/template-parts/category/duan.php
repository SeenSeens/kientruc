<?php
$categories   = get_queried_object_id();
$taxonomy     = 'category';
$orderby      = 'name';
$show_count   = 0;
$pad_counts   = 0;  
$hierarchical = 1;
$title        = '';
$empty        = 0;
$parent       = $categories;
$args = array(
'taxonomy'     => $taxonomy,
'orderby'      => $orderby,
'show_count'   => $show_count,
'pad_counts'   => $pad_counts,
'hierarchical' => $hierarchical,
'title_li'     => $title,
'hide_empty'   => $empty,
'parent'       => $categories,
);
$all_categories = get_categories($args);
?>
<div class="row">
    <div style="background: #121212;margin-bottom: 5px;">
        <nav class="navbar navbar-inverse navbar-fix">
            <ul class="block-list-1 tab-title">
            <?php 
            if($all_categories) :
                foreach($all_categories as $cat) :
            ?>
            <li>
                <a onclick="loadSubMenu(<?= $cat->term_id; ?>)" class="menusub" id="menu" href="#"><?= $cat->name; ?></a>
            </li>
            <?php 
                endforeach;            
                wp_reset_query();
            endif;
            ?>
            </ul>
            <div class="clear"></div>
        </nav>
    </div>
    <div>
        <div class="block-detail-2" style="display: block;">
            <div id="get_page">

                <ul class="ga" style="margin: 0;padding: 0;list-style: none;">
                <?php if( get_previous_posts_link() ) : ?>
                <li class="col-md-4 col-sm-6 col-xs-12 xem giat" style="top: 100px;">
                    <div>
                        <?php previous_posts_link( '... Trở về' ); ?>
                    </div>                         
                </li>
                <?php endif; ?>
                <?php
                if (have_posts()) :
                  while(have_posts()) :
                      the_post();
                ?>
                
                <li class="col-md-4 col-sm-6 col-xs-12 giat" style="position: relative;">
                    <div class="row">
                        <div class="detail">
                          <a href="<?= get_the_permalink(); ?>">
                              <?php the_post_thumbnail('post-thumbnail',[
                                    'class' => 'img-responsive',
                                    'style' => 'max-height: 440px'
                              ]); ?>
                           </a>
                        </div> <!-- .detail -->
                        <div class="tooltip-detail" style="position: absolute;">
                            <a href="<?php the_permalink();  ?>">
                                <h2 class="product_title"> <?php the_title(); ?> </h2>
                            </a>
                            <div class="thanhngang"></div>
                        </div>
                    </div>
                </li>
                <?php
                  endwhile;
                    wp_reset_query();
                endif;
                ?>
                <li class="col-md-4 col-sm-6 col-xs-12 xem giat" style="top: 100px;">
                    <div> <?php next_posts_link('Xem thêm...') ?> </div>                         
                </li>
                </ul>
            </div>
        </div>
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
<!-- Load bài viết trong submenu -->
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
