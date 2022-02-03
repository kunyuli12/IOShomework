//
//  HealtModel.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2022/1/4.
//

import Foundation


struct AgeModel_B:Identifiable,Hashable,Codable {
    var id = UUID().uuidString
    var AGEname:String
    var AGEnumber:Float
    var NeedVG:Float
    var NeedFurit:Float
}
struct AgeModel_G:Identifiable,Hashable,Codable {
    var id = UUID().uuidString
    var AGEname:String
    var AGEnumber:Float
    var NeedVG:Float
    var NeedFurit:Float
}
class VGinform:ObservableObject {
    @Published var AGEbox_B:[AgeModel_B] = [AgeModel_B]()
    @Published var AGEbox_G:[AgeModel_G] = [AgeModel_G]()
    
    init(){
        SexboxB()
        SexboxG()
    }
    func SexboxB() {
        AGEbox_B = [
            AgeModel_B(AGEname: "2~6", AGEnumber: 0,NeedVG: 3,NeedFurit: 2),
            AgeModel_B(AGEname: "7~12", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_B(AGEname: "13~18", AGEnumber: 0,NeedVG: 5,NeedFurit: 4),
            AgeModel_B(AGEname: "19~30", AGEnumber: 0,NeedVG: 5,NeedFurit: 4),
            AgeModel_B(AGEname: "31~50", AGEnumber: 0,NeedVG: 5,NeedFurit: 4),
            AgeModel_B(AGEname: "51~70", AGEnumber: 0,NeedVG: 4,NeedFurit: 3.5),
            AgeModel_B(AGEname: "71以上", AGEnumber: 0,NeedVG: 3,NeedFurit: 2)
        ]
    }
    func SexboxG() {
        AGEbox_G = [
            AgeModel_G(AGEname: "2~6", AGEnumber: 0,NeedVG: 3,NeedFurit: 2),
            AgeModel_G(AGEname: "7~12", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_G(AGEname: "13~18", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_G(AGEname: "19~30", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_G(AGEname: "31~50", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_G(AGEname: "51~70", AGEnumber: 0,NeedVG: 3,NeedFurit: 2),
            AgeModel_G(AGEname: "71以上", AGEnumber: 0,NeedVG: 3,NeedFurit: 2)
        ]
    }
    
    func AddBoy (value:AgeModel_B,quanty:Float ){
        let Index = AGEbox_B.firstIndex(where: { ad in
            ad.AGEname == value.AGEname
        })
        if (Index != nil) {
            AGEbox_B[Index!].AGEnumber += quanty
        }
    }
    func LowBoy (value:AgeModel_B,quanty:Float ){
        let Index = AGEbox_B.firstIndex(where: { ad in
            ad.AGEname == value.AGEname
        })
        if (Index != nil) {
            if  AGEbox_B[Index!].AGEnumber > 0 {
            AGEbox_B[Index!].AGEnumber -= quanty
            }
        }
    }
    func AddGirl (value:AgeModel_G,quanty:Float ){
        let Index = AGEbox_G.firstIndex(where: { ad in
            ad.AGEname == value.AGEname
        })
        if (Index != nil) {
            AGEbox_G[Index!].AGEnumber += quanty
        }
    }
    func LowGirl (value:AgeModel_G,quanty:Float ){
        let Index = AGEbox_G.firstIndex(where: { ad in
            ad.AGEname == value.AGEname
        })
        if (Index != nil) {
            if  AGEbox_G[Index!].AGEnumber > 0 {
            AGEbox_G[Index!].AGEnumber -= quanty
            }
        }
    }

    func FinallyQuanty(quanty:Float ,need:Float ) -> Float {
        let anser = quanty * need
        return anser
    }
    
    func VGDemandB(tempBoy:[AgeModel_B]) -> Float {
        
        var sum:Float = 0.0
        
        for de in tempBoy {
                sum += FinallyQuanty(quanty: de.AGEnumber, need: de.NeedVG)
            
        }
        return sum
    }//計算總共需要的蔬菜量
    func VGDemandG(tempGirl:[AgeModel_G]) -> Float {
        
        var sum:Float = 0.0
        
        for des in tempGirl {
                sum += FinallyQuanty(quanty: des.AGEnumber, need: des.NeedVG)
            
        }
        return sum
    }//計算總共需要的蔬菜量
  func FriutDemandB(tempBoy:[AgeModel_B]) -> Float {
      
      var sum:Float = 0.0
      
      for de in tempBoy {
              sum += FinallyQuanty(quanty: de.AGEnumber, need: de.NeedFurit)
      }
      return sum
  }//計算總共需要的水果量
    func FriutDemandG(tempGirl:[AgeModel_G]) -> Float {
        
        var sum:Float = 0.0
        
            for des in tempGirl{
                sum += FinallyQuanty(quanty: des.AGEnumber, need: des.NeedFurit)
            }
        return sum
    }//計算總共需要的水果量
}
