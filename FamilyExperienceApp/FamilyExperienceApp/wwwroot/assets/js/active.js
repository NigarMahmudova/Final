// prodct details slider active
$('.product-large-slider').slick({
    fade: true,
    arrows: false,
    asNavFor: '.pro-nav'
});


// product details slider nav active
$('.pro-nav').slick({
    slidesToShow: 4,
    asNavFor: '.product-large-slider',
    arrows: false,
    focusOnSelect: true
});

// image zoom effect
$('.img-zoom').zoom();


//// pricing filter
//var rangeSlider = $(".price-range"),
//amount = $("#amount"),
//minPrice = rangeSlider.data('min'),
//maxPrice = rangeSlider.data('max');
//rangeSlider.slider({
//range: true,
//min: minPrice,
//max: maxPrice,
//values: [minPrice, maxPrice],
//slide: function (event, ui) {
//    amount.val("$" + ui.values[0] + " - $" + ui.values[1]);
//}
//});
//amount.val(" $" + rangeSlider.slider("values", 0) +
//" - $" + rangeSlider.slider("values", 1));