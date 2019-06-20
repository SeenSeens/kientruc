// Fix giao diện trang dự án
jQuery(document).ready(function($) {
    var $grid = $('.ga').isotope({
        // main isotope options
        itemSelector: '.giat',
        percentPosition: true,
        // set layoutMode
        layoutMode: 'fitRows',
    });
    // filter items on a click
    $('.filter-button-group').on( 'click', 'a', function() {
        var filterValue = $(this).attr('data-filter');
        $grid.isotope({ filter: filterValue });
    });
    var $gt = $('#portfolio-item').isotope({
        // main isotope options
        itemSelector: '.item',
        percentPosition: true,
        // set layoutMode
        layoutMode: 'masonry',
    })
});

jQuery(document).ready(function($) {
    var $grids = $('.grid').isotope({
        // main isotope options
        itemSelector: '.giat',
        percentPosition: true,
        // set layoutMode
        layoutMode: 'masonry',
    })
});
