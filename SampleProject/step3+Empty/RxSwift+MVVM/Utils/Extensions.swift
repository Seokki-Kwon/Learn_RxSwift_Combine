//
//  Utils.swift
//  RxSwift+MVVM
//
//  Created by iamchiwon on 07/08/2019.
//  Copyright © 2019 iamchiwon. All rights reserved.
//

import Foundation

extension Int {
    func currencyKR() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}

extension Menu {
    static func fromMenuItems(id: Int, item: MenuItem) -> Menu {        
        return Menu(id: id, name: item.name, price: item.price, count: 0)
    }
}
