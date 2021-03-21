# OpenCore EFI for Dell Latitude E6440 updated for Catalina
## OpenCore 0.6.7

### For installing Catalina, use EFI.
### After installation, use Intel-N6235.

### Specs:
  - Intel Core i5-4310M
  - Intel HD4600 integrated GPU
  - 8GB DDR3 RAM
  - TL-WN725N Wifi Card
  - Intel Advanced-N 6235 Bluetooth
  - Realtek ALC292
  - 8 Series/C220 Series Chipset Family USB
  - O2 Micro SD/MMC Card Reader
  
  ### For Dual Boot:
  #### IF `Picker` doesn't auto detect Windows, do the following:
 1. Put the `Microsoft` folder into `OC` folder
 2. Download  [OpenCore Configurator](https://mackie100projects.altervista.org/download-opencore-configurator) (OCC) 
 3. Open your Config.plist with OCC
 4. Go to Misc and click Entries tab
 5. Click `+` button on the right bottom. A new entry will be created and you will see a browse button
 6. Click the browse button and for windows users, go to your EFI folder  and locate `bootmgfw.efi`  (\EFI\Microsoft\Boot\bootmgfw.efi) and click open
 7. Change the entry name from `bootmgfw` to `Windows`<br>
 Note: If you update Windows, Windows will write the files on `EFI\Microsoft`. You will need to move the new files to `EFI\OC\Microsoft`
  

 
 ### What works:
 
 - Dual Boot with Windows
 - built-in keyboard
 - built-in trackpad (multi gestures)
 - Native WiFi(via TN-WN725N & Bluetooth(N6235)
 - native USB3
 - native audio with AppleHDA
 - built-in mic
 - built-in camera
 - native power management
 - backlight controls with smooth transitions, save/restore across restart
 - accelerated graphics for HD4600
 - wired Ethernet
 - Sleep/Wake
 - iMessage & Facetime
 - Built in Card Reader

### Setup SMBIOS:

1. Download [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS)
2. Do the following:
```
cd GenSMBIOS
chmod +x GenSMBIOS.command
./GenSMBIOS.command
```
3. Install MacSerial
4. Mount EFI
5. Select config.plist
6. Open EFI folder, go to EFI/OC, drag config.plist file to GenSMBIOS terminal window
7. Generate SMBIOS
8. Type `MacBookPro11,3`
9. You will get your SMBIOS.

