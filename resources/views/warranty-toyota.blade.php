<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Warranty Scheme</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/viet-all.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/khai-header-footer.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/khai-font.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<div class="header">
    <div class="header-left">
        <div class="header-logo">
            <a href="{{ route('index') }}">
                <img src="{{ asset('img/logo.png') }}" alt="" class="header-logo-img">
            </a>
        </div>

        <ul class="header-list">
            <li class="header-item header-dropdown">
                <a href="#" class="header-item__link">Vehicles</a>
                <div class="dropdown-menu" style="bottom: -74px !important;">
                    <ul class="dropdown-menu__list">
                        <li class="dropdown-menu__list-item ">
                            <a href="{{ route('goCatalogue2') }}" class="dropdown-menu__list-item-link">Motorcycles
                                <i class="fa-solid fa-motorcycle"></i>
                            </a>
                        </li>
                        <li class="dropdown-menu__list-item ">
                            <a href="{{ route('goCatalogue') }}" class="dropdown-menu__list-item-link">Cars
                                <i class="fa-solid fa-car-side"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="header-item underline">
                <a href="{{ route('goCompare') }}" class="header-item__link">Compare
                    <i class="fa-solid fa-not-equal"></i>
                </a>
            </li>
            <li class="header-item underline">
                <a href="#" class="header-item__link">
                    Find a dealer
                    <i class="fa-solid fa-location-dot"></i>
                </a>
            </li>
            <li class="header-item underline">
                <a href="{{ route('goWarranty') }}" class="header-item__link">
                    Warranty
                    <i class="fa-solid fa-user-check"></i>
                </a>
            </li>
            <li class="header-item underline">
                <a href="{{ route('goFinance') }}" class="header-item__link">
                    Finance
                    <i class="fa-solid fa-coins"></i>
                </a>
            </li>
        </ul>
    </div>

    <div class="header-right">
        <form class="header__search-input-wrap" action="catalogue">
                <input type="hidden" name="filter" value="search">
                <input type="text" class="header__search-input" placeholder="Search" name="keyword">
            <i class="fa-solid fa-magnifying-glass"></i>
        </form>
    </div>
</div>
<div class="head">
    <div class="button">
        <a href="{{route('goWarranty')}}" class="back-btn">
            <i class="fa-solid fa-arrow-left"></i>
        </a>
    </div>
    <h1 class='txtdeepshadow'>Welcome to auto insurance service of Toyota</h1>
</div>
<body>
    <div class="noti" style="padding-top: 30px;">
        <img class="logo" src="./logo/3.png" style="height: 180px; width: 180px;" alt="Toyota">
        <h2 style="padding-top: 30px;">Highest standards for quality and<br> warranties.</h2>
        <p style = "font-family: calibri; padding-top: 30px; font-size: 25px; letter-spacing: -1px; font-weight: 540; line-height: 30px;" >
            Every new Toyota is built to the highest quality standards which allow us to offer an unlimited<br> 
            mileage warranty. It provides coverage in the unlikely event a repair is needed during your first<br> 
            five years of ownership. And there's more: warranties include high-voltage batteries and parts,<br> 
            as well as a mobility warranty.
        </p>
    </div>
   
    <div class="container">
        <div style="padding: 50px 0 100px 0;">
            <a href="#content"><i class="fa-solid fa-arrow-down" style="letter-spacing: 2px;"></i>   Unlimited mileage.</a>
            <a href="#content"><i class="fa-solid fa-arrow-down" style="letter-spacing: 2px;"></i>   Annual health checks.</a>
        </div>
            <hr><br>
            <div class="cf-title-02 cf-title-alt-two">
                <h3>New Vehicle
                    <br/> 
                    5-Year Unlimited Mileage Warranty.
                    <span><br>
                        Unlimited peace of mind comes as standard with your Hyundai. Not just because it's built to the highest possible quality 
                        standards – the 5-Year Unlimited Mileage warranty your Hyundai comes with is just as well put together.
                    </span><br/>
                </h3>
            </div>
            <div class="content">
                <div class="box-left">
                    <p><h3 style="font-size: 30px;" id="content">Unlimited mileage.</h3><br>
                        Basic Coverage is 36 months/36,000 miles, 
                        whichever occurs first, from the date of 
                        first use and covers all components other than 
                        normal wear and maintenance items. This warranty 
                        covers repairs and adjustments needed to correct defects 
                        in materials or workmanship or any part supplied by Toyota, 
                        subject to exceptions.</p>
                </div>
                <div class="box-right" style="padding-top: 0;">
                    <img style="height: 300px; width: 400px; float: left" src="https://s3-prod.autonews.com/s3fs-public/styles/800x600/public/OEM01_140409866_AR_-1_UKTFXWFZDWIZ.jpg">  
                </div>
            </div>
            
            <div class="content">
                <div class="box-left">
                    <img style="height: 300px; width: 420px; float: right" src="https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2018%2F04%2Ftoyota-white-mountaineering-01.jpg?cbr=1&q=90">
                </div>
                <div class="box-right" style="width: 50%; padding-right: 170px; text-align: right;">
                    <p><h3 style="font-size: 30px;" id="content">Annual health checks.</h3><br>
                        Powertrain Coverage is 60 months/60,000 miles,<br>
                        whichever occurs first, from the date of first use<br> 
                        and includes engine, transmission/transaxle,<br> 
                        front-wheel-drive system and rear-wheel drive system.</p>  
                </div>
            </div>
        </div> 
</body>
</html>

<a>https://www.hyundai.com/eu/driving-hyundai/owning-a-hyundai/why-hyundai-services/warranty.html</a>
