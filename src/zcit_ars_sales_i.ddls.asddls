@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Interface View(Header)'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCIT_ARS_SALES_I as select from zmk_ars_header_t as salesHeader
composition [0..*] of ZCIT_ARS_sales_O as _salesitem
{
    key salesdocument as Salesdocument,
    salesdocumenttype as Salesdocumenttype,
    orderreason as Orderreason,
    salesorganization as SalesOrganization,
    distributionchannel as Distributionchannel,
    division as Division,
    salesoffice as Salesoffice,
    salesgroup as Salesgroup,
    @Semantics.amount.currencyCode:'Currency'
    netprice as Netprice,
    currency as Currency,
    @Semantics.user.createdBy: true
    local_created_by as LocalCreatedBy,
    @Semantics.systemDateTime.createdAt: true
    local_created_at as LocalCreatedAt,
    @Semantics.user.lastChangedBy: true
    local_last_changed_by as LocalLastChangedBy,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
     // Make association public
     _salesitem
}
