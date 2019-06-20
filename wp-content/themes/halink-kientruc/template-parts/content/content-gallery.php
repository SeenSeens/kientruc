<div class="slider">
    <?php the_content(); ?>
    <div class="clear"></div>
    <div class="cc">
       <div class="noidung" style="padding: 10px 0 10px 0;">
          <div>
             <?php if(chu_dau_tu) : ?>
             <p style="text-transform: uppercase;">Chủ đầu tư:&nbsp;<?php the_field('chu_dau_tu'); ?></p>
             <?php else : endif; ?>
             <?php if(dia_chi) : ?>
             <p style="text-transform: uppercase;">Địa chỉ:&nbsp;<?php the_field('dia_chi'); ?></p>
             <?php else : endif; ?>
             <?php if(dien_tich) : ?>
             <p style="text-transform: uppercase;">Diện tích:&nbsp;<?php the_field('dien_tich'); ?></p>
             <?php else : endif; ?>
             <?php if(huong) : ?>
             <p style="text-transform: uppercase;">Hướng:&nbsp;<?php the_field('huong'); ?></p>
             <?php else : endif; ?>
           </div>
        </div>   
    </div>
</div>