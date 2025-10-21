# 📱 Xiaomi Garnet Device Tree

A comprehensive device tree for Xiaomi Garnet (Redmi Note 13 Pro 5G / Poco X6 5G), enabling the development and building of custom Android ROMs such as LineageOS and other AOSP-based distributions.

## 🪧 Attencion

This branch is for Alphadroid builds

## ⚙️ Installation Guide

To set up your build environment and integrate this device tree, follow these steps. This guide assumes you have a working AlphaDroid build environment already configured.

### Prerequisites

*   A Linux-based operating system (Ubuntu 20.04+ LTS recommended).
*   `repo` tool installed and configured.
*   Sufficient disk space (250GB+ recommended).
*   AlphaDroid Source.

### Step-by-Step Installation

1.  **Navigate to your AlphaDroid source directory:**

    ```bash
    cd ~/garnet/alphadroid
    ```

    _(Replace `~/garnet/alphadroid` with your actual source directory path)_

2.  **Clone the `android_device_xiaomi_garnet` repository:**

    ```bash
    git clone https://github.com/android_device_xiaomi_garnet.git device/xiaomi/garnet
    ```

    This will place the device tree in the correct location for your build system to recognize it.

## 🚀 Build Initialization

Once the device tree is cloned, you can use it to build a custom ROM for your Xiaomi Garnet.

1.  **Initialize the build environment:**

    ```bash
    . build/envsetup.sh
    ```

2.  **Start the build process:**

    ```bash
    brunch alpha_garnet-userdebug
    ```

    This command will compile the entire ROM for your Xiaomi Garnet. The resulting `.zip` file, which can be flashed via a custom recovery, will be located in the `out/target/product/garnet/` directory upon successful completion.

**Tree Credits:**
AdarshGrewal
