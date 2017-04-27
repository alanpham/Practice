//
//  main.swift
//  BTConnect
//
//  Main Entry point for program.
//
//  Created by Alan Pham on 3/4/17.
//
//


if (CommandLine.argc <= 1){
  print("Usage:\nBTConnect 00-00-00-00-00-00\n\nGet the MAC address from the list below (if your device is missing, pair it with your computer first):")
}
else if (CommandLine.argc == 2){
  
  let MACAddress = CommandLine.arguments[1]
  
  var bluetoothDevice = BTConnect(deviceAddress: MACAddress)
  
  bluetoothDevice.connect()
}
