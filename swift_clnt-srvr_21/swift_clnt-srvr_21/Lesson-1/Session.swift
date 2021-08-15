//
//  Session.swift
//  swift_clnt-srvr_21
//
//  Created by Olga Surgaeva on 15.08.2021.
//

import Foundation

final class Session {
    
    private init() {}
    
    static let shared = Session()
    static let token: String = "gher74h"
    static let userId: Int = 323
    
    var name: String = ""
    var cash: Int = 0
    
}
