buildroot-external-reach
===========================

Buildroot external layer for Reach Technology display modules.

Configurations details
----------------------

Here are some details about the configurations available:
* `reach_imx6dl_10p_qt_defconfig`:
* `reach_imx6dl_7r_qt_defconfig`:
  * Qt 5.9.6
  * GStreamer1.0 with all its plugins
  * NXP proprietary packages (VPU, GPU, SDMA)
  * NXP-based kernel (4.9.x_1.0.0_ga)
* `reach_imx6dl_7r_base_defconfig`:
  * Simple console only image used for testing

Build procedure
---------------

1. Download the latest Buildroot tree:
```
$ git clone https://git.busybox.net/buildroot -b 2018.02.x
```

2. Download the Reach Technology external layer:
```
$ git clone https://github.com/jmore-reachtech/buildroot-external-reach -b 2018.02.x
```

3. Create an output folder for your build:
```
$ make BR2_EXTERNAL=$PWD/buildroot-external-reach/ -C buildroot/ \
  O=$PWD/output reach_imx6dl_10p_qt_defconfig
$ cd output
```

4. Build the image:
```
$ make
```

5. Your rootfs image is ready!
```
$ ls -l images/sdcard.img
```

6. Create the SDK for this image (optional):
```
$ make sdk
```
