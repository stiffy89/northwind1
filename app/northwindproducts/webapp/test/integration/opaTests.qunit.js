sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/northwindproducts/test/integration/FirstJourney',
		'ns/northwindproducts/test/integration/pages/ProductsList',
		'ns/northwindproducts/test/integration/pages/ProductsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsList, ProductsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/northwindproducts') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsList: ProductsList,
					onTheProductsObjectPage: ProductsObjectPage
                }
            },
            opaJourney.run
        );
    }
);