//
//  UserDefaultBrain.swift
//  App1
//
//  Created by Workspace on 19/01/23.
//

import Foundation

private struct UserDefaultInfo<Value> {
    var key: String
    var defaultValue: Value
    
    func get() -> Value {
        guard let valueUntyped = UserDefaults.standard.object(forKey: self.key) else {
            return self.defaultValue
        }
        guard let value = valueUntyped as? Value else {
            return self.defaultValue
        }
        return value
    }
    
    func set(_ value: Value) {
        UserDefaults.standard.set(value, forKey: self.key)
    }
}

enum MyUserDefaults {
    static var title: String {
        get { titleInfo.get() }
        set { titleInfo.set(newValue) }
    }
    static var factorOneLabel: String {
        get { return factorOneLabelInfo.get() }
        set { factorOneLabelInfo.set(newValue) }
    }
    static var factorOneScore: Double {
        get { return factorOneScoreInfo.get() }
        set { factorOneScoreInfo.set(newValue) }
    }
    static var factorTwoLabel: String {
        get { factorTwoLabelInfo.get() }
        set { factorTwoLabelInfo.set(newValue) }
    }
    static var factorTwoScore: Double {
        get { factorTwoScoreInfo.get() }
        set { factorTwoScoreInfo.set(newValue) }
    }
    static var factorThreeLabel: String {
        get { factorThreeLabelInfo.get() }
        set { factorThreeLabelInfo.set(newValue) }
    }
    static var factorThreeScore: Double {
        get { factorThreeScoreInfo.get() }
        set { factorThreeScoreInfo.set(newValue) }
    }
    static var factorFourLabel: String {
        get { factorFourLabelInfo.get() }
        set { factorFourLabelInfo.set(newValue) }
    }
    static var factorFourScore: Double {
        get { factorFourScoreInfo.get() }
        set { factorFourScoreInfo.set(newValue) }
    }
    static var factorFiveLabel: String {
        get { factorFiveLabelInfo.get() }
        set { factorFiveLabelInfo.set(newValue) }
    }
    static var factorFiveScore: Double {
        get { factorFiveScoreInfo.get() }
        set { factorFiveScoreInfo.set(newValue) }
    }
    
    private static var titleInfo = UserDefaultInfo(key: "title", defaultValue: "")
    private static var factorOneLabelInfo = UserDefaultInfo(key: "factorOneLabel", defaultValue: "")
    private static var factorOneScoreInfo = UserDefaultInfo(key: "factorOneScore", defaultValue: 0.0)
    
    private static var factorTwoLabelInfo = UserDefaultInfo(key: "factorTwoLabel", defaultValue: "")
    private static var factorTwoScoreInfo = UserDefaultInfo(key: "factorTwoScore", defaultValue: 0.0)
    
    private static var factorThreeLabelInfo = UserDefaultInfo(key: "factorThreeLabel", defaultValue: "")
    private static var factorThreeScoreInfo = UserDefaultInfo(key: "factorThreeScore", defaultValue: 0.0)
    
    private static var factorFourLabelInfo = UserDefaultInfo(key: "factorFourLabel", defaultValue: "")
    private static var factorFourScoreInfo = UserDefaultInfo(key: "factorFourScore", defaultValue: 0.0)
    
    private static var factorFiveLabelInfo = UserDefaultInfo(key: "factorFiveLabel", defaultValue: "")
    private static var factorFiveScoreInfo = UserDefaultInfo(key: "factorFiveScore", defaultValue: 0.0)
}
































