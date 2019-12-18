//
//  BarcodeType.swift
//  barcode gen
//
//  Created by Richie Shilton on 18/12/19.
//  Copyright © 2019 Richie Shilton. All rights reserved.
//

import Foundation

enum BarcodeType: String {
    case code128 = "CICode128BarcodeGenerator"
    case pdf417 = "CIPDF417BarcodeGenerator"
    case aztec = "CIAztecCodeGenerator"
    case qr = "CIQRCodeGenerator"
}
