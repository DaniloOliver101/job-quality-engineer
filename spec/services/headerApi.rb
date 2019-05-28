module Header
    include HTTParty
        #url base
        base_uri 'https://api.intelipost.com.br/api/v1/'

        format :json
        headers api_key:  '4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379',
        platform: 'intelipost-docs', 
        'platform-version': 'v1.0.0',
        plugin: 'intelipost-plugin',
        'plugin-version': 'v2.0.0'

end
