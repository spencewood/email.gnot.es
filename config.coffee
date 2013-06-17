###
 Global Configuration
###

module.exports =
    pubnub:
        subscribe_key: process.env.PUBNUB_SUBSCRIBE_KEY
        publish_key: process.env.PUBNUB_PUBLISH_KEY

    postmark:
        api_key: process.env.POSTMARK_API_KEY
        from_email: process.env.POSTMARK_FROM_ADDRESS