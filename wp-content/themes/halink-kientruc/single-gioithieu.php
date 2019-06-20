<?php /* The loop */
while ( have_posts() ) : the_post();
    the_title();
    the_content();
endwhile; 
?>