//
//  QuizPersing.swift
//  Quiz Game
//
//  Created by kuetcse on 17/9/23.
//

import Foundation

struct QuizPersing: Decodable{
    var result: [Result]
    
    struct Result: Decodable, Identifiable{
        var id: UUID{
            UUID()
        }
        var category: String
        var type:String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswer: [String]
        
        var formattedQuestion: AttributedString{
            
            do{
                return try AttributedString(markdown: question)
            }catch{
                print("Error in setting formattedQuestion: \(error)")
                return ""
            }
            
        }
        
        var answer: [Answer]{
            do{
                let correct=[Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrect=try incorrectAnswer.map{answer in Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                let allAnswers = correct + incorrect
                return allAnswers.shuffled()
            }
            catch{
                print("Error setting answers : \(error)")
                return []
            }
        }
    }
    
}
