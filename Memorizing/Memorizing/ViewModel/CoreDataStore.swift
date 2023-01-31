//
//  CoreDataViewModel.swift
//  Memorizing
//
//  Created by 이종현 on 2023/01/31.
//

import Foundation
import CoreData
import SwiftUI

class CoreDataManager {
    
    static let instance = CoreDataManager()
    let container: NSPersistentContainer
    let context: NSManagedObjectContext
    
    init() {
        container = NSPersistentContainer(name: "CoreDataModel")
        container.loadPersistentStores { (_, error) in
            if let error {
                print("Error occured. \(error)")
            }
        }
        context = container.viewContext
    }
    
    func save() {
        do {
            try context.save()
        } catch {
            print("Error occured in saving. \(error.localizedDescription)")
        }
    }
}

class CoreDataStore: ObservableObject {
    let manager = CoreDataManager.instance
    
    @Published var notes: [NoteEntity] = []
    
    init() {
        getNotes()
    }
    
    func addNote(id: String,
                 noteName: String,
                 enrollmentUser: String,
                 noteCategory: String,
                 firstTestResult: Double,
                 lastTestResult: Double,
                 updateDate: Date) {
        let newNote = NoteEntity(context: manager.context)
        newNote.id = id
        newNote.noteName = noteName
        newNote.enrollmentUser = enrollmentUser
        newNote.noteCategory = noteCategory
        newNote.repeatCount = 0
        newNote.firstTestResult = firstTestResult
        newNote.lastTestResult = lastTestResult
        newNote.updateDate = updateDate
        
        save()
        getNotes()
    }
    
    func addWord(note: NoteEntity, id: String, wordLevel: Int64, wordMeaning: String, wordString: String) {
        let newWord = WordEntity(context: manager.context)
        newWord.id = id
        newWord.wordLevel = wordLevel
        newWord.wordMeaning = wordMeaning
        newWord.wordString = wordString
        
        note.addToWords(newWord)
        
        save()
        getNotes()
    }
    
    func addNoteAndWordInMarket(note: MarketWordNote, words: [Word]) {
        let returnedNote = returnNote(
                   id: note.id,
                   noteName: note.noteName,
                   enrollmentUser: note.enrollmentUser,
                   noteCategory: note.noteCategory,
                   firstTestResult: 0,
                   lastTestResult: 0,
                   updateDate: note.updateDate
        )
        for word in words {
            let newWord = WordEntity(context: manager.context)
            newWord.id = word.id
            newWord.wordLevel = Int64(word.wordLevel)
            newWord.wordMeaning = word.wordMeaning
            newWord.wordString = word.wordString
            
            returnedNote.addToWords(newWord)
        }
        
        save()
        getNotes()
    }
    
    func returnNote(id: String, noteName: String, enrollmentUser: String, noteCategory: String, firstTestResult: Double, lastTestResult: Double, updateDate: Date) -> NoteEntity {
        let newNote = NoteEntity(context: manager.context)
        newNote.id = id
        newNote.noteName = noteName
        newNote.enrollmentUser = enrollmentUser
        newNote.noteCategory = noteCategory
        newNote.repeatCount = 0
        newNote.firstTestResult = firstTestResult
        newNote.lastTestResult = lastTestResult
        newNote.updateDate = updateDate
        
        return newNote
    }
    
    func getNotes() {
        
        let request = NSFetchRequest<NoteEntity>(entityName: "NoteEntity")
        
        do {
            notes = try manager.context.fetch(request)
        } catch {
            print("Error fetching. \(error.localizedDescription)")
        }
    }
    
    func save() {
        manager.save()
    }
    
    func deleteAll() {
        // deleteAll() 구현 플리즈
    }
    
    func returnColor(category: String) -> Color {
       
            switch category {
            case "영어":
                return Color.englishColor
            case "한국사":
                return Color.historyColor
            case "IT":
                return Color.iTColor
            case "경제":
                return Color.economyColor
            case "시사":
                return Color.knowledgeColor
            case "기타":
                return Color.etcColor
            default:
                return Color.mainDarkBlue
        }
    }
    
    func returnWidth(width: Int64) -> Double {
            switch width {
            case 0, 1:
                return 0.0
            case 2:
                return 97.0
            case 3:
                return 185.0
            default:
                return 260.0
            }
    }
    
}
