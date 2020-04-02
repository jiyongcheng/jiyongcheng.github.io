---
layout: post
title:  "Android app with react native"
date:   2020-01-17 10:18:00 +1100
categories: react native
---

I want to follow [this article](https://developer.okta.com/blog/2018/12/26/react-native-android-play-store) to learn creating apps with react native. But I met several issues:
> error Failed to launch emulator. Reason: No emulators found as an output of `emulator -list-avds`.
warn Please launch an emulator manually or connect a device. Otherwise app may fail to launch.
info Installing the app...
 Task :app:installDebug FAILED

Then I realized the another issue prompted:
`/bin/sh: adb: command not found`

After googling, I got answer:

```bash
export ANDROID_HOME=/Users/aron/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
```

and I ran it again, it works. But I think you should also have created an AVD as well.