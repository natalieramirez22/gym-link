//
//  User.swift
//  gym-app
//
//  Created by Natalie Ramirez on 5/3/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        
        return "" // return an image in a real app
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullname: "Natalie Ramirez", email: "natram@umich.edu")
}
