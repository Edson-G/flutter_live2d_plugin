# flutter_live2d_plugin
A plugin to load Live2D models in flutter projects.

## Installation
Due to what is requested in [Live2D Proprietary Software License Agreement](https://www.live2d.com/eula/live2d-proprietary-software-license-agreement_en.html), this plugin requires a manual download of Live2D Cubism Core as part of the setup. Also, unless you fit under the **exemption criteria (check Article 2.2)**, it is also required to get in touch with Live2D and enter into a separate _"Live2D Publication License Agreement"_. As such, this plugin will not be available on [pub.dev](https://pub.dev/), and you should manually install it in your project as a private package.

Provided that you are either in a Live2D Publication License Agreement or exempt from requiring one, please follow the steps outlined below to use this plugin:

- Download this repository.
- Download [Live2D Cubism SDK for Native](https://www.live2d.com/sdk/download/native/).
- Add the files required to run the project as well as the proper License agreements for your own installation. To do so:
  - Move any files from the root folder to `CubismSdkForNative`.
  - Move the `Core` folder from your SDK Download to override `CubismSdkForNative/Core`. You don't need to use the provided Framework folder, as it is already included as a submodule.
- Add this project as an [unpublished package](https://docs.flutter.dev/packages-and-plugins/using-packages#dependencies-on-unpublished-packages).
  - If you want to host the project as a **private** git repository, you can edit this project's .gitignore.

## Redistribution
As stated on the license file, you are free to use, modify and distribute any code **outside of `CubismSdkForNative`** in any way you desire. However, do keep in mind that any code inside the aforementioned folder is properly licensed by Live2D, and is as such not affected by this repository's own licensing rules.

## CubismSdkForNative, Licensing and Notices
This project uses the official Cusbism SDK for native applications. Please, make sure to thoroughly check for Licenses and Notices inside `/CubismSdkForNative`

Tihs project features a subtree with the code in [Cubism Native Framework](https://github.com/Live2D/CubismNativeFramework).

Live2D Cubism Core for Native is **partially** included in this repository, in accordance to the [Live2D Proprietary Software License Agreement](https://www.live2d.com/eula/live2d-proprietary-software-license-agreement_en.html), notably regarding Articles 2 and 5.

As instructed in the installation section, you can download the full Core SDK [here](https://www.live2d.com/sdk/download/native/), following the proper guidelines.

Please keep in mind that the partial Redistribution of Live2D Cubism Core is intended to keep the adequate License files, as well as serving as reference for the plugin setup.

## Contributing
Pull requests, feedback, questions and soliciting changes is more than welcome. Just use basic common sense and don't expect too much from a small side project.
