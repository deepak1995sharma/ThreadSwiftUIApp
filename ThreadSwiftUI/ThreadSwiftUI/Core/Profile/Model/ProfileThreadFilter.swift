//
//  ProfileThreadFilter.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 18/03/25.
//

import Foundation
// The benefit of this is in future if we want to add new option we can add it here
enum ProfileThreadFilter:Int,CaseIterable,Identifiable {  // caseIteratble sai we can run a loop
    case threads
    case replies
  //  case likes
    
    var title:String{
        switch self {
        case .threads:return "Threads"
        case .replies:return "Replies"
      //  case .likes: return "Likes"
        }
    }
    
    var id:Int {return self.rawValue}
}
