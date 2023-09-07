// Copyright (C) 2019-2022, General Magic B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of General Magic
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with General Magic.

import Foundation
import Flutter
import GEMKit

public class GemViewFactory: NSObject, FlutterPlatformViewFactory {
    
    var registrar: FlutterPluginRegistrar?
    
    public init(withRegistrar registrar: FlutterPluginRegistrar) {
        
        super.init()
        
        self.registrar = registrar
        
        self.prepareSDK()
    }
    
    // MARK: - GEMSdk
    
    func prepareSDK() {
        
        let token = "eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiI4MTBiNmEyYi0wMGE2LTQ0YWQtODBkNy05YWNkZjkxYTkxODAiLCJleHAiOjE2OTg3ODk2MDAsImlzcyI6IkdlbmVyYWwgTWFnaWMiLCJqdGkiOiI0MGY5MjRlYS1hODRjLTQwYmMtYjExMi02YTdmMzgyM2ZhMjAiLCJuYmYiOjE2NzU2NzI4Mjd9.P_NRqBluuEVlCf6sr-X_Xa2ESkBcsshx8iDOzTcGDTUC3uWGlGTMQ56tqKp5ZC1aIIdtN9GX4LD3LsBaHbcwaw"
        
        let success = GEMSdk.shared().initSdk(token)
        
        if success {
            
            GEMSdk.shared().activateDebugLogger()
        }
    }
    
    // MARK: - FlutterPlatformViewFactory
    
    public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        
        let gemMapController = GemMapController.init(withFrame: frame, viewIdentifier: viewId, arguments: args, registrar: self.registrar)
        
        return gemMapController
    }
}
