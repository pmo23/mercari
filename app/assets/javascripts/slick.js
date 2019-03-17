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
          slidesToShow: 5,
          slidesToScroll: 1,
          asNavFor: '.thumb-item',
          focusOnSelect: true,
     });
     $('.slideContents').slick({
          autoplay: true,
          autoplaySpeed: 3000,
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: true,
          dots: true,
          pauseOnHover: false
     });
});
