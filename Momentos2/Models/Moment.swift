//
//  Moment.swift
//  Momentos2
//
//  Created by Brian Benjamin Pareja Meruvia on 5/11/25.
//

import Foundation
import SwiftData
import UIKit

@Model
class Moment{
    
    var title: String
    var note: String
    var imageData: Data?
    var timestamp: Date
    
    init(title: String, note: String, imageData: Data? = nil, timestamp: Date = .now) {
        self.title = title
        self.note = note
        self.imageData = imageData
        self.timestamp = timestamp
    }
    
    var image: UIImage? {
        imageData.flatMap{
            UIImage(data: $0)
        }
    }
}

extension Moment {
    static let sample = sampleData[0]
    static let longTextSample = sampleData[1]
    static let imageSample = sampleData[4]

    // --- DATOS DE MUESTRA TRADUCIDOS ---
    static let sampleData = [
        Moment(
            title: "🍅🥳",
            note: "¡Recolecté mi primer tomate de la huerta!"
        ),
        Moment(
            title: "¡Aprobé el examen!",
            note: "El examen de química estuvo difícil, pero creo que me fue bien 🙌. Qué bueno que contacté a Guillermo y Lee para estudiar. ¡Realmente ayudó!",
            imageData: UIImage(named: "Study")?.pngData()
        ),
        Moment(
            title: "Tiempo de descanso",
            note: "Muy agradecido por una tarde relajante después de una semana ocupada.",
            imageData: UIImage(named: "Relax")?.pngData()
        ),
        Moment(
            title: "Familia ❤️",
            note: ""
        ),
        Moment(
            title: "¡Genial!",
            note: "Fui a un gran concierto con Blair 🎶",
            imageData: UIImage(named: "Concert")?.pngData()
        )
    ]
}
