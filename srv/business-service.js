const cds = require('@sap/cds');
module.exports = cds.service.impl(async function() {
    const bp = await cds.connect.to('API_BUSINESS_PARTNER');    
    this.on('READ', 'A_BusinessPartner', async req => {        
        return bp.run(req.query);   
        // const query = req.query        
        // return bp.emit ({ query, headers: { APIKey: process.env.APIkey } })    
    });
});