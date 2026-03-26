import Foundation

// MARK: - Player Model
struct Player: Codable {
    let id: Int
    let username: String
    let age: Int
    let skillLevel: String
    let behaviorScore: Int
    let preferredGameModes: [String]
    let availability: String
    let region: String
    let platform: String
    let bio: String
}

// MARK: - API Call
let url = URL(string: "http://localhost:3000/players")!

let task = URLSession.shared.dataTask(with: url) { data, response, error in
    
    // Handle error
    if let error = error {
        print("❌ Error:", error.localizedDescription)
        return
    }
    
    // Ensure data exists
    guard let data = data else {
        print("❌ No data returned")
        return
    }
    
    // Decode JSON into Swift objects
    do {
        let players = try JSONDecoder().decode([Player].self, from: data)
        
        print("✅ Players Retrieved:\n")
        
        for player in players {
            print("🎮 Username:", player.username)
            print("📊 Skill Level:", player.skillLevel)
            print("🌍 Region:", player.region)
            print("🖥 Platform:", player.platform)
            print("🧠 Behavior Score:", player.behaviorScore)
            print("🎯 Modes:", player.preferredGameModes.joined(separator: ", "))
            print("📝 Bio:", player.bio)
            print("---------------------------")
        }
        
    } catch {
        print("❌ Decoding error:", error)
    }
}

// Start the request
task.resume()

// Keep Playground / CLI running
RunLoop.main.run()
