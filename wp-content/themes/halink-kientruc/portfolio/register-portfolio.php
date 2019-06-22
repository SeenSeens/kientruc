<?php
$portfolio= new CPT(
    array (
        'post_type_name' => 'portfolio',
        'singular' => __('Portfolio', 'halink'),
        'plural' => __('Portfolio', 'halink'),
        'slug' => 'portfolio'
    ),
    array (
        'supports' => array (
                'title', 'editor', 'author', 'thumbnail', 'excerpt', 'trackbacks', 'custom-fields', 'comments', 'revisions', 'page-attributes', 'post-formats'
            ),
        'menu_icon'   => 'dashicons-portfolio',
    )
);

$portfolio->register_taxonomy(array(
	'taxonomy_name' => 'portfolio_categories',
	'singular' => __('Portfolio Categories', 'halink'),
	'plural' => __('Portfolio Categories', 'halink'),
	'slug' => 'portfolio_categories'
));

$vatlieu= new CPT(
    array (
        'post_type_name' => 'vatlieu',
        'singular' => __('Vật liệu', 'halink'),
        'plural' => __('Vật liệu', 'halink'),
        'slug' => 'vat-lieu-1'
    ),
    array (
        'supports' => array (
                'title', 'editor', 'author', 'thumbnail', 'excerpt', 'trackbacks', 'custom-fields', 'comments', 'revisions', 'page-attributes', 'post-formats',
            ),
        'menu_icon'   => 'dashicons-portfolio',
    )
);

$vatlieu->register_taxonomy(array(
    'taxonomy_name' => 'vatlieu_tags',
    'singular' => __('Vật liệu Tags', 'halink'),
    'plural' => __('Vật liệu Tags', 'halink'),
    'slug' => 'vatlieu_tags'
));

$vatlieu= new CPT(
    array (
        'post_type_name' => 'gioithieu',
        'singular' => __('Giới thiệu', 'halink'),
        'plural' => __('Giới thiệu', 'halink'),
        'slug' => 'gioi-thieu-1'
    ),
    array (
        'supports' => array (
                'title', 'editor', 'author', 'thumbnail', 'excerpt', 'trackbacks', 'custom-fields', 'comments', 'revisions', 'page-attributes', 'post-formats',
            ),
        'menu_icon'   => 'dashicons-portfolio',
    )
);

$vatlieu->register_taxonomy(array(
    'taxonomy_name' => 'gioithieu_tags',
    'singular' => __('Giới thiệu Tags', 'halink'),
    'plural' => __('Giới thiệu Tags', 'halink'),
    'slug' => 'gioithieu_tags'
));