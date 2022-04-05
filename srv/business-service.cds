using { API_BUSINESS_PARTNER as abp } from './external/API_BUSINESS_PARTNER.csn';

service BusinessService {  
    @cds.autoexpose
    entity A_BusinessPartner as projection on abp.A_BusinessPartner {        
        key BusinessPartner, Customer, BusinessPartnerFullName, BusinessPartnerGrouping, BusinessPartnerUUID, OrganizationBPName1 
    }
}
