//
//  connect.swift
//  BTConnect
//
//  Class that will connect a given bluetooth device. In my case it will be my airpods.
//
//  Created by Alan Pham on 3/4/17.
// 20-AB-37-E7-57-B2
//

import IOBluetooth


class BTConnect{
  private var deviceAddress: String?
  
  init(deviceAddress: String){
    self.deviceAddress = deviceAddress
  }
  
  func connect(){
    let device = IOBluetoothDevice(addressString: deviceAddress)
    
    if (device == nil) {
      print("Device not found")
      exit(-2)
    }
    
    if !(device!.isPaired()) {
      print("Device is not paired")
      exit(-3)
    }
    
    if device!.isConnected() {
      device!.closeConnection()
    }
    else {
      device!.openConnection()
    }
  }
}
