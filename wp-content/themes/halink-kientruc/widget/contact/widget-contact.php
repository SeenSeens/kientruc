<?php
/*
 * Author: Tuấn
 * Create date: 24/05/2019
 * Describe:
 */

/*
 * @Parameter:
 */

class Widget_Contact extends WP_Widget {
	/*
	 * Thiết lập widget
	 */
	function __construct() {
		$widget_ops = array(
			'classname'	=> 'contact',
			'description'	=> __('Thông tin liên hệ của công ty'),
			'WP_Customize_Selective_Refresh' => true,
		);
		parent::__construct('contact', __('Thông tin liên hệ'), $widget_ops);
		$this->alt_option_name = 'Widget_Contact';
	}
	/*
	 * Tạo form option cho widget dùng trong wp_admin
	 */
	function form($instance) {
		$defaults = array('address' => '', 'tel' => '', 'email' => '', 'map' => '', 'hotline' => '');
		// Gộp các giá trị trong mảng $default vào biến $instance để nó trở thành các giá trị mặc định
		$instance = wp_parse_args($instance, $defaults);

		$address = esc_attr($instance['address']);
		$tel = esc_attr($instance['tel']);
		$email = esc_attr( $instance['email'] );
		$url = esc_attr( $instance['url'] );
		$hotline = esc_attr( $instance['hotline'] );
		?>
		<p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('address'); ?>"><?php esc_html_e( 'Địa chỉ', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('address'); ?>" id="<?= $this->get_field_id('address') ?>" value="<?= $address; ?>">
		</p>
		<p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('tel'); ?>"><?php esc_html_e( 'Số điện thoại', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('tel'); ?>" id="<?= $this->get_field_id('tel') ?>" value="<?= $tel; ?>">
		</p>
		<p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('email'); ?>"><?php esc_html_e( 'Email liên hệ', 'halink' ); ?></label>
			<input type="email" class="widefat" name="<?= $this->get_field_name('email'); ?>" id="<?= $this->get_field_id('email') ?>" value="<?= $email; ?>">
		</p>
		<p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('url'); ?>"><?php esc_html_e( 'Bản đồ', 'halink' ); ?></label>
			<input type="url" class="widefat" name="<?= $this->get_field_name('url'); ?>" id="<?= $this->get_field_id('map') ?>" value="<?= $url; ?>">

		</p>
		<p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('hotline'); ?>"><?php esc_html_e( 'Đường dây nóng', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('hotline'); ?>" id="<?= $this->get_field_id('hotline') ?>" value="<?= $hotline; ?>">
		</p>
		<?php
	}
	/*
	 * Lưu lại form option
	 * $new_instance: Giá trị mới sau khi lưu form option
	 * $old_instance: Giá trị ban đầu
	 */
	function update($new_instance, $old_instance) {
		$instance = $old_instance;
		$instance['address'] = $new_instance['address'];
		$instance['tel'] = $new_instance['tel'];
		$instance['email'] = $new_instance['email'];
		$instance['url'] = $new_instance['url'];
		$instance['hotline'] = $new_instance['hotline'];
		return $instance;
	}
	/*
	 * Hiển thị widget ra ngoài trang 
	 */
	function widget($args, $instance) {
		extract($args);
		$address = apply_filters( 'widget_address', $instance['address'] );
		$tel = apply_filters( 'widget_tel', $instance['tel'] );
		$email = apply_filters( 'widget_email', $instance['email'] );
		$url = apply_filters( 'widget_url', $instance['url'] );
		$hotline = apply_filters( 'widget_hotline', $instance['hotline'] );
		?>
		<div class="col-md-4">
			<div class="row">
				<div style="padding: 15px;text-align: center;">
					<div style="color: #e7e2d0;">
						<?php if($address) : ?>
							<div class="lh_title">Địa chỉ</div>
							<div>
							<?= $address; ?> <br>
							<?php endif; ?>
							</div>
							
					</div>
					<?php if($url) : ?>	
					<span class="map">
						<a data-fancybox data-type="iframe" data-src="<?= $url; ?>" href="javascript:;">
						<img src="https://img.icons8.com/ultraviolet/40/000000/marker.png"> Xem bản đồ
						</a>
					</span>
					<?php endif; ?>
					<div style="color: #e7e2d0;">
						<?php if($tel) : ?>
							<div class="lh_title">Điện thoại bàn</div>
							<div>
							<?= $tel; ?>
							</div>
							<?php endif; ?>
							<br>
							<?php if($email) : ?>
							<div>Email: <?= $email; ?></div>
						<?php endif; ?>
					</div>
					<?php if($hotline) : ?>
					<div class="lh_title">Hotline</div>
					<div class="hotline"><?= $hotline; ?></div>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<?php
	}
}