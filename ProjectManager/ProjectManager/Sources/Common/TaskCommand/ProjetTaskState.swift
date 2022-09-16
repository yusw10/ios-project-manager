//
//  TaskCommand.swift
//  ProjectManager
//
//  Created by 유한석 on 2022/09/12.
//

import Foundation

@frozen enum ProjetTaskState: String {
    case TODO = "TODO"
    case DOING = "DOING"
    case DONE = "DONE"
    
    func moveUpperActionTarget() -> (upper: ProjetTaskState, lower: ProjetTaskState) {
        switch self {
        case .TODO:
            return (.DOING, .DOING)
        case .DOING:
            return (.TODO, .DONE)
        case .DONE:
            return (.TODO, .DOING)
        }
    }
}
