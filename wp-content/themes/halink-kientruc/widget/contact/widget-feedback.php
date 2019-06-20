<?php
/*
 * Author: Tuấn
 * Create date: 24/05/2019
 * 
 */

class Widget_Feedback extends WP_Widget {
	function __construct() {
		$widget_ops = array(
			'classname'	=> 'feedback',
			'description'	=> __('Liên hệ với chúng tôi tại đây!'),
			'WP_Customize_Selective_Refresh'	=> true,
		);
		parent::__construct('feedback', __('Ý kiến phản hồi'), $widget_ops);
		$this->alt_option_name = 'Widget_Feedback';
	}
	function form($instance) {

	}
	function update($new_instance, $old_instance) {

	}
	function widget($args, $instance) {
		?>
		<div class="col-md-4 dangky" style="background: #fff;">
			<div style="padding: 30px 20px;">
				<div class="tt_lh">Ý kiến phản hồi</div>
				<div style="text-align: center;padding-bottom: 5px;">
					<img src="<?php bloginfo( 'template_directory' ) ?>/images/tron.png" alt="">
				</div>
				<form action="" style="width: 100%;">
					<div class="col-xs-12" style="text-align: left;padding-bottom: 5px;"></div>
					<div class="col-xs-12">
						<div class="row">
							<div class="col-sm-12" style="margin-bottom: 5px;">
								<div class="row">
									<input type="text" style="margin-right: 15px;" class="form-control" placeholder="Tên đơn vị">
								</div>
							</div>
							<div class="col-sm-12" style="margin-bottom: 5px;">
								<div class="row">
									<input type="text" style="margin-right: 15px;" class="form-control" placeholder="Email">
								</div>
							</div>
							<div class="col-sm-12" style="margin-bottom: 5px;">
								<div class="row">
									<input type="text" style="margin-right: 15px;" class="form-control" placeholder="SĐT">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="row">
									<textarea name="" id="" rows="5" class="form-control" placeholder="Ý kiến phản hồi"></textarea>
								</div>
							</div>
							<div class="col-xs-12" style="margin-top: 5px;">
								<div class="row">
									<button class="bu" type="submit" id="send" name="btnSend">Gửi tin nhắn</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<div class="clear"></div>
				<div style="background: #808080; height: 1px;margin: 25px 0;"></div>
				<div class="clear"></div>
				<form action="">
					<div style="font-family:Roboto-Bold;font-size: 14px;color:#000;text-transform: uppercase;padding-bottom: 5px;">Đăng ký nhận tin</div>
					<div class="dsplay1">
						<input type="text" class="form-control" placeholder="Email">
						<button style="margin: 5px 0 30px;width:90px;" class="bu">Đăng ký</button>
					</div>
				</form>
			</div>
		</div>
		<?php
	}
}