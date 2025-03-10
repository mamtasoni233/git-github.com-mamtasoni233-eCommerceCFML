<cfparam name="id" default="#url.id#" />
<cfparam name="productTagValue" default="" />
<cfparam name="PkCategoryId" default="" />
<cfparam name="PkTagId" default="" />
<cfparam name="PkProductId" default="" />
<cfparam name="isDeleted" default="0" />
<cfparam name="startRow" default="">
<cfparam name="pageNum" default="1">
<cfparam name="maxRows" default="9">
<cfparam name="sorting" default="P.productName ASC">
<cfset customerId = session.customer.isLoggedIn>
<cfset startRow = ( pageNum-1 ) * maxRows>

<cfparam name="minPrice" default="">
<cfparam name="maxPrice" default="">
<cfquery name="getProduct">
    SELECT P.PkProductId, P.productQty, P.productName, P.productPrice, PT.PkTagId, PT.tagName 
    FROM product P
    LEFT JOIN product_tags PT ON PT.PkTagId = P.product_tags 
    WHERE P.isDeleted = <cfqueryparam value="#isDeleted#" cfsqltype = "cf_sql_bit">
    AND P.FkCategoryId = <cfqueryparam value="#url.id#" cfsqltype = "cf_sql_integer">
    <cfif structKeyExists(url, 'tags') AND url.tags GT 0>
        AND (
            P.product_tags LIKE (<cfqueryparam value="%#url.tags#%">)
            <cfloop list="#tags#" item="item">
                OR P.product_tags LIKE (<cfqueryparam value="%#item#%">)
            </cfloop>
        )
    </cfif>
    <cfif (structKeyExists(url, "minPrice") AND len(url.minPrice) GT 0) AND (structKeyExists(url, "maxPrice") AND len(url.maxPrice) GT 0)>
        AND P.productPrice BETWEEN <cfqueryparam value="#url.minPrice#" cfsqltype = "cf_sql_float"> AND <cfqueryparam value="#url.maxPrice#" cfsqltype = "cf_sql_float"> 
    </cfif>
    <cfif structKeyExists(url, 'sorting') AND len(url.sorting) GT 0>
        ORDER BY #url.sorting#
    <cfelse>
        ORDER BY #sorting#
    </cfif>
</cfquery>
<!--- paingnation --->
<cfset totalPages = ceiling( getProduct.recordCount/maxRows )>
<cfquery name="getProductPaging">
    SELECT P.PkProductId, P.productQty, P.productName, P.productPrice, PT.PkTagId, PT.tagName 
    FROM product P
    LEFT JOIN product_tags PT ON PT.PkTagId = P.product_tags 
    WHERE  P.isDeleted = <cfqueryparam value="#isDeleted#" cfsqltype = "cf_sql_bit">
    AND P.FkCategoryId = <cfqueryparam value="#url.id#" cfsqltype = "cf_sql_integer">
    <cfif structKeyExists(url, 'tags') AND url.tags GT 0>
        AND (
            P.product_tags LIKE (<cfqueryparam value="%#url.tags#%">)
            <cfloop list="#tags#" item="item">
                OR P.product_tags LIKE (<cfqueryparam value="%#item#%">)
            </cfloop>
        )
    </cfif>
    <cfif (structKeyExists(url, "minPrice") AND len(url.minPrice) GT 0) AND (structKeyExists(url, "maxPrice") AND len(url.maxPrice) GT 0)>
        AND P.productPrice BETWEEN <cfqueryparam value="#url.minPrice#" cfsqltype = "cf_sql_float"> AND <cfqueryparam value="#url.maxPrice#" cfsqltype = "cf_sql_float"> 
    </cfif>
    <cfif structKeyExists(url, 'sorting') AND len(url.sorting) GT 0>
        ORDER BY #url.sorting#
    <cfelse>
        ORDER BY #sorting#
    </cfif>
    LIMIT #startRow#, #maxRows#
</cfquery>
<cfset productPrice = getProductPaging.productPrice>

<cffunction name="getCategoryResult" access="public" returntype="array">
    <cfargument name="parentId" default="0" required="false" type="numeric"/>
    <cfargument name="categoryId" default="0" required="false" type="numeric"/>
    <cfargument name="returnArray" required="false" type="array" default="#arrayNew(1)#"/>
    <cfset var qryGetCategory = "">
    <cfquery name="qryGetCategory">
        SELECT categoryName, PkCategoryId, parentCategoryId, categoryImage 
        FROM Category
        WHERE 1 = 1
        <cfif arguments.categoryId GT 0>
            AND PkCategoryId = <cfqueryparam value="#arguments.categoryId#" cfsqltype="cf_sql_integer">
        <cfelse>
            AND parentCategoryId = <cfqueryparam value="#arguments.parentId#" cfsqltype="cf_sql_integer">
        </cfif>
        AND isDeleted = <cfqueryparam value="0" cfsqltype="cf_sql_integer">
    </cfquery>
    <cfif qryGetCategory.recordCount GT 0>
        <cfloop query="qryGetCategory">
            <cfset var res = StructNew()>
            <cfset res['child'] = []>
            <cfset res['catName'] = qryGetCategory.categoryName>
            <cfset res['PkCategoryId'] = qryGetCategory.PkCategoryId>
            <cfset res['parentCategoryId'] = qryGetCategory.parentCategoryId>
            <cfset res['categoryImage'] = qryGetCategory.categoryImage>
            <cfset res['child'] = getCategoryResult(res.PkCategoryId)>
            <cfquery name="countProduct">
                SELECT COUNT(P.PkProductId) AS productCount
                FROM product P
                WHERE P.isDeleted = <cfqueryparam value="0" cfsqltype = "cf_sql_integer">
                AND P.FkCategoryId = <cfqueryparam value="#res['PkCategoryId']#" cfsqltype = "cf_sql_integer">
            </cfquery>
            <cfset res['productCount'] = countProduct.productCount>
            <cfset arrayAppend(arguments.returnArray, res)> 
        </cfloop>
    </cfif>
    <cfreturn arguments.returnArray>
</cffunction>
<cfquery name="qryGetSecLevelCat">
    SELECT C.parentCategoryId, C.categoryName, B.parentCategoryId AS seclevelCat
    FROM category C, category B
    WHERE C.PkCategoryId = <cfqueryparam value="#url.id#" cfsqltype = "cf_sql_integer">
    AND B.PkCategoryId = C.parentCategoryId
</cfquery>
<cfset categoryList = getCategoryResult(qryGetSecLevelCat.seclevelCat, qryGetSecLevelCat.parentCategoryId)>
<cfquery name="getProductTag">
    SELECT PT.PkTagId, PT.FkCategoryId, PT.tagName, PT.isActive, PT.isDeleted
    FROM product_tags PT
    WHERE PT.isDeleted = <cfqueryparam value="0" cfsqltype = "cf_sql_bit">
    AND PT.isActive = <cfqueryparam value="1" cfsqltype = "cf_sql_bit">
    AND PT.FkCategoryId = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>
<cfoutput>
    <style>
        img{
            width: 200px;
            height: 300px;
            object-fit: contain;
        }
        ##overlay {
            position: relative;
            width: 100%;
            height: 100%;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            z-index: 9999;
        }
        .cv-spinner {
            position: absolute;
            width: inherit;
            height: inherit;
        }
        .spinner {
            width: 40px;
            height: 40px;
            border: 4px ##ddd solid;
            border-top: 4px ##2e93e6 solid;
            border-radius: 50%;
            animation: sp-anime 0.8s infinite linear;
        }
        @keyframes sp-anime {
            100% { 
                transform: rotate(360deg); 
            }
        }
    </style>
    <cfset imagePath = "http://127.0.0.1:50847/assets/productImage/">
    <!-- Category Top Banner -->
    <div class="py-6 bg-img-cover bg-dark bg-overlay-gradient-dark position-relative overflow-hidden mb-4 bg-pos-center-center"
        style="background-image: url('../assets/images/banners/banner-1.jpg');">
        <div class="container position-relative z-index-20" data-aos="fade-right" data-aos-delay="300">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item breadcrumb-light"><a href="index.cfm?pg=dashboard">Home</a></li>
                    <li class="breadcrumb-item breadcrumb-light">
                        <cfloop array="#categoryList#" index="idx">
                            <cfif idx.PkCategoryId EQ qryGetSecLevelCat.parentCategoryId>
                                #idx.catName#
                            </cfif>
                        </cfloop>    
                    </li>
                    <li class="breadcrumb-item active breadcrumb-light" aria-current="page">#qryGetSecLevelCat.categoryName#</li>
                </ol>
            </nav>                
            <h1 class="fw-bold display-6 mb-4 text-white">Latest Arrivals (121)</h1>
            <div class="col-12 col-md-6">
                <p class="lead text-white mb-0">
                    Move, stretch, jump and hike in our latest waterproof arrivals. We've got you covered for your
                    hike or climbing sessions, from Gortex jackets to lightweight waterproof pants. Discover our
                    latest range of outdoor clothing.
                </p>
            </div>
        </div>
    </div>
    <!-- Category Top Banner -->
    <div class="container">
        <div class="row">
            <!-- Category Aside/Sidebar -->
            <div class="d-none d-lg-flex col-lg-3">
                <div class="pe-4">
                    <!-- Category Aside -->
                    <aside>
                        <!-- Filter Category -->
                        <div class="mb-4">
                            <h2 class="mb-4 fs-6 mt-2 fw-bolder">
                                <cfloop array="#categoryList#" index="idx">
                                    #idx.catName#
                                </cfloop>
                            </h2>
                            <nav>
                                <ul class="list-unstyled list-default-text">
                                    <cfloop array="#categoryList#" index="idx">
                                        <cfloop array="#idx.child#" index="child">
                                            <li class="mb-2">
                                                <a class="text-decoration-none text-body text-secondary-hover transition-all d-flex justify-content-between align-items-center"
                                                href="index.cfm?pg=category&id=#child.PkCategoryId#&pageNum=1">
                                                    <span><i class="ri-arrow-right-s-line align-bottom ms-n1"></i> 
                                                        #child.catName#
                                                    </span> 
                                                    <span class="text-muted ms-4">(#child.productCount#)</span>
                                                </a>
                                            </li>
                                        </cfloop>
                                    </cfloop>              
                                </ul>
                            </nav>
                        </div>
                        <!--- / Filter Category --->
                        <!--- Price Range Filter --->
                        <div class="py-4 widget-filter widget-filter-price border-top">
                            <a class="small text-body text-decoration-none text-secondary-hover transition-all transition-all fs-6 fw-bolder d-block collapse-icon-chevron"
                                data-bs-toggle="collapse" href="##filter-price" role="button" aria-expanded="true"
                                aria-controls="filter-price">
                                Price
                            </a>
                            <div id="filter-price" class="collapse show">
                                <div class="filter-price mt-6"></div>
                                <div class="d-flex justify-content-between align-items-center mt-7" id="">
                                    <div class="input-group mb-0 me-2 border">
                                        <span class="input-group-text bg-transparent fs-7 p-2 text-muted border-0">
                                            <i class="fa fa-rupee"></i>
                                        </span>
                                        <input type="number" min="00" max="1000" data-priceRange="filterPriceMin" step="1" value="<cfif structKeyExists(url, 'minPrice')>#url.minPrice#</cfif>" class="filter-min form-control-sm w-50 text-muted border-0 flex-grow-1" id="filterPriceMin">
                                    </div>   
                                    <div class="input-group mb-0 ms-2 border">
                                        <span class="input-group-text bg-transparent fs-7 p-2 text-muted border-0">
                                            <i class="fa fa-rupee"></i>
                                        </span>
                                        <input type="number" min="00" max="1000" data-priceRange="filterPriceMax" step="1" value="<cfif structKeyExists(url, 'maxPrice')>#url.maxPrice#</cfif>" class="filter-max form-control-sm w-50 text-muted border-0 flex-grow-1" id="filterPriceMax">
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-sm mt-3 btn-dark" id="applyPriceFilter">Apply Price Filter</button>
                                </div>
                            </div>
                        </div>
                        <!--- / Price Range Filter --->   
                        <!--- Brands Filter --->
                        <!--- <div class="py-4 widget-filter border-top">
                            <a class="small text-body text-decoration-none text-secondary-hover transition-all transition-all fs-6 fw-bolder d-block collapse-icon-chevron"
                                data-bs-toggle="collapse" href="##filter-brands" role="button" aria-expanded="true"
                                aria-controls="filter-brands">
                                Brands
                            </a>
                            <div id="filter-brands" class="collapse show">
                                <div class="input-group my-3 py-1">
                                    <input type="text" class="form-control py-2 filter-search rounded" placeholder="Search" aria-label="Search">
                                    <span class="input-group-text bg-transparent px-2 position-absolute top-7 end-0 border-0 z-index-20"><i class="ri-search-2-line text-muted"></i></span>
                                </div>
                                <div class="simplebar-wrapper">
                                    <div class="filter-options" data-pixr-simplebar>
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-0">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-0">
                                                Adidas <span class="text-muted">(21)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-1">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-1">
                                                Asics <span class="text-muted">(13)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-2">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-2">
                                                Canterbury <span class="text-muted">(18)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-3">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-3">
                                                Converse <span class="text-muted">(25)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-4">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-4">
                                                Donnay <span class="text-muted">(11)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-5">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-5">
                                                Nike <span class="text-muted">(19)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-6">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-6">Mi
                                                llet <span class="text-muted">(24)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-7">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-7">
                                                Puma <span class="text-muted">(11)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-8">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-8">Re
                                                ebok <span class="text-muted">(19)</span>
                                            </label>
                                        </div>                            
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input" id="filter-brand-9">
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-brand-9">
                                                Under Armour <span class="text-muted">(24)</span>
                                            </label>
                                        </div>                    
                                    </div>
                                </div>
                            </div>
                        </div> --->
                        <!--- / Brands Filter --->
                        <!--- Type Filter --->
                        <div class="py-4 widget-filter border-top">
                            <a class="small text-body text-decoration-none text-secondary-hover transition-all transition-all fs-6 fw-bolder d-block collapse-icon-chevron"
                                data-bs-toggle="collapse" href="##filter-type" role="button" aria-expanded="true"
                                aria-controls="filter-type">
                                Product Type
                            </a>
                            <div id="filter-type" class="collapse show">
                                <div class="input-group my-3 py-1">
                                    <input type="text" class="form-control py-2 filter-search rounded" placeholder="Search" aria-label="Search">
                                    <span class="input-group-text bg-transparent px-2 position-absolute top-7 end-0 border-0 z-index-20"><i class="ri-search-2-line text-muted"></i></span>
                                </div>
                                <div class="filter-options">
                                    <cfloop query="#getProductTag#">
                                        <div class="form-group form-check mb-0">
                                            <input type="checkbox" class="form-check-input productTag" name="productTag" value="#getProductTag.PkTagId#" data-tagName="#getProductTag.tagName#" data-catId ="#url.id#" id="filter-type-#getProductTag.PkTagId#" <cfif structKeyExists(url, 'tags') AND listFindNoCase(url.tags, getProductTag.PkTagId)>checked</cfif>>
                                            <label class="form-check-label fw-normal text-body flex-grow-1 d-flex justify-content-between" for="filter-type-#getProductTag.PkTagId#">#getProductTag.tagName#</label>
                                        </div>
                                    </cfloop>               
                                </div>
                            </div>
                        </div>
                        <!--- / Type Filter --->
                        <!-- Sizes Filter -->
                        <!--- <div class="py-4 widget-filter border-top">
                            <a class="small text-body text-decoration-none text-secondary-hover transition-all transition-all fs-6 fw-bolder d-block collapse-icon-chevron"
                                data-bs-toggle="collapse" href="##filter-sizes" role="button" aria-expanded="true"
                                aria-controls="filter-sizes">
                                Sizes
                            </a>
                            <div id="filter-sizes" class="collapse show">
                                <div class="filter-options mt-3">
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-0">
                                        <label class="form-check-label fw-normal" for="filter-sizes-0">6.5</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-1">
                                        <label class="form-check-label fw-normal" for="filter-sizes-1">7</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-2">
                                        <label class="form-check-label fw-normal" for="filter-sizes-2">7.5</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-3">
                                        <label class="form-check-label fw-normal" for="filter-sizes-3">8</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-4">
                                        <label class="form-check-label fw-normal" for="filter-sizes-4">8.5</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-5">
                                        <label class="form-check-label fw-normal" for="filter-sizes-5">9</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-6">
                                        <label class="form-check-label fw-normal" for="filter-sizes-6">9.5</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-7">
                                        <label class="form-check-label fw-normal" for="filter-sizes-7">10</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-8">
                                        <label class="form-check-label fw-normal" for="filter-sizes-8">10.5</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-9">
                                        <label class="form-check-label fw-normal" for="filter-sizes-9">11</label>
                                    </div>                        
                                    <div class="form-group d-inline-block mr-2 mb-2 form-check-bg form-check-custom">
                                        <input type="checkbox" class="form-check-bg-input" id="filter-sizes-10">
                                        <label class="form-check-label fw-normal" for="filter-sizes-10">11.5</label>
                                    </div>                
                                </div>
                            </div>
                        </div> --->
                        <!--- / Sizes Filter --->
                        <!--- Colour Filter --->
                        <!--- <div class="py-4 widget-filter border-top">
                            <a class="small text-body text-decoration-none text-secondary-hover transition-all transition-all fs-6 fw-bolder d-block collapse-icon-chevron"
                                data-bs-toggle="collapse" href="##filter-colour" role="button" aria-expanded="true"
                                aria-controls="filter-colour">
                                Colour
                            </a>
                            <div id="filter-colour" class="collapse show">
                                <div class="filter-options mt-3">
                                        <div class="form-group d-inline-block mr-1 mb-1 form-check-solid-bg-checkmark form-check-custom form-check-primary">
                                            <input type="checkbox" class="form-check-color-input" id="filter-colours-0">
                                            <label class="form-check-label" for="filter-colours-0"></label>
                                        </div>                        
                                        <div class="form-group d-inline-block mr-1 mb-1 form-check-solid-bg-checkmark form-check-custom form-check-success">
                                            <input type="checkbox" class="form-check-color-input" id="filter-colours-1">
                                            <label class="form-check-label" for="filter-colours-1"></label>
                                        </div>                        
                                        <div class="form-group d-inline-block mr-1 mb-1 form-check-solid-bg-checkmark form-check-custom form-check-danger">
                                            <input type="checkbox" class="form-check-color-input" id="filter-colours-2">
                                            <label class="form-check-label" for="filter-colours-2"></label>
                                        </div>                        
                                        <div class="form-group d-inline-block mr-1 mb-1 form-check-solid-bg-checkmark form-check-custom form-check-info">
                                            <input type="checkbox" class="form-check-color-input" id="filter-colours-3">
                                            <label class="form-check-label" for="filter-colours-3"></label>
                                        </div>                        
                                        <div class="form-group d-inline-block mr-1 mb-1 form-check-solid-bg-checkmark form-check-custom form-check-warning">
                                            <input type="checkbox" class="form-check-color-input" id="filter-colours-4">
                                            <label class="form-check-label" for="filter-colours-4"></label>
                                        </div>                        
                                        <div class="form-group d-inline-block mr-1 mb-1 form-check-solid-bg-checkmark form-check-custom form-check-dark">
                                            <input type="checkbox" class="form-check-color-input" id="filter-colours-5">
                                            <label class="form-check-label" for="filter-colours-5"></label>
                                        </div>                        
                                        <div class="form-group d-inline-block mr-1 mb-1 form-check-solid-bg-checkmark form-check-custom form-check-secondary">
                                            <input type="checkbox" class="form-check-color-input" id="filter-colours-6">
                                            <label class="form-check-label" for="filter-colours-6"></label>
                                        </div>                
                                    </div>
                            </div>
                        </div> --->
                        <!--- / Colour Filter --->
                    </aside>
                    <!--- / Category Aside --->                    
                </div>
            </div>
            <!--- / Category Aside/Sidebar --->
            <!--- Category Products --->
            <div class="col-12 col-lg-9 transition-fade">
                <div id="overlay" class="d-flex align-items-center justify-content-center d-none">
					<div class="cv-spinner d-flex align-items-center justify-content-center mx-auto">
                        <span class="spinner"></span>
                    </div>
				</div>
                <div class="d-flex align-items-center flex-column flex-md-row justify-content-end">
                    <cfset displayClass = "d-none">
                    <cfif structKeyExists(url, 'tags') AND url.tags GT 0>
                        <cfquery name="qryGetTagName" dbtype="query">
                            SELECT tagName, PkTagId
                            FROM getProductTag
                            WHERE PkTagId IN (<cfqueryparam value="#url.tags#" list="true">)
                        </cfquery>
                        <cfset displayClass = "">
                    <cfelseif structKeyExists(url, "minPrice") AND structKeyExists(url, "maxPrice") AND url.minPrice GT 0 AND url.maxPrice GT 0>
                        <cfset displayClass = "">
                    <cfelse>
                        <cfset displayClass = "d-none">
                    </cfif>
                    <div class="align-items-center flex-grow-1 mb-4 mb-md-0 #displayClass#" id="productTagContainer">
                        <small class="d-inline-block fw-bolder">Filtered by:</small>
                        <ul class="list-unstyled d-inline-block mb-0 ms-2" id="productTypeUl">
                            <cfif structKeyExists(variables, "qryGetTagName") AND qryGetTagName.recordCount GT 0>
                                <cfloop query="qryGetTagName">
                                    <li id="tagNameLi-#qryGetTagName.PkTagId#" data-name="#qryGetTagName.tagName#" class="bg-light py-1 fw-bolder px-2 cursor-pointer d-inline-block ms-1">Type: #qryGetTagName.tagName#<i class="ri-close-circle-line ps-1 align-bottom mt-1 deleteProductTag" data-id="#qryGetTagName.PkTagId#"></i></li>
                                </cfloop>
                            </cfif>
                            <cfif structKeyExists(url, "minPrice") AND structKeyExists(url, "maxPrice") AND url.minPrice GT 0 AND url.maxPrice GT 0>
                                <li id='priceLi' class='bg-light py-1 fw-bolder px-2 cursor-pointer ms-1 d-inline-block'>Price: <i class='fa fa-rupee'></i> #url.minPrice# - <i class='fa fa-rupee'></i> #url.maxPrice#<i class='ri-close-circle-line ps-1 align-bottom mt-1 deleteProductTag'></i></li>
                            </cfif>
                        </ul>
                        <span class="fw-bolder text-muted-hover text-decoration-underline ms-2 cursor-pointer small ps-1 d-inline-block" id="deleteAllProductTag">Clear All</span>
                    </div>
                    <!--- Filter Trigger --->
                    <button class="btn bg-light p-3 d-flex d-lg-none align-items-center fs-xs fw-bold text-uppercase w-100 mb-2 mb-md-0 w-md-auto" type="button" data-bs-toggle="offcanvas" data-bs-target="##offcanvasFilters" aria-controls="offcanvasFilters">
                        <i class="ri-equalizer-line me-2"></i> Filters
                    </button>
                    <!--- / Filter Trigger --->
                    <div class="dropdown ms-md-2 lh-1 p-3 bg-light w-100 mb-2 mb-md-0 w-md-auto">
                        <p class="fs-xs fw-bold text-uppercase text-muted-hover p-0 m-0" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Sort By <i class="ri-arrow-drop-down-line ri-lg align-bottom"></i>
                        </p>
                        <ul class="dropdown-menu px-2 py-3" id="sortingFilterUl">
                            <li class="dropdown-list-item">
                                <a class="dropdown-item fs-xs fw-bold text-uppercase p-1 text-muted-hover mb-2 sortingFilter <cfif sorting EQ 'P.productPrice DESC'>active</cfif>" data-order="P.productPrice DESC">
                                    Price: Hi Low
                                </a>
                            </li>
                            <li class="dropdown-list-item">
                                <a class="dropdown-item fs-xs fw-bold text-uppercase p-1 text-muted-hover mb-2 sortingFilter <cfif sorting EQ 'P.productPrice ASC'>active</cfif>" data-order="P.productPrice ASC">
                                    Price: Low Hi
                                </a>
                            </li>
                            <li class="dropdown-list-item">
                                <a class="dropdown-item fs-xs fw-bold text-uppercase p-1 text-muted-hover mb-2 sortingFilter <cfif sorting EQ 'P.productName ASC'>active</cfif>" data-order="P.productName ASC">
                                    Name
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="productContainer" class="mt-3">
                    <!--- Products --->
                    <div class="row g-4 mb-5">
                        <cfif getProductPaging.recordCount GT 0>
                            <cfloop query="getProductPaging">
                                <cfquery name="getProductImage">
                                    SELECT image, isDefault
                                    FROM product_image
                                    WHERE FkProductId = <cfqueryparam value="#getProductPaging.PkProductId#" cfsqltype = "cf_sql_integer">
                                </cfquery>
                                <div class="col-12 col-sm-6 col-md-4 col-lg-4">
                                    <!--- Card Product --->
                                    <div class="card position-relative h-100 card-listing hover-trigger">
                                        <div class="card-header d-flex align-self-center">
                                            <cfloop query="getProductImage">
                                                <cfif getProductImage.isDefault EQ 1>
                                                    <picture class="position-relative overflow-hidden d-block bg-light">
                                                        <img class="vh-25 img-fluid position-relative z-index-10 productImg" title="" src="#imagePath##getProductImage.image#" alt="">
                                                    </picture>
                                                </cfif>
                                                <picture class="position-absolute z-index-20 start-0 top-0 hover-show bg-light">
                                                    <img class="vh-25 img-fluid" title="" src="#imagePath##getProductImage.image#" alt="">
                                                </picture>
                                                <div class="card-actions d-flex justify-content-center align-items-center">
                                                    <input type="hidden" name="quantity" value="1" id="productQuantity">
                                                    <span class="btn btn-sm btn-orange text-center small text-uppercase tracking-wide fw-bolder d-block quickAddBtn" data-id="#getProductPaging.PkProductId#">View Product</span>
                                                    <!--- <div class="d-flex justify-content-center align-items-center flex-wrap mt-3">
                                                        <button class="btn btn-outline-dark btn-sm mx-2">S</button>
                                                        <button class="btn btn-outline-dark btn-sm mx-2">M</button>
                                                        <button class="btn btn-outline-dark btn-sm mx-2">L</button>
                                                    </div> --->
                                                    <!---  <button class="m-add-to-cart m-spinner-button m:w-full m-button m-button--white" name="add" aria-label="Add to cart">
                                                        <span class="m-spinner-icon">
                                                        <svg class="animate-spin m-svg-icon--medium" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none">
                                                            <circle cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                                            <path fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                                                        </svg>
                                                        </span>
                                                        <span class="m-add-to-cart--text" data-atc-text="">
                                                        
                                                            Quick Add
                                                        
                                                        </span>
                                                    </button> --->
                                                </div>
                                            </cfloop> 
                                        </div>
                                        <div class="card-body px-0 text-center">
                                            <div class="d-flex justify-content-center align-items-center mx-auto mb-1">
                                                <!--- Review Stars Small --->
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
                                            <a class="mb-0 mx-2 mx-md-4 fs-p link-cover text-decoration-none d-block text-center" href="index.cfm?pg=product&id=#getProductPaging.PkProductId#">
                                                #getProductPaging.productName#
                                            </a>
                                            <p class="fw-bolder m-0 mt-2"><i class="fa fa-rupee"></i> #getProductPaging.productPrice#</p>
                                        </div>
                                    </div>
                                    <!--- / Card Product --->
                                </div>
                            </cfloop>
                        <cfelse>
                            <div class="card position-relative h-100 card-listing hover-trigger">
                                <div class="card-header">
                                    <div class="card-body px-0 text-center">
                                        No Record Found
                                    </div>
                                </div>
                            </div>
                        </cfif>
                    </div>
                    <!--- / Products --->
                    <!--- Pagination --->
                    <nav class="border-top mt-5 pt-5 d-flex justify-content-between align-items-center" aria-label="Category Pagination">
                        <ul class="pagination">
                            <li class="page-item <cfif pageNum EQ 1>disabled</cfif>">
                                <a class="page-link prev"  href="index.cfm?pg=category&id=#url.id#&pageNum=#pageNum-1#<cfif structKeyExists(url, 'tags')>&tags=#url.tags#</cfif><cfif structKeyExists(url, 'sorting')>&sorting=#url.sorting#</cfif><cfif structKeyExists(url, 'minPrice')>&minPrice=#url.minPrice#</cfif><cfif structKeyExists(url, 'maxPrice')>&maxPrice=#url.maxPrice#</cfif>" data-id="#pageNum#">
                                    <i class="ri-arrow-left-line align-bottom"></i>
                                    Prev
                                </a>
                            </li>
                        </ul>
                        <ul class="pagination">
                            <cfloop from="1" to="#totalPages#" index="i">
                                <li class="page-item <cfif pageNum EQ i>active</cfif> mx-1">
                                    <a class="page-link" href="index.cfm?pg=category&id=#url.id#&pageNum=#i#<cfif structKeyExists(url, 'tags')>&tags=#url.tags#</cfif><cfif structKeyExists(url, 'sorting')>&sorting=#url.sorting#</cfif><cfif structKeyExists(url, 'minPrice')>&minPrice=#url.minPrice#</cfif><cfif structKeyExists(url, 'maxPrice')>&maxPrice=#url.maxPrice#</cfif>">
                                        #i#
                                    </a>
                                </li>
                            </cfloop>
                        </ul>
                        <ul class="pagination">
                            <li class="page-item <cfif pageNum EQ totalPages>disabled</cfif>">
                                <a class="page-link next" href="index.cfm?pg=category&id=#url.id#&pageNum=#pageNum+1#<cfif structKeyExists(url, 'tags')>&tags=#url.tags#</cfif><cfif structKeyExists(url, 'sorting')>&sorting=#url.sorting#</cfif><cfif structKeyExists(url, 'minPrice')>&minPrice=#url.minPrice#</cfif><cfif structKeyExists(url, 'maxPrice')>&maxPrice=#url.maxPrice#</cfif>">Next 
                                    <i class="ri-arrow-right-line align-bottom"></i>
                                </a>
                            </li>
                        </ul>
                    </nav>                    
                    <!--- / Pagination --->
                    <!--- Related Categories --->
                    <!--- <div class="border-top mt-5 pt-5">
                        <p class="lead fw-bolder">Related Categories</p>
                        <div class="d-flex flex-wrap justify-content-start align-items-center">
                            <a class="btn btn-sm btn-outline-dark rounded-pill me-2 mb-2 mb-md-0 text-white-hover"
                                href="##">Hiking
                                Shoes</a>
                            <a class="btn btn-sm btn-outline-dark rounded-pill me-2 mb-2 mb-md-0 text-white-hover"
                                href="##">Waterproof Trousers</a>
                            <a class="btn btn-sm btn-outline-dark rounded-pill me-2 mb-2 mb-md-0 text-white-hover"
                                href="##">Hiking
                                Shirts</a>
                            <a class="btn btn-sm btn-outline-dark rounded-pill me-2 mb-2 mb-md-0 text-white-hover"
                                href="##">Jackets</a>
                            <a class="btn btn-sm btn-outline-dark rounded-pill me-2 mb-2 mb-md-0 text-white-hover"
                                href="##">Gilets</a>
                            <a class="btn btn-sm btn-outline-dark rounded-pill me-2 mb-2 mb-md-0 text-white-hover"
                                href="##">Hiking
                                Socks</a>
                            <a class="btn btn-sm btn-outline-dark rounded-pill me-2 mb-2 mb-md-0 text-white-hover"
                                href="##">Rugsacks</a>
                        </div>
                    </div> --->
                    <!--- Related Categories --->
                </div>
            </div>
            <!--- / Category Products --->
        </div>
    </div>
    <script>
        var #toScript('#pageNum#','pageNum')#;
        var #toScript('#pg#','pg')#;
        var #toScript('#id#','id')#;
        var #toScript('#minPrice#','minPrice')#;
        var #toScript('#maxPrice#','maxPrice')#;
        var #toScript('#sorting#','sortingVar')#;
        var #toScript('#productPrice#', 'productPrice')#
        var #toScript('#customerId#', 'customerId')#
        var value = "";
        var url = "";
        var sorting = sortingVar;
        var priceSliders = "";
        $(document).ready( function () { 
            $('.productTag').on('change', function(){
                let tagName = $(this).attr('data-tagName');
                var catId = $(this).attr('data-catId');
                value = $('.productTag:checked').map(function(){ return $(this).val(); }).get().join();
                if (!$(this).prop("checked") && $('##tagNameLi-' + $(this).val()).length === 1) {
                    $('##tagNameLi-' + $(this).val()).remove();
                }
        
                if ($('##deleteAllProductTag').length === 0) {
                    $('##productTypeUl').after('<span class="fw-bolder text-muted-hover text-decoration-underline ms-2 cursor-pointer small ps-1" id="deleteAllProductTag">Clear All</span>');
                }
        
                if (value.length === 0) {
                    if (maxPrice != '' && minPrice != '') {
                        maxPrice = parseFloat($('##filterPriceMax').val());
                        minPrice = parseFloat($('##filterPriceMin').val());
                    }
                    if ($(this).prop("checked") && $('##tagNameLi-' + $(this).val()).length === 0){
                        $('##tagNameLi-' + value).remove();
                    }
                    if (value === "" && minPrice === "" && maxPrice === ""){
                        // minPrice = "";
                        // maxPrice = "";
                        $('##productTagContainer').addClass('d-none');
                        priceSliders[0].noUiSlider.set([60, 950]);
                    }
                    /* $('##productTagContainer').addClass('d-none'); */
                    setTimeout(function(){
                        showLoader();
                    }, 500);
                    ajaxFilter(value, catId, sorting, minPrice, maxPrice);
                    setTimeout(function(){
                        hideLoader();
                    }, 500);
                } else {
                    $('##productTagContainer').removeClass('d-none');
                    if ($(this).prop("checked") && $('##tagNameLi-' + $(this).val()).length === 0) {
                        $("##productTypeUl").append("<li id='tagNameLi-"+ $(this).val() +"' data-name='" + tagName + "' class='bg-light py-1 fw-bolder px-2 cursor-pointer d-inline-block ms-1'>Type: " + tagName + " <i class='ri-close-circle-line ps-1 align-bottom mt-1 deleteProductTag' data-id='" + $(this).val() + "'></i></li>");
                    }
                    ajaxFilter(value, catId, sorting, minPrice, maxPrice);
                }
            });
            if (minPrice !== undefined && minPrice !== '' && maxPrice !== undefined && maxPrice !== '') {
                priceSliders[0].noUiSlider.set([minPrice, maxPrice]);
            } else{
                $('##priceLi').remove();
            }

            /* $('.quickAddBtn').on('click', function (e) {
                e.preventDefault();
                var quantity = $('##productQuantity').val();
                var productId = $(this).data('id');
                $.ajax({  
                    url: '../ajaxAddToCart.cfm?ProductId='+ productId, 
                    data: {'productQty':quantity, 'productPrice':productPrice, 'customerId' : customerId},
                    type: 'POST',
                    success: function(result) {
                        if (result.success) {
                            successToast("Great!! You were " + quantity + " product added in to cart");
                            $.ajax({  
                                url: '../ajaxAddToCart.cfm?getCartCountValue=cartCounter', 
                                type: 'GET',
                                success: function(result) {
                                    if (result.success) {
                                        $('##offcanvasCartBtn span.cartCounter').removeClass('d-none');
                                        $('##offcanvasCartBtn > span.cartCounter').text(result.cartCountValue);
                                    } else {
                                        $('##offcanvasCartBtn span.cartCounter').addClass('d-none');
                                        $('##offcanvasCartBtn span.cartCounter').text('');
                                    }
                                },
                            });  
                        }
                    },
                });  
            }); */
        });
        $(document).on("click", '##applyPriceFilter', function () {
            maxPrice = parseFloat($('##filterPriceMax').val());
            minPrice = parseFloat($('##filterPriceMin').val());
            $('##productTagContainer').removeClass('d-none');
            if ($('##deleteAllProductTag').length === 0) {
                $('##productTypeUl').after('<span class="fw-bolder text-muted-hover text-decoration-underline ms-2 cursor-pointer small ps-1" id="deleteAllProductTag">Clear All</span>');
            } else {
                $('##priceLi').remove();
            }
            $('##priceLi').remove();
            $("##productTypeUl").append("<li id='priceLi' class='bg-light py-1 fw-bolder px-2 cursor-pointer d-inline-block ms-1'>Price: <i class='fa fa-rupee'></i> " + minPrice + " - <i class='fa fa-rupee'></i> " + maxPrice + " <i class='ri-close-circle-line ps-1 align-bottom mt-1 deleteProductTag' data-id='0'></i></li>");
            ajaxFilter(value, id, sorting, minPrice, maxPrice);
            
        });
        $(document).on("click", '##deleteAllProductTag', function () {
            $('.productTag').prop("checked", false);
            $('##productTypeUl').html('');
            $('##productTagContainer').addClass('d-none');
            value = "";
            minPrice = "";
            maxPrice = "";
            ajaxFilter(value, id, sorting, minPrice, maxPrice);
            priceSliders[0].noUiSlider.set([60, 950]);
        });
        $(document).on('click', '.deleteProductTag', function () {
            var tagIds = $(this).attr('data-id');
            if (tagIds > 0) {
                $('##tagNameLi-' + tagIds).remove();
            } else {
                $('##priceLi').remove();
                maxPrice = '';
                minPrice = '';
                priceSliders[0].noUiSlider.set([60, 950]);
            } 
            $('##filter-type-'+tagIds).prop("checked", false);
            value = $('.productTag:checked').map(function(){ return $(this).val(); }).get().join();
            if (value === "" && minPrice === "" && maxPrice === ""){
                $('##productTagContainer').addClass('d-none');
                priceSliders[0].noUiSlider.set([60, 950]);
            } 
            ajaxFilter(value, id, sorting, minPrice, maxPrice);
        });
        
        $(document).on("click", '.sortingFilter', function () {
            sorting = $(this).attr('data-order');
            $('##sortingFilterUl').find('.active').removeClass('active');
            $(this).addClass('active');
            ajaxFilter(value, id, sorting, minPrice, maxPrice);
        });
        function ajaxFilter(value, id, sorting, minPrice = '', maxPrice = '') {
            var data = {"catId":id, "value":value, "sorting":sorting};
            if(minPrice !== "" && jQuery.type(minPrice) === 'number' ){
                data[ "minPrice"] = minPrice;
            }
            if(maxPrice !== '' && jQuery.type(maxPrice) === 'number' ){
                data[ "maxPrice"] = maxPrice;
            }
            $.ajax({  
                url: '../ajaxFilterProduct.cfm?productTagValue='+ value, 
                data: data,
                type: 'GET',
                async: false,
                beforeSend: function(){
                    showLoader();
                },
                success: function(result) {
                    if (result.success) {
                        $('##productContainer').html(result.html);
                        url = "index.cfm?pg=" + pg + "&id=" + id + "&pageNum=" + pageNum +'&tags=' + value +'&sorting=' + sorting + '&minPrice=' + minPrice + '&maxPrice=' + maxPrice;
                        if (value === "" && sorting === "" && minPrice === "" && maxPrice === "") {
                            url = "index.cfm?pg=" + pg + "&id=" + id + "&pageNum=" + pageNum;
                        } 
                        
                        window.history.pushState(null, null, url);
                    }
                },
                complete: function(){
                    setTimeout(function(){
                        hideLoader();
                    }, 500);
                } 
            });  
        }
        function showLoader() {
            $("##overlay").removeClass("d-none");
        }
        function hideLoader() {
            $("##overlay").addClass("d-none");
        }
        
    </script>
</cfoutput>
