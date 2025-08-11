@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Item do Pedido'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_JACDS_ORDER_IT
  as select from zjacdst_order_it
{
  key sales_order       as SalesOrder,
  key sales_order_item  as SalesOrderItem,
      product           as Product,
      product_quantity  as ProductQuantity,
      product_unity     as ProductUnity,
      total_value       as TotalValue,
      currency          as Currency,
      creation_date     as CreationDate,
      creation_user     as CreationUser,
      last_changed_by   as LastChangedBy,
      last_changed_from as LastChangedFrom
}
