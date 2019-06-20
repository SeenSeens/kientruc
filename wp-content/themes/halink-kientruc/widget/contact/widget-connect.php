<?php
/*
 * Author: Tuấn
 * Create date: 25/05/2019
 * Describe: Kết nối với chúng tôi qua các trang mạng xã hội
 */

class Widget_Connect extends WP_Widget {
	function __construct() {
		$wiget_ops = array(
			'classname'	=> 'connect',
			'description'	=> __('Hãy kết nối với chúng tôi'),
			'WP_Customize_Selective_Refresh'	=> true,
		);
		parent::__construct('conect', __('Kết nối với chúng tôi'), $wiget_ops);
		//s$this->alt_option_name
	}
	function form($instance) {
		$defaults = array('title' => '', 'image' => '', 'url'	=> '');
		// Gộp các giá trị trong mảng defaults vào biến $instance để nó trở thành các giá trị mặc định
		$instance = wp_parse_args( $instance, $defaults );
		$title = esc_attr($instance['title']);
		$image = esc_attr($instance['image']);
		$url = esc_attr($instance['url']);
		?>
		<p>
			<label for="<?= $this->get_field_id('title'); ?>"><?php esc_html_e( 'Tiêu đề', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('title'); ?>" id="<?= $this->get_field_id('title') ?>" value="<?= $title; ?>">
		</p>
		<p>
			<label for="<?= $this->get_field_id('image'); ?>"><?php esc_html_e( 'Icon', 'halink' ); ?></label>
			<input type="text" class="widefat <?= $this->id ?>_urls" name="<?= $this->get_field_name('image'); ?>" id="<?= $this->get_field_id('image') ?>" value="<?= $image; ?>">
			<input type="file" class="widefat" name="<?= $this->get_field_name('image'); ?>" id="<?= $this->get_field_id('image') ?>" value="<?= $image; ?>">
		</p>
		<p>
			<label for="<?= $this->get_field_id('url'); ?>"><?php esc_html_e( 'Đường dẫn', 'halink' ); ?></label>
			<input type="url" class="widefat" name="<?= $this->get_field_name('url'); ?>" id="<?= $this->get_field_id('url') ?>" value="<?= $url; ?>">
		</p>
		<?php
	}
	function update($new_instance, $old_instance) {
		$instance = $new_instance;
		$instance['title'] = $new_instance['title'];
		$instance['image'] = $new_instance['image'];
		$instance['url'] = $new_instance['url'];
		return $instance;
	}
	function widget($args, $instance) {
		extract($args);
		$title = apply_filters( 'widget_title', $instance['title'] );
		$image = apply_filters( 'widget_image', $instance['image'] );
		$url = apply_filters( 'widget_url', $instance['url'] );
		?>
		<div class="col-md-4" style="background: #fff;">
			<div style="padding: 30px 10px;">
				<div class="tt_lh">Kết nối với chúng tôi</div>
				<div style="text-align: center;padding-bottom: 5px;">
					<img src="<?php bloginfo( 'template_directory' ) ?>/images/tron.png" alt="">
				</div>
				<div class="l col-md-12 col-sm-6" style="padding: 30px 0;">
					<div class="col-md-4 col-sm-4 col-xs-4 col-xss-4" style="text-align: center;">
						<a href="<?= $url; ?>" target="_blank"><img src="<?php bloginfo( 'template_directory' ) ?>/images/f.png" alt=""></a>
						<div style="padding-top: 10px;color:#010101;font-size: 12px;"><?= $title; ?></div>
					</div>
				</div>
			</div>
		</div>
		<?php
	}
}