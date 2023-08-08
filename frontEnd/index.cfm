<cfoutput>
    <cfparam name="pg" default="">
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Shop Homepage - Start Bootstrap Template</title>
            <!-- Favicon-->
            <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
            <!-- Bootstrap icons-->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
            <!-- Core theme CSS (includes Bootstrap)-->
            <link href="./assets/css/styles.css" rel="stylesheet" />
        </head>
        <body>
            <!-- Navigation-->
            <cfinclude template="./common/nav_bar.cfm">
            <!-- Header-->
            <cfinclude template="./common/header.cfm">
            <!-- Section-->
            <section class="py-5">
                <div class="container px-4 px-lg-5 mt-5">
                    <cfswitch expression="#pg#">
                        <cfcase value="dashboard">
                            <cfinclude template="./page/dashboard.cfm">
                        </cfcase> 
                    </cfswitch>
                </div>
            </section>
            <!-- Footer-->
            <cfinclude template="./common/footer.cfm">
            <!-- Bootstrap core JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="./assets/js/scripts.js"></script>
        </body>
    </html>
</cfoutput>
