//
//  BlogIdea.swift
//  BlogIdeaList-SwiftUI
//
//  Created by Andrew Bancroft on 7/30/19.
//  Copyright © 2019 Andrew Bancroft. All rights reserved.
//


import Foundation
import CoreData

// ✴️ BlogIdea code generation is turned OFF in the xcdatamodeld file
public class BlogIdea: NSManagedObject, Identifiable {
    @NSManaged public var ideaTitle: String?
    @NSManaged public var ideaDescription: String?
}

extension BlogIdea {
    static func allIdeasFetchRequest() -> NSFetchRequest<BlogIdea> {
        let request: NSFetchRequest<BlogIdea> = BlogIdea.fetchRequest() as! NSFetchRequest<BlogIdea>
        
        // ✴️ The @FetchRequest property wrapper in the ContentView requires a sort descriptor
        request.sortDescriptors = [NSSortDescriptor(key: "ideaTitle", ascending: true)]
          
        return request
    }
}
