<?php get_header(); ?>
	<div class="container-fluid">
		<div class="container">
		<?php
		if(get_field('giao_dien_danh_muc','category_'.get_queried_object_id()) == '1') {
		    require_once get_parent_theme_file_path( 'template-parts/category/duan.php' );
		}
		if(get_field('giao_dien_danh_muc','category_'.get_queried_object_id()) == '2') {
		    require_once get_parent_theme_file_path( 'template-parts/category/vatlieu.php' );
		}
		if(get_field('giao_dien_danh_muc','category_'.get_queried_object_id()) == '3') {
		    require_once get_parent_theme_file_path( 'template-parts/category/thicong.php' );
		}
		if(get_field('giao_dien_danh_muc','category_'.get_queried_object_id()) == '4') {
		    require_once get_parent_theme_file_path( 'template-parts/category/gioithieu.php' );
		}
		?>
		</div>
	</div>
<?php get_footer(); ?>