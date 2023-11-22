import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    for i in db {
        if id_pw[0] == i[0] {
            if id_pw[1] == i[1] {
                return "login"
            } else {
                return "wrong pw"
            }
        }
    }
    return "fail"
}