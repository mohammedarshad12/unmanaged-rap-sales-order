@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item Consumption View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZCIT_ARS_SALES_O_C as projection on ZCIT_ARS_sales_O 
{
    key Salesdocument,
    key Salesitemnumber,
    @Search.defaultSearchElement: true
    Material,
    Plant,
    @Semantics.quantity.unitOfMeasure: 'Quantityunits'
    Quantity,
    Quantityunits,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _salesHeader : redirected to parent ZCIT_ARS_SALES_C
}
