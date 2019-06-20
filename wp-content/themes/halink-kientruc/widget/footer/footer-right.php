<?php
/**
 * 
 */
class Widget_Footer_Right extends WP_Widget {
    function __construct() {
        $widget_ops = array(
			'classname'	=> 'footer_right',
			'description'	=> __('Đây là phần hiển thị chân trang bên phải'),
			'WP_Customize_Selective_Refresh' => true,
		);
		parent::__construct('footer_right', __('Chân trang phải'), $widget_ops);
		$this->alt_option_name = 'Widget_Right';
    }
    function form($instance) {
        $defaults = array(
            'url' => '',
            'width' => '',
            'height' => ''
        );
        $instance = wp_parse_args($instance, $defaults);
        $url = esc_attr($instance['url']);
        $width = esc_attr($instance['width']);
        $height = esc_attr($instance['height']);
        ?>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('url'); ?>"><?php esc_html_e( 'Đường dẫn', 'halink' ); ?></label>
			<input type="url" class="widefat" name="<?= $this->get_field_name('url'); ?>" id="<?= $this->get_field_id('url') ?>" value="<?= $url; ?>">
        </p>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('width'); ?>"><?php esc_html_e( 'Chiều rộng', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('width'); ?>" id="<?= $this->get_field_id('width') ?>" value="<?= $width; ?>">
        </p>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('height'); ?>"><?php esc_html_e( 'Chiều cao', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('height'); ?>" id="<?= $this->get_field_id('height') ?>" value="<?= $height; ?>">
        </p>
        <?php
    }
    function update($new_instance, $old_instance) {
        $instance = $old_instance;
        $instance['url'] = $new_instance['url'];
        $instance['width'] = $new_instance['width'];
        $instance['height'] = $new_instance['height'];
        return $instance;
    }
    function widget($args, $instance) {
        extract($args);
        $url = apply_filters( 'widget_url', $instance['url'] );
        ?>
        <div class="copyright col-sm-5">
            <a data-fancybox data-type="iframe" data-src="<?= $url; ?>" href="javascript:;"><img src="https://img.icons8.com/ultraviolet/40/000000/marker.png">Xem địa chỉ</a>
        </div>
        <?php
    }
}