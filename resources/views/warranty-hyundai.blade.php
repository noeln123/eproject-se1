<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hyundai Warranty Scheme</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/viet-all.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/khai-header-footer.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/khai-font.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
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
        <h1 class='txtdeepshadow'>Welcome to auto insurance service of Huyndai</h1>
    </div>
    <div class="noti" style="padding-top: 0px;">
        <img src="./logo/2.png" style="height: 230px; width: 230px;" alt="Huyndai">
        <h2>Highest standards for quality and<br> warranties.</h2>
        <p style = "font-family: calibri; padding-top: 30px; font-size: 25px; letter-spacing: -1px; font-weight: 540; line-height: 30px;" >
            Every new Hyundai is built to the highest quality standards which allow us to offer an unlimited<br> 
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
                        If you love your new Hyundai enough to<br> 
                        drive it to the moon and back, go ahead.<br> 
                        For the first five years of ownership,<br> 
                        we've got you covered.</p>
                </div>
                <div class="box-right" style="padding-top: 0;">
                    <img style="height: 300px; width: 400px; float: left" src="https://dmassets.hyundai.com/is/image/hyundaiautoever/Hyundai_IONIQ_5_Exterior_2023_Shot14_Lifestyle_1232_web_srgb:4x3?wid=960&hei=720&fit=wrap,1">  
                </div>
            </div>
            
            <div class="content">
                <div class="box-left">
                    <img style="height: 300px; width: 400px; float: right" src="https://s7g10.scene7.com/is/image/hyundaiautoever/KW05_Hyundai5364:4x3?wid=960&hei=720&fit=wrap,1">
                </div>
                <div class="box-right" style="width: 50%; padding-right: 180px; text-align: right;">
                    <p><h3 style="font-size: 30px;" id="content">Annual health checks.</h3><br>
                    Catch little problems before they cause any<br>
                    hassles or worries. Your health check<br> 
                    covers the engine, gearbox, steering,<br> 
                    suspension, and braking system.</p>  
                </div>
            </div>
        </div> 
</body>
</html>

<a>https://www.hyundai.com/eu/driving-hyundai/owning-a-hyundai/why-hyundai-services/warranty.html</a>
