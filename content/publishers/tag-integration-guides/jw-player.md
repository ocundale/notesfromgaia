+++
title = "JW Player"
date = "2018-06-04T15:18:05+01:00"
weight = 2
+++

## How to set up the Coull plugin on JW Player player

> NOTE:
> If required, more detailed information on configuring player plugins is available on the official Brightcove support pages: https://support.brightcove.com/configuring-player-plugins

1. Navigate to the *Players* section and select the player you want to add the plugin to.
2. Ensure that under *ADVERTISING* the *Enable IMA Ads* option is set to **Yes**. Any other settings in *ADVERTISING* can be left as you require.
3. Under *PLUGINS*, click *Edit* and then click the *JavaScript* row to expand that form.
4. Enter the plugin URL you have been given in the first empty field and click the *+* button.
5. Click the *Name, Options (JSON)* row to expand that form.
6. Enter **coullpluginloader** in the first empty field as the *Plugin Name* and click the *+* button.
7. Save these changes by clicking *Save* in the *PLUGINS* box.
8. Publish the player. Changes should come into effect within a few minutes on any videos published using this player.

## How to set up OverStream Banner on Brightcove player using a VPAID tag

> NOTE:
> Brightcove's official documentation contains a range of useful information on configuring advertising: https://support.brightcove.com/configuring-player-advertising

Using Brightcove's Video Cloud platform, there are two main steps to setting up
OverStream Banner ads:
1. [Add a Cue Point to trigger the OverStream Banner ad](#adding-a-cue-point-to-trigger-the-overstream-banner-ad)
2. [Add your QUASAR tag to the player](#adding-your-quasar-tag-to-the-player)

## Adding a Cue Point to trigger the OverStream Banner ad
1. Navigate to the *Media* section and open the video you want to add the OverStream Banner ad to.
2. Click on *Add Cue Point*.
3. Set *Type* to **ad**.
4. Enter the time in the *Timecode* field for when you want to display the OverStream Banner ad.
5. Name it as **OverStream Banner** or similar.
6. Other settings can be left as the defaults, so click *Save*.

Further information on controlling advertising with Cue Points is available in the Brightcove documentation: https://support.brightcove.com/displaying-ads-using-ad-cue-points

## Adding your QUASAR tag to the player
1. Navigate to the *Players* section and select the player you want to add the OverStream Banner ad to.
2. Scroll down to *ADVERTISING* and select **Enable IMA Ads**.
3. Enter your OverStream Banner tag in the *Server URL* field.
4. Set *Request Ads* to **On cue point**.
5. Save the *ADVERTISING* settings you have just changed.
6. In the *PLUGINS* box on the same page, click the *Edit* button and then the *Show hidden* link under the list of plugins.
7. Click the *Name, Options (JSON)* row to expand the box.
8. In the bottom field you will see a block of JSON which looks something like this:
~~~
{
  "serverUrl": "https://quasar.coull.com/quasar?pid=12345&ad_type=ov&player_width=700&player_height=400&page_url=http%3A%2F%2Fexample.org%2Fvideo",
  "timeout": 4000,
  "hardTimeouts": true,
  "requestMode": "oncue",
  "adTechOrder": [
    "html5"
  ],
  "vpaidMode": "ENABLED",
  "useMediaCuePoints": false
}
~~~
9. Ensure the *useMediaCuePoints* value is **true**: ```"useMediaCuePoints": true```
10. Save the *PLUGIN* settings you have just changed and publish the changes when prompted, or click the *Publish* button at the top of the page.

Further information on these settings is available in the Brightcove documentation: https://support.brightcove.com/configuring-player-advertising#configure

If you have any issues with setting up OverStream Banner, please don’t hesitate to email account.support@coull.com
