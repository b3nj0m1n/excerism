struct SpaceAge {
    init(_ seconds: Int) {
        self.seconds = seconds
    }
    let seconds: Int
    
    var onEarth: Double {
        return doRounding(onEarthNotRounded)
    }
    
    var onEarthNotRounded: Double {
        return Double(seconds) / Double(31557600)
    }
    
    var onMercury: Double {
        return doRounding(onEarthNotRounded / Double(0.2408467))
    }

    var onVenus: Double {
        return doRounding(onEarthNotRounded / Double(0.61519726))
    }
    
    var onMars: Double {
        return doRounding(onEarthNotRounded / Double(1.8808158))
    }
    
    var onJupiter: Double {
        return doRounding(onEarthNotRounded / Double(11.862615))
    }
    
    var onSaturn: Double  {
        return doRounding(onEarthNotRounded / Double(29.447498))
    }
    
    var onUranus: Double {
        return doRounding(onEarthNotRounded / Double(84.016846))
    }
    
    var onNeptune: Double {
        return doRounding(onEarthNotRounded / Double(164.79132))
    }
    
    func doRounding(_ d: Double) -> Double {
        return (d * 100).rounded() / 100
    }
}
