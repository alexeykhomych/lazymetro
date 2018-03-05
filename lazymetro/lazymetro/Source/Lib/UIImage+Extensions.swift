//
//  UIImage+Extensions.swift
//  lazymetro
//
//  Created by Alexey Khomych on 2/22/18.
//  Copyright © 2018 Alexey Khomych. All rights reserved.
//

import UIKit

extension UIImage {
    func imageResize(_ sizeChange: CGSize) -> UIImage {
        let hasAlpha = false
        let scale: CGFloat = 0.0
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        self.draw(in: CGRect(origin: .zero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        
        return scaledImage!
    }
}
