sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/supplier/onboarding/supplieronboardingui/test/integration/pages/SuppliersList.gen",
	"com/supplier/onboarding/supplieronboardingui/test/integration/pages/SuppliersObjectPage.gen"
], function (JourneyRunner, SuppliersListGenerated, SuppliersObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/supplier/onboarding/supplieronboardingui') + '/test/flp.html#app-preview',
        pages: {
			onTheSuppliersListGenerated: SuppliersListGenerated,
			onTheSuppliersObjectPageGenerated: SuppliersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

