adb push build_dxvk/packaging/dxvk-2.6.1.tzst /data/local/tmp
adb shell run-as com.winlator cp /data/local/tmp/dxvk-2.6.1.tzst files/installed_components/dxvk/dxvk-2.6.1.tzst
adb shell run-as com.winlator cp /data/local/tmp/dxvk-2.6.1.tzst files/installed_components/dxvk/dxvk-2.6.2.tzst