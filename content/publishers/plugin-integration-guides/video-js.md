+++
title = "VideoJS Integration"
date = "2018-06-04T15:18:05+01:00"
weight = 4
+++

### Instructions for adding the Coull Plugin to your VideoJS player.

{{% notice note %}}
Before you start this process, you should have a unique PID, which is provided by your Coull account manager. If you do not yet have this, please get in touch.
{{% /notice %}}

Include the plugin via a script tag to be inserted in the header, just after the video.js script:

```html
<script src="//coull.io/plugin/xxxxx/1/vjs.js"></script>
```

Make sure you replace the *xxxxx* in the URL with your unique PID.

With the script included, you can then simply update your embed code to call the plugin via the `plugins` property as shown below:

```html
<script type="text/javascript">
    player = videojs("my-video", {
        autoplay: false,
        width: 800,
        height: 600,
        plugins: {
            vjs: {}
        }
    });
</script>
```

If you have any issues with the Coull Plugin integration, please find out [How to get support](/demand/how-to-get-support/).