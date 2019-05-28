# describe 'Request' do
#     # it 'Request GET info to test Api' do
#     #     result = HeadApi.get('/info')
#     #     puts result
#     # end
#     # it 'Request POST to Test Api' do
#     #     @body = 
#     #     {

#     #     }.to_json
#     # end
#     it 'find sku products' do
#         result = HeadApi.get('/sku_groups/skus/SKU123')
#         puts result
#     end
#     it 'inserindo um novo SKU' do 
#         inserir = HeadApi.Put('');
#     end
# end
# {
#   "origin_zip_code": "04012-090",
#   "destination_zip_code": "04037-003",
#   "volumes": [
#     {
#       "weight": 0.5,
#       "volume_type": "BOX",
#       "cost_of_goods": 100,
#       "width": 10,
#       "height": 10,
#       "length": 25
#     }
#   ],
#   "additional_information": {
#     "free_shipping": false,
#     "extra_cost_absolute": 0,
#     "extra_cost_percentage": 0,
#     "lead_time_business_days": 0,
#     "sales_channel": "hotsite",
#     "tax_id": "22337462000127",
#     "client_type": "gold",
#     "payment_type": "CIF",
#     "is_state_tax_payer": false,
#     "delivery_method_ids": [
#       1,
#       2,
#       3
#     ]
#   },
#   "identification": {
#     "session": "04e5bdf7ed15e571c0265c18333b6fdf1434658753",
#     "page_name": "carrinho",
#     "url": "http://www.intelipost.com.br/checkout/cart/"
#   }
# }