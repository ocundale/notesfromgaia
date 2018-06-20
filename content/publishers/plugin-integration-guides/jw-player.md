+++
title = "JW Player integration"
date = "2018-06-04T15:18:05+01:00"
weight = 2
+++

### Instructions for adding the Coull Plugin to your JW Player
{{% notice note %}}
Before you start this process, you should have a unique PID, which is provided by your Coull account manager. If you do not yet have this, please get in touch.
{{% /notice %}}

To add the Coull Plugin to your player, the video embed code must be modified to include the plugin.

To do this, add the `plugins` property, as seen in the example below with the URL.

Make sure you replace the *xxxxx* in the URL with your unique PID.


```html
    <script type="text/javascript">

        jwplayer("player").setup({
            file:       "//content.jwplatform.com/videos/zVvuyCoi-w5jxw99r.mp4",
            image:      "//content.jwplatform.com/thumbs/zVvuyCoi-720.jpg",
            width:      "800",
            height:     "600",
            autostart:  false,
            advertising: {
                client: "vast"
            },
            //set up coullads plugin
            plugins: {
                "//coull.io/plugin/xxxxx/1/jwplayer.js": {}
            }
        });

    </script>
```

If you have any issues with setting up the Coull Plugin, please don’t hesitate to email [account.support@coull.com](account.support@coull.com)
