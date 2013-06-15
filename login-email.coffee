config = require './config'
trebuchet = require('trebuchet') config.postmark.api_key

module.exports =
    send: (address) ->
        trebuchet.fling
            params:
                from: config.postmark.from_address,
                to: address,
                subject: 'Gnot.es login'
            html: __dirname + '/templates/login.html'
            text: __dirname + '/templates/login.txt'
            data:
                foo: 'Bar'
        , (err, response) ->
            console.error err, response if err?