
//  Model.swift
//  Learning App
//
//  Created by Reynald Daffa Pahlevi on 09/06/21.


import Foundation
struct Module: Decodable, Identifiable {
    var id: Int
    var category: String
    var content: Content
    var test: Test
}

struct Content: Decodable, Identifiable {
    var id: Int
    var image: String
    var time: String
    var description: String
    var lessons: [Lesson]
}

struct Lesson: Decodable, Identifiable {
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}

struct Test: Decodable, Identifiable {
    var id: Int
    var image: String
    var time: String
    var description: String
    var questions: [Question]
}

struct Question: Decodable, Identifiable {
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}