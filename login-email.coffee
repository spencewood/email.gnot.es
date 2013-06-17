config = require './config'
trebuchet = require('trebuchet') config.postmark.api_key

module.exports =
    send: (message) ->
        trebuchet.fling
            params:
                from: config.postmark.from_email,
                to: message.email,
                subject: 'Gnot.es login'
            html: __dirname + '/templates/login.html'
            text: __dirname + '/templates/login.txt'
            data:
                token: message.token
        , (err, res) ->
            console.error err, res if err?