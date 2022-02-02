//
//  HealtModel.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2022/1/4.
//

import Foundation


struct AgeModel:Identifiable,Hashable,Codable {
    var id = UUID().uuidString
    var sex:String
    var AGEname:AgeName
    var AGEnumber:AgeNumbers
}
struct AgeName:Identifiable,Hashable,Codable {
    var id = UUID().uuidString
    var year2_6:String
    var year7_12:String
    var year13_18:String
    var year19_30:String
    var year31_50:String
    var year51_70:String
    var year71:String
}
struct AgeNumbers:Identifiable,Hashable,Codable {
    var id = UUID().uuidString
    var year2_6:Int
    var year7_12:Int
    var year13_18:Int
    var year19_30:Int
    var year31_50:Int
    var year51_70:Int
    var year71:Int
}


class VGinform:ObservableObject {
    @Published var AGEbox:[AgeModel] = [AgeModel]()
    
    init(){
        Sexboc()
    }
    
    func Sexboc() {
        AGEbox = [
            AgeModel(sex: "MAN", AGEname: AgeName(year2_6: "2~6", year7_12: "7~12", year13_18: "13~18", year19_30: "19~30", year31_50: "31~50", year51_70: "51~70", year71: "71以上"), AGEnumber: AgeNumbers(year2_6: 0, year7_12: 0, year13_18: 0, year19_30: 0, year31_50: 0, year51_70: 0, year71: 0)),
            AgeModel(sex: "WOMAN", AGEname: AgeName(year2_6: "2~6", year7_12: "7~12", year13_18: "13~18", year19_30: "19~30", year31_50: "31~50", year51_70: "51~70", year71: "71以上"), AGEnumber: AgeNumbers(year2_6: 0, year7_12: 0, year13_18: 0, year19_30: 0, year31_50: 0, year51_70: 0, year71: 0))
        ]
    }
    
    func cacu_VG3Fruit2(VG_qauntity:Float,Fruit_qauntity:Float) -> Float {
        let anser = (VG_qauntity * 3) + (Fruit_qauntity * 2)
        return anser
    }//2~6歲的小孩和50~70歲的女性與71歲以上的長者
    
    func cacu_VG4Fruit3(VG_qauntity:Float,Fruit_qauntity:Float) -> Float{
        let anser = (VG_qauntity * 4) + (Fruit_qauntity * 3)
        return anser
    }//7~12歲和13~50歲的女性
    
    func cacu_VG5Fruit4(VG_qauntity:Float,Fruit_qauntity:Float) -> Float{
        let anser = (VG_qauntity * 5) + (Fruit_qauntity * 4)
        return anser
    }//13~50歲的男性
    func cacu_VG4Fruit35(VG_qauntity:Float,Fruit_qauntity:Float) -> Float{
        let anser = (VG_qauntity * 4) + (Fruit_qauntity * 3.5)
        return anser
    }//51~70歲的男性
}
