//
//  UIImage+Extended.swift
//  barcode gen
//
//  Created by Richie Shilton on 18/12/19.
//  Copyright © 2019 Richie Shilton. All rights reserved.
//

import UIKit
import CoreImage

extension UIImage {
    
    convenience init?(string: String, of type: BarcodeType, and size: CGSize) {

        guard !string.isEmpty,
            let data = string.data(using: .ascii),
            let filter = CIFilter(name: type.rawValue) else {
                return nil
        }

        filter.setValue(data, forKey: "inputMessage")

        guard let image = filter.outputImage else {
            return nil
        }

        let imageSize = image.extent.size

        let transform = CGAffineTransform(scaleX: size.width / imageSize.width, y: size.height / imageSize.height)
        let scaledImage = image.transformed(by: transform)

        self.init(ciImage: scaledImage)
    }
}

