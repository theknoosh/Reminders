//
//  NSColorTransformer.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/16/22.
//

import Foundation
import AppKit

class NSColorTransformer: ValueTransformer {
    
    override func transformedValue(_ value: Any?) -> Any? { // Convert color to data
        guard let color = value as? NSColor else {return nil}
        
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: true)
            return data
        } catch {
            return nil
        }
    }
    
    override func reverseTransformedValue(_ value: Any?) -> Any? { // Convert data to color
        guard let data = value as? Data else {return nil}
        
        do {
            let color = try NSKeyedUnarchiver.unarchivedObject(ofClass: NSColor.self, from: data)
            return color
        } catch {
            return nil
        }
    }
}
