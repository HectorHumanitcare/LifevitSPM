//
//  File.swift
//  
//
//  Created by Marc on 8/8/24.
//

import Foundation

extension String {
    var toResponseCommand: AOJCommands.Response {
        if self.count == 16 {
            let modeStart = self.index(self.startIndex, offsetBy: 4)
            let modeEnd = self.index(self.startIndex, offsetBy: 6)
            
            let cmd = String(self[modeStart..<modeEnd])
            print(cmd)
            
            return AOJCommands.Response(rawValue: cmd) ?? .LastMeasurement
        } else {
            return .LastMeasurement
        }
    }
}