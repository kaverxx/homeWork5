import Foundation
protocol CarProtocol {
    
    var mark: String { get set }
    var isEngine: Bool { get set }
    var isDoors: Bool { get set }
    var isMp3: Bool { get set }

    mutating func doorsSwitch()
    mutating func engineSwitch()
    mutating func mp3Switch()
    mutating func showMark()
    mutating func showEngine()
    mutating func showDoors()
    mutating func showMp3()
}

protocol TrunkCarSpecialProtocol {
    
    var trailer: Trailer { get set }
    var customMusic: CustomMp3 { get set }
    
    mutating func haveTrailer()
    mutating func haveNotTrailer()
    mutating func haveCustomMusic()
    mutating func haveNotCustomMusic()
}

protocol SportCarSpecialProtocol {
    
    var wheels: WheelsType { get set }
    var illumination: Illumination { get set }
    
    mutating func wheelsTypeRacing()
    mutating func wheelsTypeSummer()
    mutating func wheelsTypeWinter()
    mutating func onIllumination()
    mutating func offIlumination()
}

extension CarProtocol {
    
    mutating func changeMarkToAudi() {
        mark = "audi"
        print("mark is \(mark)")
    }
    
    mutating func changeMarkToScania() {
        mark = "scania"
        print("mark is \(mark)")
    }
    
    mutating func engineSwitch() {
        isEngine.toggle()
        if isEngine {
            print("on")
        } else if !isEngine {
            print("off")
        }
    }
    
    mutating func doorsSwitch() {
        isDoors.toggle()
            if isDoors {
                print("open")
            } else if !isDoors {
                print("close")
        }
    }
    
    mutating func mp3Switch() {
        isMp3.toggle()
        if isMp3 {
            print("have")
        } else if !isMp3 {
            print("haven't")
        }
    }
    
    mutating func showMark() {
        print("mark is \(mark)")
    }
    
    mutating func showEngine() {
        print("engine is \(isEngine)")
    }
    
    mutating func showDoors() {
        print("doors is \(isDoors)")
    }
    
    mutating func showMp3() {
        print("mp3 is \(isMp3)")
    }
}

extension TrunkCarSpecialProtocol {
    
    mutating func haveTrailer() {
        trailer = .yes
        print("car have trailer")
    }
    
    mutating func haveNotTrailer() {
        trailer = .no
        print("car haven't trailer")
    }
    
    mutating func haveCustomMusic() {
        customMusic = .have
        print("car have custom music")
    }
    
    mutating func haveNotCustomMusic() {
        customMusic = .haveNot
        print("car haven't custom music")
    }
    
    mutating func showTrailer() {
        print("\(trailer)")
    }
    
    mutating func showCustomMusic() {
        print("\(customMusic)")
    }
}

extension SportCarSpecialProtocol {
    
    mutating func wheelsTypeRacing() {
        wheels = .racing
        print("wheels is racing")
    }
    
    mutating func wheelsTypeSummer() {
        wheels = .summer
        print("wheels is summer")
    }
    
    mutating func wheelsTypeWinter() {
        wheels = .winter
        print("wheels is winter")
    }
    
    mutating func onIllumination() {
        illumination = .yes
        print("illumination is on")
    }
    
    mutating func offIllumination() {
        illumination = .no
        print("illumination is off")
    }
    
    mutating func showWheels() {
        print("\(wheels)")
    }
    
    mutating func showIllumination() {
        print("\(illumination)")
    }
}

final class SportCar: CarProtocol, SportCarSpecialProtocol {
    
    func wheelsTypeRacing() {
        wheels = .racing
    }
    
    func wheelsTypeSummer() {
        wheels = .summer
    }
    
    func wheelsTypeWinter() {
        wheels = .winter
    }
    
    func onIllumination() {
        illumination = .yes
    }
    
    func offIlumination() {
        illumination = .no
    }
    
    var mark: String
    var isEngine: Bool
    var isDoors: Bool
    var isMp3: Bool
    var wheels: WheelsType
    var illumination: Illumination
    
    init(mark: String,
         isEngine: Bool,
         isDoors: Bool,
         isMp3: Bool,
         wheels: WheelsType,
         illumination: Illumination)
    {
        self.mark = mark
        self.isEngine = isEngine
        self.isDoors = isDoors
        self.isMp3 = isMp3
        self.wheels = wheels
        self.illumination = illumination
    }
}

var SportCarAudi = SportCar(mark: "audi",
                            isEngine: true,
                            isDoors: true,
                            isMp3: true,
                            wheels: .racing,
                            illumination: .yes)

SportCarAudi.showMark()
SportCarAudi.showEngine()
SportCarAudi.showDoors()
SportCarAudi.showMp3()
SportCarAudi.showWheels()
SportCarAudi.showIllumination()

print(" ")

final class TrunkCar: CarProtocol, TrunkCarSpecialProtocol {
    var mark: String
    var isEngine: Bool
    var isDoors: Bool
    var isMp3: Bool
    var trailer: Trailer
    var customMusic: CustomMp3
    
    init(mark: String,
         isEngine: Bool,
         isDoors: Bool,
         isMp3: Bool,
         trailer: Trailer,
         customMusic: CustomMp3)
    {
        self.mark = mark
        self.isEngine = isEngine
        self.isDoors = isDoors
        self.isMp3 = isMp3
        self.trailer = trailer
        self.customMusic = customMusic
    }
}

var TrunkCarScania = TrunkCar(mark: "Scania",
                              isEngine: true,
                              isDoors: true,
                              isMp3: true,
                              trailer: .yes,
                              customMusic: .have)

TrunkCarScania.showMark()
TrunkCarScania.showEngine()
TrunkCarScania.showDoors()
TrunkCarScania.showMp3()
TrunkCarScania.showTrailer()
TrunkCarScania.showCustomMusic()
