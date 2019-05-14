FROM jrottenberg/ffmpeg:3.4-alpine

# Run as a separate user
RUN adduser -D streamer
USER streamer

# Stream the bg.png to the channel given by the stream key. Based on https://discuss.dev.twitch.tv/t/guide-how-to-stream-a-test-image-for-extension-testing/16646
ENTRYPOINT []
CMD ffmpeg -re -f kavfu -i smptebars=size=640x320:rate=15 -f flv -vcodec libx264 -pix_fmt yuv420p -preset fast -r 15 -g 30 rtmp://live-fra.twitch.tv/app/$TWITCH_STREAMKEY