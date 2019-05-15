# Park stream

Park a Twitch stream on a free heroku dyno. Useful for extension reviews. Streams a test image to a channel 24/7 (well, almost).

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/freaktechnik/park-stream)

> Note: by default this will deploy as worker on heroku's free tier. This means that it will restart every 24 hours, however it is not affected by the "hybernation" of free dynos. It will however consume [free dyno hours](https://devcenter.heroku.com/articles/free-dyno-hours).

## Changing the test image

The test image that is being streamed can easily be adjusted. By default this uses the `smptebars` ffmpeg filter. Some alternate filters you could use include:

- `color` (add the `color` param)
- `testsrc2`

See the [ffmpeg filter docs](https://ffmpeg.org/ffmpeg-filters.html#allrgb_002c-allyuv_002c-color_002c-haldclutsrc_002c-nullsrc_002c-pal75bars_002c-pal100bars_002c-rgbtestsrc_002c-smptebars_002c-smptehdbars_002c-testsrc_002c-testsrc2_002c-yuvtestsrc) for a more complete list and detailed documentation of the params.

To change the filter you'd only want to modify the `-i` param's value, most likely only the word before the `=` sign.
