<?php
/**
 * 
 */
class Widget_Footer_Left extends WP_Widget {
    function __construct() {
        $widget_ops = array(
			'classname'	=> 'footer_left',
			'description'	=> __('Đây là phần hiển thị chân trang bên trái'),
			'WP_Customize_Selective_Refresh' => true,
		);
		parent::__construct('footer_left', __('Chân trang trái'), $widget_ops);
		$this->alt_option_name = 'Widget_Left';
    }
    function form($instance) {
        $defaults = array(
            $title    =>  '',
            $slogan   =>  '',
            $phone    =>  '',
            $hotline_1  =>  '',
            $hotline_2  =>  '',
            $email    =>  '',
            $address  =>  ''
        );
        // Gộp các giá trị trong mảng $default vào biến $instance để nó trở thành các giá trị mặc định
        $instance = wp_parse_args($instance, $defaults);
        $title = esc_attr($instance['title']);
        $slogan = esc_attr($instance['slogan']);
        $phone = esc_attr($instance['phone']);
        $hotline_1 = esc_attr($instance['hotline_1']);
        $hotline_2 = esc_attr($instance['hotline_2']);
        $email = esc_attr($instance['email']);
        $address = esc_attr($instance['address']);
        ?>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('title'); ?>"><?php esc_html_e( 'Tiêu đề website', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('title'); ?>" id="<?= $this->get_field_id('title') ?>" value="<?= $title; ?>">
        </p>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('slogan'); ?>"><?php esc_html_e( 'Thông điệp', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('slogan'); ?>" id="<?= $this->get_field_id('slogan') ?>" value="<?= $slogan; ?>">
        </p>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('phone'); ?>"><?php esc_html_e( 'Số điện thoại', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('phone'); ?>" id="<?= $this->get_field_id('phone') ?>" value="<?= $phone; ?>">
        </p>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('hotline_1'); ?>"><?php esc_html_e( 'Đường dây nóng', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('hotline_1'); ?>" id="<?= $this->get_field_id('hotline_1') ?>" value="<?= $hotline_1; ?>">
        </p>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('hotline_2'); ?>"><?php esc_html_e( 'Đường dây nóng', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('hotline_2'); ?>" id="<?= $this->get_field_id('hotline_2') ?>" value="<?= $hotline_2; ?>">
        </p>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('email'); ?>"><?php esc_html_e( 'Thư điện tử', 'halink' ); ?></label>
			<input type="email" class="widefat" name="<?= $this->get_field_name('email'); ?>" id="<?= $this->get_field_id('email') ?>" value="<?= $email; ?>">
        </p>
        <p>
			<!-- esc_html_e : Hiển thị văn bản dịch, nếu không có bản dịch văn bản gốc được hiển thị -->
			<label for="<?= $this->get_field_id('address'); ?>"><?php esc_html_e( 'Địa chỉ', 'halink' ); ?></label>
			<input type="text" class="widefat" name="<?= $this->get_field_name('address'); ?>" id="<?= $this->get_field_id('address') ?>" value="<?= $address; ?>">
		</p>
        <?php
    }
    function update($new_instance, $old_instance) {
        $instance = $old_instance;
        $instance['title'] = $new_instance['title'];
        $instance['slogan'] = $new_instance['slogan'];
        $instance['phone'] = $new_instance['phone'];
        $instance['hotline_1'] = $new_instance['hotline_1'];
        $instance['hotline_2'] = $new_instance['hotline_2'];
        $instance['email'] = $new_instance['email'];
        $instance['address'] = $new_instance['address'];
        return $instance;
    }
    function widget($args, $instance) {
        extract($args);
        $title = apply_filters( 'widget_title', $instance['title'] );
        $slogan = apply_filters( 'widget_slogan', $instance['slogan'] );
        $phone = apply_filters( 'widget_phone', $instance['phone'] );
        $hotline_1 = apply_filters( 'widget_hotline', $instance['hotline_1'] );
        $hotline_2 = apply_filters( 'widget_hotline', $instance['hotline_2'] );
        $email = apply_filters( 'widget_email', $instance['email'] );
        $address = apply_filters( 'widget_address', $instance['address'] );
        ?>
        <div class="content-footer col-sm-7">
            <div class="logo-footer">
                <div class="right-logo">
                    <?php if($title) : ?>
                    <p style="color: #333; font-weight: bold; text-transform: uppercase; font-size: 18px;"><?= $title; ?></p>
                    <?php endif; ?>
                    <?php if($slogan) : ?>
                    <p><?= $slogan; ?></p>
                    <?php endif; ?>
                </div>
            </div>
            <div class="contact-footer">
                <?php if($phone) : ?>				
                <p>Phone      : <span><a href=""><?= $phone; ?></a></span></p>
                <?php endif; ?>
                <?php if(($hotline_1) || ($hotline_2)) : ?>	
                <p>Hotline 1:&nbsp;<span>
                    <a href="" style="text-transform: uppercase;"><?= $hotline_1; ?></a></span>
                </p>
                <p>Hotline 2:&nbsp;<span>
                    <a href="" style="text-transform: uppercase;"><?= $hotline_2; ?></a></span>
                </p>
                <?php endif; ?>
                <?php if($email) : ?>	
                <p>Email    : <span><a href=""><?= $email; ?></a></span></p>
                <?php endif; ?>
                <?php if($address) : ?>	
                <p>Địa chỉ : <span><?= $address; ?></span></p>
                <?php endif; ?>
            </div>
        </div>
        <?php
    }
}