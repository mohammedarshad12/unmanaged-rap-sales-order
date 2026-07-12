@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: ' Header Consumption View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZCIT_ARS_SALES_C provider contract transactional_query 
   as projection on ZCIT_ARS_SALES_I 
{
    key Salesdocument,
    Salesdocumenttype,
    Orderreason,
    Salesorganization,
    Distributionchannel,
    Division,
    @Search.defaultSearchElement: true
    Salesoffice,
    Salesgroup,
    @Semantics.amount.currencyCode: 'Currency'
    Netprice,
    Currency,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
   _salesitem : redirected to composition child ZCIT_ARS_SALES_O_C
}
