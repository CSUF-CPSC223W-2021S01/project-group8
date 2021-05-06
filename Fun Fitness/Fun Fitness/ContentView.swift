//
//  ContentView.swift
//  Fun Fitness
//
//  Created by Keven Atalla on 5/6/21.
//

import SwiftUI
import HealthKit

struct ContentView: View {
 
    private var healthstore:  HealthStore?
    init() { healthstore = HealthStore() }
    
    @State private var steps: [Step] = [Step]()
    
    
    private func updateUIFromStatistics (_ statisticsCollection: HKStatisticsCollection) {
        
        let startDate = Calendar.current.date(byAdding: .day,value: -7, to: Date() )!
        let endDate = Date()
        
        statisticsCollection.enumerateStatistics(from: startDate, to: endDate) { (statistics, stop) in 
            let count = statistics.sumQuantity()?.doubleValue(for: .count())
            
            let step = Step (count: Int(count ?? 0 ), date: statistics.startDate)
            steps.append(step)
        }
    }
    
    var body: some View {
        List(steps, id: \.id) { step in
            VStack {
            Text ("\(step.count)")
                Text(step.date, style: .date)
        }
        }
    
    .onAppear{
    if let healthStore = healthstore {
        healthStore.requestAuthorization { success in
            if success {
                healthStore.calculateSteps {statisticsCollection in if let statisticsCollection = statisticsCollection {
                    updateUIFromStatistics(statisticsCollection)
                }
                }
            }
        }
        
    }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View{ ContentView()
    
    }
}
}
