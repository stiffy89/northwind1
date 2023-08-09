const cds = require('@sap/cds');
const debug = require('debug')('srv:catalog-service');

module.exports = cds.service.impl(async function() {
	
	const { Products } = this.entities;
	const northwindservice = await cds.connect.to('Northwind');

	this.on('READ', Products, async (req) => {
		//build the query for products

		const {Products} = northwindservice.entities;
		let results = await northwindservice.run(req.query);
		return results;
	});
});