function changeImageScr() {
    var img = document.getElementsByClassName('main-slide-show__img');
    var breakpoint_mobile = window.matchMedia('(max-width: 749px)')
    var breakpoint_pc = window.matchMedia('(min-width: 1024px)')
    var breakpoint_tablet = window.matchMedia('(min-width: 750px) and (max-width: 1023px)')
    if (breakpoint_mobile.matches) {
        // img[0].style.backgroundImage = "url('https://www.truecar.com/assets/_next/static/images/hero-image-sm-51bf1a7ea6a88fc92fd0304541b7655f.jpg')";
        img[0].style.backgroundPosition = "center";
    } else if (breakpoint_pc.matches) {
        // img[0].style.backgroundImage = "url('https://www.truecar.com/assets/_next/static/images/hero-image-lg-2f3fa7a7ac9f99d78b862ef147703210.jpg')";
        img[0].style.backgroundPosition = "center";
    } else {
        // img[0].style.backgroundImage = "url('https://www.truecar.com/assets/_next/static/images/hero-image-md-5ed18fb5bef9298b771a6dc4f009b282.jpg')";
        img[0].style.backgroundPosition = "center";
    }
};


$(document).ready(function(){
    //execute only if DOM completely loaded
    $('.main-slide').slick({
        infinite: true,
        autoplay: true,
        autoplaySpeed: 2000,
        arrows: true,
        dots: true,
        fade: true,
        prevArrow: '<div type="button" class="main-slide__left-arrow"><span class="material-symbols-outlined"> arrow_back_ios </span></button>',
        nextArrow: '<div type="button" class="main-slide__right-arrow"><span class="material-symbols-outlined"> arrow_forward_ios </span></button>',
    });
    showCarBrands(document.getElementsByClassName('content-3__select-cars')[0])
});



function showCarBrands(element) {
    element.style.color = 'white';
    element.style.backgroundColor = 'black';
    document.getElementsByClassName('content-3__brands-motors')[0].style.display = 'none';
    document.getElementsByClassName('content-3__brands-cars')[0].style.display = 'flex';
    document.getElementsByClassName('content-3__select-motors')[0].style.color = 'black';
    document.getElementsByClassName('content-3__select-motors')[0].style.backgroundColor = 'white';
};

function showMotorBrands(element) {
    element.style.color = 'white';
    element.style.backgroundColor = 'black';
    document.getElementsByClassName('content-3__brands-motors')[0].style.display = 'flex';
    document.getElementsByClassName('content-3__brands-cars')[0].style.display = 'none';
    document.getElementsByClassName('content-3__select-cars')[0].style.color = 'black';
    document.getElementsByClassName('content-3__select-cars')[0].style.backgroundColor = 'white';
};


function formHandle(elm) {
    selectedVehicle = document.getElementById('vehicles').value;
    selectedColor = document.getElementById('colors').value;
    minPay = document.getElementById('minpay').value;
    maxPay = document.getElementById('maxpay');

    if (selectedVehicle == 'motor') {
        $queryUrl = `/catalogue/motor?filter=inrange&color=${selectedColor}&vehicle=${selectedVehicle}&minpay=${minPay}&maxpay=${maxpay.value}`
    } else {
        $queryUrl = `/catalogue?filter=inrange&color=${selectedColor}&vehicle=${selectedVehicle}&minpay=${minPay}&maxpay=${maxpay.value}`
    }

    document.getElementById('submitform').href = $queryUrl;
}
