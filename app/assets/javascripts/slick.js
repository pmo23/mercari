$(document).on('turbolinks:load', function() {
$(function() {
     $('.thumb-item').slick({
          infinite: true,
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          fade: true,
          asNavFor: '.thumb-item-nav'
     });
     $('.thumb-item-nav').slick({
          infinite: true,
          slidesToShow: 4,
          slidesToScroll: 1,
          asNavFor: '.thumb-item',
          focusOnSelect: true,
     });
});
});
