<?php
/*
 * Author: Tuấn
 * Create date: 23-05-2019
 * Update date: 24/05/2019
 */
?>
<?php
/**
 * THEME_URL => Lấy đường dẫn thư mục theme
 * CORE => Lấy đường dẫn thư mục core
 */
define('THEME_URL', get_stylesheet_directory());
define('CORE', THEME_URL . "/core");
/**
 * Nhúng file /core/init.php
 */
require_once CORE . "/init.php";
/**
 * Khai báo chức năng của theme
 */


if (!file_exists('halink_theme_setup')) :
	function halink_theme_setup() {
		/**
		 * Thiết lập textdomain
		 */
		$language_folder = THEME_URL . '/languages';
		load_theme_textdomain('halink', $language_folder);
		/**
		 * Tự động thêm link RSS lên <head>
		 */
		add_theme_support('automatic-feed-link');
		/**
		 * Post thumbnails
		 */
		add_theme_support('post-thumbnails');
		//add_theme_support('post-template');

		if ( ! file_exists( get_template_directory() . '/class-wp-bootstrap-navwalker.php' ) ) {
			// file does not exist... return an error.
			return new WP_Error( 'class-wp-bootstrap-navwalker-missing', __( 'It appears the class-wp-bootstrap-navwalker.php file may be missing.', 'wp-bootstrap-navwalker' ) );
		} else {
			// file exists... require it.
			require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
		}

		/**
		 * Title tag
		 */
		add_theme_support('title-tag');
		/**
		 * Custom background
		 */
		$default_background = array(
			'default-color' => '#FFFFFF'
		);
		add_theme_support('custom-background', $default_background);
		/**
		 * Logo
		 */
		add_theme_support(
			'custom-logo',
			array(
				'flex-width'  => false,
				'flex-height' => false,
			)
        );
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
			)
		);
		add_theme_support(
			'post-formats',
			array(
				'image',
				'video',
				'quote',
				'gallery',
				'status',
				'audio',
				'chat',
			)
		);
		add_theme_support( 'customize-selective-refresh-widgets' );
        add_theme_support( 'wp-block-styles' );
        add_theme_support( 'align-wide' );
        add_theme_support( 'editor-styles' );
		add_editor_style( 'style-editor.css' );
		// Add custom editor font sizes.
		add_theme_support(
			'editor-font-sizes',
			array(
				array(
					'name'      => __( 'Small', 'halink' ),
					'shortName' => __( 'S', 'halink' ),
					'size'      => 19.5,
					'slug'      => 'small',
				),
				array(
					'name'      => __( 'Normal', 'halink' ),
					'shortName' => __( 'M', 'halink' ),
					'size'      => 22,
					'slug'      => 'normal',
				),
				array(
					'name'      => __( 'Large', 'halink' ),
					'shortName' => __( 'L', 'halink' ),
					'size'      => 36.5,
					'slug'      => 'large',
				),
				array(
					'name'      => __( 'Huge', 'halink' ),
					'shortName' => __( 'XL', 'halink' ),
					'size'      => 49.5,
					'slug'      => 'huge',
				),
			)
		);
		// Add support for responsive embedded content.
        add_theme_support( 'responsive-embeds' );
		/**
		 * Menu
		 */
		register_nav_menus(
			array(
				'menu-head' => __( 'Primary', 'halink' ),
				'mm-0' => __( 'Mobile Menu', 'halink' ),
			)
        );

		/*
		 * Sider bar
		 */
		register_sidebar(
			array(
				'name'	=> __('Trang chủ', 'halink'),
				'id'	=> 'home',
				'description'	=> __('Đây là trang chủ', 'halink'),
			)
		);
		register_sidebar(
			array(
				'name'	=> __('Liên hệ', 'halink'),
				'id'	=> 'contact',
				'description'	=> __('Đây là trang liên hệ', 'halink'),
				'before_widget'	=> '<div class="%1$s">',
				'after_widget'	=> '</div>',
			)
		);
		register_sidebar(
			array(
				'name'	=> __('Chân trang', 'halink'),
				'id'	=> 'footer',
				'description'	=> __('Đây là chân trang', 'halink'),
			)
		);
	}
	add_action('after_setup_theme', 'halink_theme_setup');
endif;

/*
 * Style
 */
if (!file_exists('halink_style')) :
	function halink_style()
	{
		// css
		wp_enqueue_style('css-normalize', get_template_directory_uri()."/css/normalize.css", 'all');
		wp_enqueue_style('css-style', get_template_directory_uri()."/style.css", 'all');
        wp_enqueue_style('css-bootstrap', get_template_directory_uri()."/css/bootstrap.css", 'all');
        wp_enqueue_style('css-common', get_template_directory_uri()."/css/common.css", 'all');
        wp_enqueue_style('css-phan_trang', get_template_directory_uri()."/css/phan_trang.css", 'all');
        wp_enqueue_style('css-animate', get_template_directory_uri()."/css/animate.css", 'all');
        wp_enqueue_style('css-owl.carousel', get_template_directory_uri()."/css/owl.carousel.css", 'all');
        wp_enqueue_style('css-flexslider', get_template_directory_uri()."/css/flexslider.css", 'all');
        wp_enqueue_style('css-slick', get_template_directory_uri()."/css/slick.css", 'all');
        wp_enqueue_style('css-slick-theme', get_template_directory_uri()."/css/slick-theme.css", 'all');
        wp_enqueue_style('css-default', get_template_directory_uri()."/css/default.css", 'all');
        wp_enqueue_style('css-menureponsive', get_template_directory_uri()."/css/jquery.mmenu.all.css", 'all');
		wp_enqueue_style('css-demo', get_template_directory_uri()."/css/demo.css", 'all');
		wp_enqueue_style('css-fancybox', get_template_directory_uri()."/fancybox/dist/jquery.fancybox.min.css", 'all');
        // js
        wp_enqueue_script('js-bootstrap.min', get_template_directory_uri().'/js/bootstrap.min.js', array('jquery'));
        //wp_enqueue_script('js-npm', get_template_directory_uri().'/js/npm.js', array('jquery'));
        wp_enqueue_script('js-menureponsive', get_template_directory_uri().'/js/jquery.mmenu.min.all.js', array('jquery'));
        wp_enqueue_script('js-mostslider-262', get_template_directory_uri().'/js/modernizr-2.6.2.min.js', array('jquery'));
        wp_enqueue_script('js-mostslider', get_template_directory_uri().'/js/mostslider.js', array('jquery'));
        wp_enqueue_script('js-owl.carousel.min', get_template_directory_uri().'/js/owl.carousel.min.js', array('jquery'));
        wp_enqueue_script('js-wow.min', get_template_directory_uri().'/js/wow.min.js', array('jquery'));
        wp_enqueue_script('js-flexslider', get_template_directory_uri().'/js/jquery.flexslider.js', array('jquery'));
        wp_enqueue_script('js-slick', get_template_directory_uri().'/js/slick.js', array('jquery'));
		wp_enqueue_script('js-isotope', get_template_directory_uri().'/js/isotope.pkgd.min.js', array('jquery'));
        wp_enqueue_script('fit-columns', get_template_directory_uri().'/js/fit-columns.js', array('jquery'));
		wp_enqueue_script('js-hihe', get_template_directory_uri().'/js/hihe.js', array('jquery'));
        wp_enqueue_script('js-fancybox', get_template_directory_uri().'/fancybox/dist/jquery.fancybox.min.js', array('jquery'));
    }
endif;
add_action('wp_enqueue_scripts', 'halink_style');
/*
 * Hàm hiển thị logo
 */
if(!function_exists('halink_logo_view')) {
	function halink_logo_view() {
		$custom_logo_id = get_theme_mod('custom_logo');
		$custom_logo_url = wp_get_attachment_image_url($custom_logo_id, 'full' );
		?>
		<a href="<?php bloginfo( 'url' ); ?>">
			<h6>
				<img src="<?= esc_url( $custom_logo_url ); ?>" class="img-responsive">
			</h6>
		</a>
		<?php
	}
}

/**
 * Hàm hiển thị logo phần chân trangs
 */
if(!function_exists('halink_logo_footer_view')) {
	function halink_logo_footer_view() {
		$custom_logo_id = get_theme_mod('custom_logo');
		$custom_logo_url = wp_get_attachment_image_url($custom_logo_id, 'full' );
		?>
		<a href="<?php bloginfo( 'url' ); ?>">
			<img src="<?= esc_url( $custom_logo_url ); ?>" style="width: 170px; height: 50px;">
		</a>
		<?php
	}
}
/*
 * Hàm hiển thị 
 * @Parameter
 * theme_location: Vị trí menu
 * container: Có bao 'ul' không, defaullt 'div'
 * menu_class: class 'ul', default 'ul class="menu"'
 * walker: dùng để chỉnh sửa menu
 */
if(!function_exists('halink_menu')) {
	function halink_menu($menu) {
		wp_nav_menu(
			array(
				'theme_location' => $menu,
				'container' => 'false',
				'menu_class' => 'nav navbar-nav menutop',
				'fallback_cb'	=> 'WP_Bootstrap_Navwalker::fallback',
				'walker'	=> new WP_Bootstrap_Navwalker(),
			)	
		);
	}
}
if(!function_exists('halink_menumobile')) {
	function halink_menumobile($menumobile) {
		wp_nav_menu(
			array(
				'theme_location' => $menumobile,
				'container' => 'false',
                'menu_class' => 'mm-list mm-panel mm-opened mm-current menu-list accordion	',
                //'menu-id'  => 'mm-0',
			)	
		);
	}
}
/*
 * @ get_parent_theme_file_path : Lấy đường dẫn của tệp trong chủ đề gốc
 */
require_once get_parent_theme_file_path( '/widget/contact/widget-contact.php' );
require_once get_parent_theme_file_path( '/widget/contact/widget-feedback.php' );
require_once get_parent_theme_file_path( '/widget/contact/widget-connect.php' );
//require_once get_parent_theme_file_path( '/widget/taxonamy/widget-menu-portfolio.php' );
require_once get_parent_theme_file_path( '/widget/footer/footer-left.php' );
require_once get_parent_theme_file_path( '/widget/footer/footer-right.php' );
if(!function_exists('contact_widget')) {
	function contact_widget() {
		register_widget( 'Widget_Contact' ); // 'Widget_Contact' là tên class của widget
		register_widget( 'Widget_Feedback' );
		register_widget( 'Widget_Connect' );
		//register_widget( 'Widget_Menu_Portfolio' );
		register_widget( 'Widget_Footer_Left' );
		register_widget( 'Widget_Footer_Right' );
	}
	add_action('widgets_init', 'contact_widget');
}

/**
 * @ Tải post categories con bằng ajax
 */
add_action( 'wp_ajax_loadSubMenu', 'loadSubMenu_init' );
add_action( 'wp_ajax_nopriv_loadSubMenu', 'loadSubMenu_init' );
function loadSubMenu_init() {
	$id = $_REQUEST['id_ax'];
	$post_new = new WP_Query(array(
		'post_type' =>  'post',
		'post_status' => 'publish',
		'orderby' => 'ID',
        'order' => 'DESC',
        'cat' => $id
    ));
    if($post_new->have_posts()):the_post();
        ?>
        <ul class="ga" style="margin: 0;padding: 0;list-style: none;">
            <?php while($post_new->have_posts()):$post_new->the_post(); ?>
                <li class="col-md-4 col-sm-6 col-xs-12 giat">
                    <div class="row">
                        <div class="detail">
                            <a href="<?= get_the_permalink(); ?>">
                                <?php the_post_thumbnail('post-thumbnail',[
                                    'class' => 'img-responsive',
                                    'style' => 'max-height: 440px'
                                ]); ?>
                            </a>
						</div>
						<div class="tooltip-detail" style="position: absolute;bottom: -101%;z-index: 99;">
							<a href="<?php the_permalink();  ?>">
								<h2 class="product_title"> <?php the_title(); ?> </h2>
							</a>
							<div class="thanhngang"></div>
						</div>
                    </div>
                </li>
            <?php endwhile; wp_reset_postdata(); ?>
        </ul>
		<?php
	endif;
	die;
}

/**
 * 
 */
add_action( 'wp_ajax_loadpost', 'loadpost_init' );
add_action( 'wp_ajax_nopriv_loadpost', 'loadpost_init' );
function loadpost_init() {
	$id = $_REQUEST['id_ax'];
	$result = get_post_meta($id, 'vdw_gallery_id', true);
	foreach ($result as $val) {
		$img = wp_get_attachment_image_src($val, 'full');
		$images .= "<li class='col-md-4 col-sm-6 col-xs-12 giat' style='position: relative; list-style-type: none;'>";
		$images .= "<div class='row'>";
		$images .= "<div class='detail'>";
		$images .= "<a data-fancybox='images' data-caption='My caption' data-srcset='large.jpg 1600w, medium.jpg 1200w, small.jpg 640w'>";
		$images .= "<img src='$img[0]' class='img-responsive post-image'>";
		$images .= "</a>";
		$images .= "</div>";
		$images .= "</div>";
		$images .= "</li>";
	}
	echo $images;
	die;
}

add_action( 'wp_ajax_loadpost', 'loadpost1_init' );
add_action( 'wp_ajax_nopriv_loadpost', 'loadpost1_init' );
function loadpost1_init() {
	$id = $_REQUEST['id_ax'];
	$content = get_post_field('post_content', $id);
	echo $content;
	die;
}
/**
 * Template Custom Single Post
 */
define(SINGLE_PATH, TEMPLATEPATH . '/single');
add_filter('single_template', 'my_single_template');
function my_single_template($single) {
	global $wp_query, $post;
	if(file_exists(SINGLE_PATH . '/single-' . $post->ID . '.php')) {
		return SINGLE_PATH . '/single-' . $post->ID . '.php';
	}
	foreach((array)get_the_category() as $cat) :
		if(file_exists(SINGLE_PATH . '/single-cat-' . $cat->slug . '.php')) {
			return SINGLE_PATH . '/single-cat-' . $cat->slug . '.php';
		}
		elseif(file_exists(SINGLE_PATH . '/single-cat-' . $cat->term_id . '.php')) {
			return SINGLE_PATH . '/single-cat-' . $cat->term_id . '.php';
		}
	endforeach;
	$wp_query->in_the_loop = true;
	foreach((array)get_the_tags() as $tag) :
		if(file_exists(SINGLE_PATH . '/single-tag-' . $tag->slug . '.php')) {
			return SINGLE_PATH . '/single-tag-' . $tag->slug . '.php';
		}
		elseif(file_exists(SINGLE_PATH . '/single-tag-' . $tag->term_id . '.php')) {
			return SINGLE_PATH . '/single-tag-' . $tag->term_id . '.php';
		}
	endforeach;
	$wp_query->in_the_loop = false;
	$curauth = get_userdata($wp_query->post->post_author);
	if(file_exists(SINGLE_PATH . '/single-author-' . $curauth->user_nicename . '.php')) {
		return SINGLE_PATH . '/single-author-' . $curauth->user_nicename . '.php';
	}
	elseif(file_exists(SINGLE_PATH . '/single-author-' . $curauth->ID . '.php')) {
		return SINGLE_PATH  . '/single-author-' . $curauth->ID . '.php';
	}
	if(file_exists(SINGLE_PATH . '/single.php')) {
		return SINGLE_PATH . '/single.php';
	}
	elseif(file_exists(SINGLE_PATH . '/default.php')) {
		return SINGLE_PATH . '/default.php';
	}
	return $single;
}


function property_slideshow($content) {
    if (is_single() && 'post' == get_post_type()) {
        $post_id = get_the_ID();
        $result = get_post_meta($post_id, 'vdw_gallery_id', true);
        foreach ($result as $val) {
			$img = wp_get_attachment_image_src($val, 'full');
			$images .= "<li class='col-md-4 col-sm-6 col-xs-12 giat' style='position: relative;'>";
			$images .= "<div class='row'>";
			$images .= "<div class='detail'>";
            $images .= "<a id='single_image inline' class='grouped_elements' href='$img[0]' data-fancybox='images'>";
			$images .= "<img src='$img[0]' class='img-responsive post-image'>";
            $images .= "</a>";
			$images .= "</div>";
			$images .= "</div>";
			$images .= "</li>";
        }
        return $content . $images;
    }
}
add_filter('the_content', 'property_slideshow');

/**
 * Thêm class cho thẻ a phân trang
 */
add_filter('next_posts_link_attributes', 'posts_link_attributes');
add_filter('previous_posts_link_attributes', 'posts_link_attributes');
function posts_link_attributes() {
    return 'class="next_xem"';
}

/**
 * Thay đổi logo admin
 */
function login_css() {
	wp_enqueue_style( 'login_css', get_template_directory_uri() . '/login.css' ); // duong dan den file css moi
}
add_action('login_head', 'login_css');

function the_breadcrumb() {
	echo '<ul id="crumbs">';
	if (!is_home()) {
		echo '<a href="';
		echo get_option('home');
		echo '">';
		echo '<img src="https://img.icons8.com/small/32/000000/home-page.png">&nbsp;Home';
		echo "</a> / ";
		if (is_category() || is_single()) {
				the_category(' / ');
				if (is_single()) {
						the_title(' / ');
				}
		} elseif (is_page()) {
				echo the_title(' / ');
		}
	}
	elseif (is_tag()) {single_tag_title();}
	elseif (is_day()) {echo"<li>Archive for "; the_time('F jS, Y'); echo'</li>';}
	elseif (is_month()) {echo"<li>Archive for "; the_time('F, Y'); echo'</li>';}
	elseif (is_year()) {echo"<li>Archive for "; the_time('Y'); echo'</li>';}
	elseif (is_author()) {echo"<li>Author Archive"; echo'</li>';}
	elseif (isset($_GET['paged']) && !empty($_GET['paged'])) {echo "<li>Blog Archives"; echo'</li>';}
	elseif (is_search()) {echo"<li>Search Results"; echo'</li>';}
	echo '</ul>';
}

//require_once get_template_directory().'/portfolio/CPT.php';
//require_once get_template_directory().'/portfolio/register-portfolio.php';

function get_the_content_by_id($post_id) {
  $page_data = get_page($post_id);
  if ($page_data) {
    return $page_data->post_content;
  }
  else return false;
}