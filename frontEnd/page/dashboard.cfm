<cfoutput>
    
    <!-- / Hero Section -->
    <cfinclude template="../common/header.cfm">
    <!--/ Hero Section-->
    <!-- Featured Brands-->
    <cfinclude template="../common/feature-brand.cfm">
    <!--/ Featured Brands-->

    <!-- Staff Picks-->
    <section class="mb-9 mt-5" data-aos="fade-up">
        <div class="container">
            <div class="w-md-50 mb-5">
                <p class="small fw-bolder text-uppercase tracking-wider mb-2 text-muted">Summer Favourites</p>
                <h2 class="display-5 fw-bold mb-3">Staff Picks</h2>
                <p class="lead">
                    We've sorted through our feed to put together a collection of our products perfect
                    for a summer outdoors.
                </p>
            </div>
            <!-- Swiper Latest -->
            <div
                class="swiper-container overflow-visible"
                data-swiper
                data-options='{
                "spaceBetween": 25,
                "cssMode": true,
                "roundLengths": true,
                "scrollbar": {
                "el": ".swiper-scrollbar",
                "hide": false,
                "draggable": true
                },      
                "navigation": {
                "nextEl": ".swiper-next",
                "prevEl": ".swiper-prev"
                },  
                "breakpoints": {
                "576": {
                "slidesPerView": 1
                },
                "768": {
                "slidesPerView": 2
                },
                "992": {
                "slidesPerView": 3
                },
                "1200": {
                "slidesPerView": 4
                }            
                }
                }'
            >
                <div class="swiper-wrapper pb-5 pe-1">
                    <div class="swiper-slide d-flex h-auto">
                        <!-- Card Product-->
                        <div class="card position-relative h-100 card-listing hover-trigger">
                            <div class="card-header">
                                <picture class="position-relative overflow-hidden d-block bg-light">
                                    <img
                                        class="w-100 img-fluid position-relative z-index-10"
                                        title=""
                                        src="../assets/images/products/product-1.jpg"
                                        alt=""
                                    >
                                </picture>
                                <picture class="position-absolute z-index-20 start-0 top-0 hover-show bg-light">
                                    <img
                                        class="w-100 img-fluid"
                                        title=""
                                        src="../assets/images/products/product-1b.jpg"
                                        alt=""
                                    >
                                </picture>
                            </div>
                            <div class="card-body px-0 text-center">
                                <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                    <!-- Review Stars Small-->
                                    <div class="rating position-relative d-table">
                                        <div class="position-absolute stars" style="width: 90%">
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                        </div>
                                        <div class="stars">
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                        </div>
                                    </div>
                                    <span class="small fw-bolder ms-2 text-muted"> 4.7 (456)</span>
                                </div>
                                <a
                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                    href="./product.html"
                                >
                                    Full Zip Hoodie
                                </a>
                                <p class="fw-bolder m-0 mt-2">$1129.99</p>
                            </div>
                        </div>
                        <!--/ Card Product-->
                    </div>
                    <div class="swiper-slide d-flex h-auto">
                        <!-- Card Product-->
                        <div class="card position-relative h-100 card-listing hover-trigger">
                            <span class="badge card-badge bg-secondary">-25%</span>
                            <div class="card-header">
                                <picture class="position-relative overflow-hidden d-block bg-light">
                                    <img
                                        class="w-100 img-fluid position-relative z-index-10"
                                        title=""
                                        src="../assets/images/products/product-2.jpg"
                                        alt=""
                                    >
                                </picture>
                                <div class="card-actions">
                                    <span class="small text-uppercase tracking-wide fw-bolder text-center d-block">Quick Add</span>
                                    <div class="d-flex justify-content-center align-items-center flex-wrap mt-3">
                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 text-center">
                                <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                    <!-- Review Stars Small-->
                                    <div class="rating position-relative d-table">
                                        <div class="position-absolute stars" style="width: 60%">
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                        </div>
                                        <div class="stars">
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                        </div>
                                    </div>
                                    <span class="small fw-bolder ms-2 text-muted"> 4.4 (1289)</span>
                                </div>
                                <a
                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                    href="./product.html"
                                >
                                    Mens Sherpa Hoodie
                                </a>
                                <div class="d-flex justify-content-center align-items-center mt-2">
                                    <p class="mb-0 me-2 text-danger fw-bolder">
                                        $<span>599.55</span>
                                    </p>
                                    <p class="mb-0 text-muted fw-bolder">
                                        <s>
                                            $<span>150.00</span>
                                        </s>
                                    </p>
                                </div>
                            </div>
                            <!--/ Card Product-->
                        </div>
                    </div>
                    <div class="swiper-slide d-flex h-auto">
                        <!-- Card Product-->
                        <div class="card position-relative h-100 card-listing hover-trigger">
                            <span class="badge card-badge bg-secondary">-65%</span>
                            <div class="card-header">
                                <picture class="position-relative overflow-hidden d-block bg-light">
                                    <img
                                        class="w-100 img-fluid position-relative z-index-10"
                                        title=""
                                        src="../assets/images/products/product-3.jpg"
                                        alt=""
                                    >
                                </picture>
                                <div class="card-actions">
                                    <span class="small text-uppercase tracking-wide fw-bolder text-center d-block">Quick Add</span>
                                    <div class="d-flex justify-content-center align-items-center flex-wrap mt-3">
                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 text-center">
                                <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                    <!-- Review Stars Small-->
                                    <div class="rating position-relative d-table">
                                        <div class="position-absolute stars" style="width: 20%">
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                        </div>
                                        <div class="stars">
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                        </div>
                                    </div>
                                    <span class="small fw-bolder ms-2 text-muted"> 4.7 (754)</span>
                                </div>
                                <a
                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                    href="./product.html"
                                >
                                    Womens Essentials Hoodie
                                </a>
                                <div class="d-flex justify-content-center align-items-center mt-2">
                                    <p class="mb-0 me-2 text-danger fw-bolder">
                                        $<span>779.55</span>
                                    </p>
                                    <p class="mb-0 text-muted fw-bolder">
                                        <s>
                                            $<span>1100.00</span>
                                        </s>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--/ Card Product-->
                    </div>
                    <div class="swiper-slide d-flex h-auto">
                        <!-- Card Product-->
                        <div class="card position-relative h-100 card-listing hover-trigger">
                            <div class="card-header">
                                <picture class="position-relative overflow-hidden d-block bg-light">
                                    <img
                                        class="w-100 img-fluid position-relative z-index-10"
                                        title=""
                                        src="../assets/images/products/product-4.jpg"
                                        alt=""
                                    >
                                </picture>
                                <div class="card-actions">
                                    <span class="small text-uppercase tracking-wide fw-bolder text-center d-block">Quick Add</span>
                                    <div class="d-flex justify-content-center align-items-center flex-wrap mt-3">
                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 text-center">
                                <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                    <!-- Review Stars Small-->
                                    <div class="rating position-relative d-table">
                                        <div class="position-absolute stars" style="width: 70%">
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                        </div>
                                        <div class="stars">
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                        </div>
                                    </div>
                                    <span class="small fw-bolder ms-2 text-muted"> 4.4 (1289)</span>
                                </div>
                                <a
                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                    href="./product.html"
                                >Elevated Lined Hoodie</a>
                                <p class="fw-bolder m-0 mt-2">$1829.99</p>
                            </div>
                        </div>
                        <!--/ Card Product-->
                    </div>
                    <div class="swiper-slide d-flex h-auto">
                        <!-- Card Product-->
                        <div class="card position-relative h-100 card-listing hover-trigger">
                            <div class="card-header">
                                <picture class="position-relative overflow-hidden d-block bg-light">
                                    <img
                                        class="w-100 img-fluid position-relative z-index-10"
                                        title=""
                                        src="../assets/images/products/product-5.jpg"
                                        alt=""
                                    >
                                </picture>
                                <picture class="position-absolute z-index-20 start-0 top-0 hover-show bg-light">
                                    <img
                                        class="w-100 img-fluid"
                                        title=""
                                        src="../assets/images/products/product-5b.jpg"
                                        alt=""
                                    >
                                </picture>
                                <div class="card-actions">
                                    <span class="small text-uppercase tracking-wide fw-bolder text-center d-block">Quick Add</span>
                                    <div class="d-flex justify-content-center align-items-center flex-wrap mt-3">
                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 text-center">
                                <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                    <!-- Review Stars Small-->
                                    <div class="rating position-relative d-table">
                                        <div class="position-absolute stars" style="width: 84%">
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                        </div>
                                        <div class="stars">
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                        </div>
                                    </div>
                                    <span class="small fw-bolder ms-2 text-muted"> 4.8 (189)</span>
                                </div>
                                <a
                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                    href="./product.html"
                                >Mens Slab Hoodie</a>
                                <p class="fw-bolder m-0 mt-2">$29.99</p>
                            </div>
                        </div>
                        <!--/ Card Product-->
                    </div>
                    <div class="swiper-slide d-flex h-auto">
                        <!-- Card Product-->
                        <div class="card position-relative h-100 card-listing hover-trigger">
                            <div class="card-header">
                                <picture class="position-relative overflow-hidden d-block bg-light">
                                    <img
                                        class="w-100 img-fluid position-relative z-index-10"
                                        title=""
                                        src="../assets/images/products/product-6.jpg"
                                        alt=""
                                    >
                                </picture>
                                <div class="card-actions">
                                    <span class="small text-uppercase tracking-wide fw-bolder text-center d-block">Quick Add</span>
                                    <div class="d-flex justify-content-center align-items-center flex-wrap mt-3">
                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 text-center">
                                <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                    <!-- Review Stars Small-->
                                    <div class="rating position-relative d-table">
                                        <div class="position-absolute stars" style="width: 60%">
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                        </div>
                                        <div class="stars">
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                        </div>
                                    </div>
                                    <span class="small fw-bolder ms-2 text-muted"> 4.5 (1567)</span>
                                </div>
                                <a
                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                    href="./product.html"
                                >Blocked Striped Hoodie</a>
                                <p class="fw-bolder m-0 mt-2">$1329.99</p>
                            </div>
                        </div>
                        <!--/ Card Product-->
                    </div>
                    <div class="swiper-slide d-flex h-auto">
                        <!-- Card Product-->
                        <div class="card position-relative h-100 card-listing hover-trigger">
                            <span class="badge card-badge bg-secondary">-13%</span>
                            <div class="card-header">
                                <picture class="position-relative overflow-hidden d-block bg-light">
                                    <img
                                        class="w-100 img-fluid position-relative z-index-10"
                                        title=""
                                        src="../assets/images/products/product-7.jpg"
                                        alt=""
                                    >
                                </picture>
                                <div class="card-actions">
                                    <span class="small text-uppercase tracking-wide fw-bolder text-center d-block">Quick Add</span>
                                    <div class="d-flex justify-content-center align-items-center flex-wrap mt-3">
                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 text-center">
                                <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                    <!-- Review Stars Small-->
                                    <div class="rating position-relative d-table">
                                        <div class="position-absolute stars" style="width: 60%">
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                        </div>
                                        <div class="stars">
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                        </div>
                                    </div>
                                    <span class="small fw-bolder ms-2 text-muted"> 4.4 (1289)</span>
                                </div>
                                <a
                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                    href="./product.html"
                                >Womens Classic Hoodie</a>
                                <div class="d-flex justify-content-center align-items-center mt-2">
                                    <p class="mb-0 me-2 text-danger fw-bolder">
                                        $<span>599.55</span>
                                    </p>
                                    <p class="mb-0 text-muted fw-bolder">
                                        <s>
                                            $<span>150.00</span>
                                        </s>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--/ Card Product-->
                    </div>
                    <div class="swiper-slide d-flex h-auto">
                        <!-- Card Product-->
                        <div class="card position-relative h-100 card-listing hover-trigger">
                            <span class="badge card-badge bg-secondary">-33%</span>
                            <div class="card-header">
                                <picture class="position-relative overflow-hidden d-block bg-light">
                                    <img
                                        class="w-100 img-fluid position-relative z-index-10"
                                        title=""
                                        src="../assets/images/products/product-8.jpg"
                                        alt=""
                                    >
                                </picture>
                                <div class="card-actions">
                                    <span class="small text-uppercase tracking-wide fw-bolder text-center d-block">Quick Add</span>
                                    <div class="d-flex justify-content-center align-items-center flex-wrap mt-3">
                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 text-center">
                                <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                    <!-- Review Stars Small-->
                                    <div class="rating position-relative d-table">
                                        <div class="position-absolute stars" style="width: 20%">
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                            <i class="ri-star-fill text-dark mr-1"></i>
                                        </div>
                                        <div class="stars">
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                        </div>
                                    </div>
                                    <span class="small fw-bolder ms-2 text-muted"> 4.7 (754)</span>
                                </div>
                                <a
                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                    href="./product.html"
                                >
                                    Mens Sherpa Hoodie
                                </a>
                                <div class="d-flex justify-content-center align-items-center mt-2">
                                    <p class="mb-0 me-2 text-danger fw-bolder">
                                        $<span>779.55</span>
                                    </p>
                                    <p class="mb-0 text-muted fw-bolder">
                                        <s>
                                            $<span>1100.00</span>
                                        </s>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--/ Card Product-->
                    </div>
                    <div class="swiper-slide d-flex h-auto justify-content-center align-items-center">
                        <a
                            href="./category.html"
                            class="d-flex text-decoration-none flex-column justify-content-center align-items-center"
                        >
                            <span class="btn btn-dark btn-icon mb-3">
                                <i class="ri-arrow-right-line ri-lg lh-1"></i>
                            </span>
                            <span class="lead fw-bolder">See All</span>
                        </a>
                    </div>
                </div>
                <!-- Buttons-->
                <div
                    class="swiper-btn swiper-disabled-hide swiper-prev swiper-btn-side btn-icon bg-dark text-white ms-3 shadow-lg mt-n5 ms-n4"
                >
                    <i class="ri-arrow-left-s-line ri-lg"></i>
                </div>
                <div
                    class="swiper-btn swiper-disabled-hide swiper-next swiper-btn-side swiper-btn-side-right btn-icon bg-dark text-white me-n4 shadow-lg mt-n5"
                >
                    <i class="ri-arrow-right-s-line ri-lg"></i>
                </div>
                <!-- Add Scrollbar -->
                <div class="swiper-scrollbar"></div>
            </div>
            <!-- / Swiper Latest-->
        </div>
    </section>
    <!-- / Staff Picks-->

    <!-- Image Hotspot Banner-->
    <section class="my-10 position-relative">
        <!-- SVG Shape Divider-->
        <div class="position-absolute z-index-50 text-white top-0 start-0 end-0">
            <svg class="align-self-start d-flex" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1283 53.25">
                <polygon fill="currentColor" points="1283 0 0 0 0 53.25 1283 0"/>
            </svg>
        </div>
        <!-- /SVG Shape Divider-->

        <div
            class="w-100 h-100 bg-img-cover bg-pos-center-center hotspot-container py-5 py-md-7 py-lg-10" style="background-image: url(https://images.unsplash.com/photo-1508746829417-e6f548d8d6ed?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80);"
        >
            <div
                class="hotspot d-none d-lg-block"
                data-options='{
                "placement": {
                "left": "68%",
                "bottom": "40%"
                },
                "alwaysVisible": true,
                "alwaysAnimate": true,
                "contentTarget": "##hotspot-one",
                "trigger": "mouseenter"
                }'
            >
                
            </div>
            <div
                class="hotspot d-none d-lg-block"
                data-options='{
                "placement": {
                "left": "53%",
                "top": "40%"
                },
                "alwaysVisible": true,
                "alwaysAnimate": true,
                "contentTarget": "##hotspot-one"
                }'
            >
                
            </div>
            <div class="container py-lg-8 position-relative z-index-10 d-flex align-items-center" data-aos="fade-left">
                <div
                    class="py-8 d-flex justify-content-end align-items-start align-items-lg-end flex-column col-lg-4 text-lg-end"
                >
                    <p class="small fw-bolder text-uppercase tracking-wider mb-2 text-muted">Extreme Performance</p>
                    <h2 class="display-5 fw-bold mb-3">The North Face</h2>
                    <p class="lead d-none d-lg-block">Be ready all year round with our selection of North Face outdoor jackets — perfect for any time of the year and year round. Choose from a variety of colour shades and styles to warm you up in cold conditions.</p>
                    <a class="text-decoration-none fw-bolder" href="##">Shop The North Face &rarr;</a>
                </div>
            </div>

            <!-- Example Hotspot HTML Content -->
            <div id="hotspot-one" class="d-none">
                <div class="m-n2 rounded overflow-hidden">
                    <div class="mb-1 bg-light d-flex justify-content-center">
                        <div class="f-w-48 px-3 pt-3">
                            <img
                                class="img-fluid"
                                src="../assets/images/products/product-3.jpg"
                                alt="Bootstrap 5 Template by Pixel Rocket"
                            >
                        </div>
                    </div>
                    <div class="px-4 py-4 text-center">
                        <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                            <!-- Review Stars Small-->
                            <div class="rating position-relative d-table">
                                <div class="position-absolute stars" style="width: 80%">
                                    <i class="ri-star-fill text-dark mr-1"></i>
                                    <i class="ri-star-fill text-dark mr-1"></i>
                                    <i class="ri-star-fill text-dark mr-1"></i>
                                    <i class="ri-star-fill text-dark mr-1"></i>
                                    <i class="ri-star-fill text-dark mr-1"></i>
                                </div>
                                <div class="stars">
                                    <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                    <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                    <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                    <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                    <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                </div>
                            </div>
                            <span class="small fw-bolder ms-2 text-muted"> 4.4 (1289)</span>
                        </div>
                        <p class="mb-0 mx-4">Pusher Outdoor Jeans Black Women</p>
                        <p class="lead lh-1 m-0 fw-bolder mt-2 mb-3">$199.87</p>
                        <a href="./product.html" class="fw-bolder text-link-border pb-1 fs-6">
                            Full details <i class="ri-arrow-right-line align-bottom"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- SVG Shape Divider-->
        <div class="position-absolute z-index-50 text-white bottom-0 start-0 end-0">
            <svg class="align-self-end d-flex" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1283 53.25">
                <polygon fill="currentColor" points="0 53.25 1283 53.25 1283 0 0 53.25"/>
            </svg>
        </div>
        <!-- /SVG Shape Divider-->
    </section>
    <!-- / Image Hotspot Banner-->

    <!-- Linked Product Carousels-->
    <section class="py-5" data-aos="fade-in">
        <div class="container">
            <div class="row g-5">
                <div class="col-12 col-md-7" data-aos="fade-right">
                    <div class="m-0">
                        <p class="small fw-bolder text-uppercase tracking-wider mb-2 text-muted">
                            Hiking Essentials
                        </p>
                        <h2 class="display-5 fw-bold mb-6">Our Latest Must-Have Products</h2>
                        <div class="px-8 position-relative">
                            <!-- Swiper-->
                            <div class="swiper-container swiper-linked-carousel-small">
                                <!-- Add Pagination -->
                                <div class="swiper-pagination-blocks mb-4">
                                    <div class="swiper-pagination-custom"></div>
                                </div>

                                <div class="swiper-wrapper">
                                    <!-- Swiper Slide-->
                                    <div class="swiper-slide overflow-hidden">
                                        <!-- Card-->
                                        <!-- Card Product-->
                                        <div class="card position-relative h-100 card-listing hover-trigger">
                                            <div class="card-header">
                                                <picture class="position-relative overflow-hidden d-block bg-light">
                                                    <img
                                                        class="w-100 img-fluid position-relative z-index-10"
                                                        title=""
                                                        src="../assets/images/products/product-12.jpg"
                                                        alt="Bootstrap 5 Template by Pixel Rocket"
                                                    >
                                                </picture>
                                                <div class="card-actions">
                                                    <span
                                                        class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                    >Quick Add</span>
                                                    <div
                                                        class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                    >
                                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 text-center">
                                                <div
                                                    class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                >
                                                    <!-- Review Stars Small-->
                                                    <div class="rating position-relative d-table">
                                                        <div class="position-absolute stars" style="width: 80%">
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                        </div>
                                                        <div class="stars">
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                        </div>
                                                    </div>
                                                    <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                </div>
                                                <a
                                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                    href="./product.html"
                                                >Mens Outdoors T-Shirt</a>
                                                <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                            </div>
                                        </div>
                                        <!--/ Card Product-->
                                        <!--/ Card-->
                                    </div>
                                    <!-- / Swiper Slide-->

                                    <!-- Swiper Slide-->
                                    <div class="swiper-slide overflow-hidden">
                                        <!-- Card-->
                                        <!-- Card Product-->
                                        <div class="card position-relative h-100 card-listing hover-trigger">
                                            <div class="card-header">
                                                <picture class="position-relative overflow-hidden d-block bg-light">
                                                    <img
                                                        class="w-100 img-fluid position-relative z-index-10"
                                                        title=""
                                                        src="../assets/images/products/product-1.jpg"
                                                        alt="Bootstrap 5 Template by Pixel Rocket"
                                                    >
                                                </picture>
                                                <div class="card-actions">
                                                    <span
                                                        class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                    >Quick Add</span>
                                                    <div
                                                        class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                    >
                                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 text-center">
                                                <div
                                                    class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                >
                                                    <!-- Review Stars Small-->
                                                    <div class="rating position-relative d-table">
                                                        <div class="position-absolute stars" style="width: 80%">
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                        </div>
                                                        <div class="stars">
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                        </div>
                                                    </div>
                                                    <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                </div>
                                                <a
                                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                    href="./product.html"
                                                >Mens Flyroam Sneakers</a>
                                                <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                            </div>
                                        </div>
                                        <!--/ Card Product-->
                                        <!--/ Card-->
                                    </div>
                                    <!-- / Swiper Slide-->

                                    <!-- Swiper Slide-->
                                    <div class="swiper-slide overflow-hidden">
                                        <!-- Card-->
                                        <!-- Card Product-->
                                        <div class="card position-relative h-100 card-listing hover-trigger">
                                            <div class="card-header">
                                                <picture class="position-relative overflow-hidden d-block bg-light">
                                                    <img
                                                        class="w-100 img-fluid position-relative z-index-10"
                                                        title=""
                                                        src="../assets/images/products/product-13.jpg"
                                                        alt="Bootstrap 5 Template by Pixel Rocket"
                                                    >
                                                </picture>
                                                <div class="card-actions">
                                                    <span
                                                        class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                    >Quick Add</span>
                                                    <div
                                                        class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                    >
                                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body px-0 text-center">
                                                <div
                                                    class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                >
                                                    <!-- Review Stars Small-->
                                                    <div class="rating position-relative d-table">
                                                        <div class="position-absolute stars" style="width: 80%">
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                            <i class="ri-star-fill text-dark mr-1"></i>
                                                        </div>
                                                        <div class="stars">
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                        </div>
                                                    </div>
                                                    <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                </div>
                                                <a
                                                    class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                    href="./product.html"
                                                >Mens Flyroam Sneakers</a>
                                                <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                            </div>
                                        </div>
                                        <!--/ Card Product-->
                                        <!--/ Card-->
                                    </div>
                                    <!-- / Swiper Slide-->
                                </div>
                            </div>
                            <!-- /Swiper-->

                            <!-- Swiper Arrows -->
                            <div
                                class="swiper-prev-linked position-absolute top-50 start-0 mt-n8 cursor-pointer transition-all opacity-50-hover"
                            >
                                <i class="ri-arrow-left-s-line ri-2x"></i>
                            </div>
                            <div
                                class="swiper-next-linked position-absolute top-50 end-0 me-3 mt-n8 cursor-pointer transition-all opacity-50-hover"
                            >
                                <i class="ri-arrow-right-s-line ri-2x"></i>
                            </div>
                            <!-- / Swiper Arrows-->
                        </div>
                    </div>
                </div>
                <div class="col-md-5 d-none d-md-flex" data-aos="fade-left">
                    <div class="w-100 h-100">
                        <!-- Swiper-->
                        <div class="swiper-container h-100 swiper-linked-carousel-large">
                            <div class="swiper-wrapper h-100">
                                <!-- Swiper Slide-->
                                <div class="swiper-slide">
                                    <div class="row g-3">
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-13.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Pocket Tee Rusty Red</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-14.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Mens T-Shirt Rusty</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-15.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Mens T-Shirt Phantom</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-16.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Heather T-Shirt</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                    </div>
                                </div>
                                <!-- /Swiper Slide-->

                                <!-- Swiper Slide-->
                                <div class="swiper-slide">
                                    <div class="row g-3">
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-2.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Mens Classic Hoodie</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-3.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Womens Essential Hoodie</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-4.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Sherpa Hoodie</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-5.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Mens Flyroam Hoodie</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                    </div>
                                </div>
                                <!-- /Swiper Slide-->

                                <!-- Swiper Slide-->
                                <div class="swiper-slide">
                                    <div class="row g-3">
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-12.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Mens Tee Faded Brown</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-14.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Mens Flyroam T-Shirt</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-15.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Little Brown T</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <!-- Card Product-->
                                            <div class="card position-relative h-100 card-listing hover-trigger">
                                                <div class="card-header">
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img
                                                            class="w-100 img-fluid position-relative z-index-10"
                                                            title=""
                                                            src="../assets/images/products/product-16.jpg"
                                                            alt="Bootstrap 5 Template by Pixel Rocket"
                                                        >
                                                    </picture>
                                                    <div class="card-actions">
                                                        <span
                                                            class="small text-uppercase tracking-wide fw-bolder text-center d-block"
                                                        >Quick Add</span>
                                                        <div
                                                            class="d-flex justify-content-center align-items-center flex-wrap mt-3"
                                                        >
                                                            <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                            <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body px-0 text-center">
                                                    <div
                                                        class="d-flex justify-content-center align-items-center mx-auto mb-1"
                                                    >
                                                        <!-- Review Stars Small-->
                                                        <div class="rating position-relative d-table">
                                                            <div class="position-absolute stars" style="width: 80%">
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                                <i class="ri-star-fill text-dark mr-1"></i>
                                                            </div>
                                                            <div class="stars">
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                                            </div>
                                                        </div>
                                                        <span class="small fw-bolder ms-2 text-muted"> 4.7 (1669)</span>
                                                    </div>
                                                    <a
                                                        class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center"
                                                        href="./product.html"
                                                    >Mens Flyroam Sneakers</a>
                                                    <p class="fw-bolder m-0 mt-2">$1699.87</p>
                                                </div>
                                            </div>
                                            <!--/ Card Product-->
                                        </div>
                                    </div>
                                </div>
                                <!-- /Swiper Slide-->
                            </div>
                        </div>
                        <!-- / Swiper-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- / Linked Product Carousels-->

    <!-- Sale Banner -->
    <section class="position-relative my-5 my-md-7 my-lg-9 bg-dark" data-aos="fade-in">
        <!-- SVG Shape Divider-->
        <div class="position-absolute text-white z-index-50 top-0 end-0 start-0">
            <svg class="align-self-start d-flex" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1283 53.25">
                <polygon fill="currentColor" points="1283 0 0 0 0 53.25 1283 0"/>
            </svg>
        </div>
        <!-- /SVG Shape Divider-->

        <div class="py-7 py-lg-10">
            <div class="container text-white py-4 py-md-6">
                <div class="row g-5 align-items-center">
                    <div
                        class="col-12 col-lg-4 justify-content-center d-flex justify-content-lg-start"
                        data-aos="fade-right"
                        data-aos-delay="250"
                    >
                        <h3 class="fs-1 fw-bold mb-0 lh-1">
                            <i class="ri-timer-flash-line align-bottom"></i> Sale
                            Extended
                        </h3>
                    </div>
                    <div
                        class="col-12 col-lg-4 d-flex justify-content-center flex-column"
                        data-aos="fade-up"
                        data-aos-delay="250"
                    >
                        <a href="./category.html" class="btn btn-orange btn-orange-chunky text-white my-1">
                            <span>
                                Shop
                                Menswear
                            </span>
                        </a>
                        <a href="./category.html" class="btn btn-orange btn-orange-chunky text-white my-1">
                            <span>
                                Shop
                                Womenswear
                            </span>
                        </a>
                        <a href="./category.html" class="btn btn-orange btn-orange-chunky text-white my-1">
                            <span>
                                Shop
                                Kidswear
                            </span>
                        </a>
                        <a href="./category.html" class="btn btn-orange btn-orange-chunky text-white my-1">
                            <span>
                                Shop
                                Accessories
                            </span>
                        </a>
                    </div>
                    <div class="col-12 col-lg-4 text-center text-lg-end" data-aos="fade-left" data-aos-delay="250">
                        <p class="lead fw-bolder">Discount applied to products at checkout.</p>
                        <a
                            class="text-white fw-bolder text-link-border border-2 border-white align-self-start pb-1 transition-all opacity-50-hover"
                            href="##"
                        >
                            Exclusions apply. Learn more <i class="ri-arrow-right-line align-bottom"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- SVG Shape Divider-->
        <div class="position-absolute z-index-50 text-white bottom-0 start-0 end-0">
            <svg class="align-self-end d-flex" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1283 53.25">
                <polygon fill="currentColor" points="0 53.25 1283 53.25 1283 0 0 53.25"/>
            </svg>
        </div>
        <!-- /SVG Shape Divider-->
    </section>
    <!-- /Sale Banner -->

    <!-- Reviews-->
    <section>
        <div class="container" data-aos="fade-in">
            <h2 class="fs-1 fw-bold mb-3 text-center mb-5">Customer Reviews</h2>
            <div class="row g-3">
                <div class="col-12 col-lg-4" data-aos="fade-left">
                    <div
                        class="bg-light p-4 d-flex h-100 justify-content-start align-items-center flex-column text-center"
                    >
                        <p class="fw-bolder lead">Amazing Service!</p>
                        <p class="mb-3">
                            I have shopped with them for a few years now. Very easy to select items, items always as
                            described. Never had to return any item. Good value.
                        </p>
                        <small class="text-muted d-block mb-2 fw-bolder">John Doe, London</small>
                        <!-- Review Stars Small-->
                        <div class="rating position-relative d-table">
                            <div class="position-absolute stars" style="width: 75%">
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                            </div>
                            <div class="stars">
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4" data-aos="fade-left" data-aos-delay="150">
                    <div
                        class="bg-light p-4 d-flex h-100 justify-content-start align-items-center flex-column text-center"
                    >
                        <p class="fw-bolder lead">Great Prices</p>
                        <p class="mb-3">
                            Always find these guys competitive,and with a huge range of products,coupled with great
                            marketing,its difficult not to buy something.
                        </p>
                        <small class="text-muted d-block mb-2 fw-bolder">Sally Smith, Dublin</small>
                        <!-- Review Stars Small-->
                        <div class="rating position-relative d-table">
                            <div class="position-absolute stars" style="width: 75%">
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                            </div>
                            <div class="stars">
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4" data-aos="fade-left" data-aos-delay="300">
                    <div
                        class="bg-light p-4 d-flex h-100 justify-content-start align-items-center flex-column text-center"
                    >
                        <p class="fw-bolder lead">Fantastic Website</p>
                        <p class="mb-3">
                            My package was missing an item but customer services resolved it immediately and i got
                            another delivery quite promptly.
                            Also the product was absolutely lovely
                        </p>
                        <small class="text-muted d-block mb-2 fw-bolder">John Patrick, London</small>
                        <!-- Review Stars Small-->
                        <div class="rating position-relative d-table">
                            <div class="position-absolute stars" style="width: 75%">
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                                <i class="ri-star-fill text-dark mr-1"></i>
                            </div>
                            <div class="stars">
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                                <i class="ri-star-fill mr-1 text-muted opacity-25"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center flex-column mt-7 align-items-center">
                <h3 class="mb-4 fw-bold fs-4">See what others have said</h3>
                <div class="d-flex justify-content-center align-items-center">
                    <span class="fs-3 fw-bold me-4">4.85 / 5</span>
                    <!-- Review Stars Medium-->
                    <div class="rating position-relative d-table">
                        <div class="position-absolute stars" style="width: 88%">
                            <i class="ri-star-fill text-dark ri-2x mr-1"></i>
                            <i class="ri-star-fill text-dark ri-2x mr-1"></i>
                            <i class="ri-star-fill text-dark ri-2x mr-1"></i>
                            <i class="ri-star-fill text-dark ri-2x mr-1"></i>
                            <i class="ri-star-fill text-dark ri-2x mr-1"></i>
                        </div>
                        <div class="stars">
                            <i class="ri-star-fill ri-2x mr-1 text-muted"></i>
                            <i class="ri-star-fill ri-2x mr-1 text-muted"></i>
                            <i class="ri-star-fill ri-2x mr-1 text-muted"></i>
                            <i class="ri-star-fill ri-2x mr-1 text-muted"></i>
                            <i class="ri-star-fill ri-2x mr-1 text-muted"></i>
                        </div>
                    </div>
                </div>
                <a href="##" class="btn btn-dark rounded-0 mt-4">Read 4,215 more reviews</a>
            </div>
        </div>
    </section>
    <!-- /Reviews-->
</cfoutput>
