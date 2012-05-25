Contents
========

The `CropImage` activity extracted from `Gallery.apk`. Compatible with Android
2.1 onwards.

Refer to `CropImage.java` source code to learn about its Intent-based API.




Android 4 Notes
===============

If your application targets Android 4 (API Level 14 and later) then it will use
hardware acceleration by default. There's a bug in the CropImage activity which
may trigger a Force Close error when hardware acceleration is enabled.

To work-around this bug you have to disable hardware acceleration for the
`CropImage` activity by adding an entry like this in your `AndroidManifest.xml`:

    <activity
        android:name="com.android.camera.CropImage"
        android:hardwareAccelerated="false"
        android:screenOrientation="portrait"/>




Project Information
===================

 * Home Page: https://github.com/lvillani/android-cropimage
