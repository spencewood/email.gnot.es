loginEmail = require './login-email'

pubnub = require('pubnub').init
    publish_key: process.env.PUBNUB_PUBLISH_KEY
    subscribe_key: process.env.PUBNUB_SUBSCRIBE_KEY

pubnub.subscribe
    channel: 'login_email'
    callback: loginEmail.send