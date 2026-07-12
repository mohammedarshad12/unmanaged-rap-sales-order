@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Child Interface View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCIT_ARS_sales_O as select from zmk_ars_item_t
association to parent ZCIT_ARS_SALES_I as _salesHeader
on $projection.Salesdocument = _salesHeader.Salesdocument
{
    key salesdocument as Salesdocument,
    key salesitemnumber as Salesitemnumber,
    material as Material,
    plant as Plant,
    @Semantics.quantity.unitOfMeasure: 'Quantityunits'
    quantity as Quantity,
    quantityunits as Quantityunits,
    @Semantics.user.createdBy: true
    local_created_by as LocalCreatedBy,
    @Semantics.systemDateTime.createdAt: true
    local_created_at as LocalCreatedAt,
    @Semantics.user.lastChangedBy: true
    local_last_changed_by as LocalLastChangedBy,
@Semantics.systemDateTime.localInstanceLastChangedAt: true
local_last_changed_at as LocalLastChangedAt,

@Semantics.systemDateTime.lastChangedAt: true
last_changed_at as LastChangedAt,
    _salesHeader
}
