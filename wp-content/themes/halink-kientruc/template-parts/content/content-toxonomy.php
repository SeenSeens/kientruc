<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <header class="entry-header">
        <?php the_title(sprintf('<h1 class="entry-title"><a href="%s">', esc_url(get_permalink())), '</a></h1>'); ?>
    </header>
    <div class="entry-metadata">
        <?php if (is_single()) { ?>
            <?php splendid_portfolio_posted_on_setup(); ?>
        <?php } else { ?>
            <?php echo splendid_portfolio_time_stamp_setup(); ?>
        <?php } ?>
    </div>
    <div class="entry-content">
        <?php the_content(); ?>
    </div>
    <?php wp_link_pages(); ?>
</article>
<?php comments_template(); ?>