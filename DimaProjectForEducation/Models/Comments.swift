import Foundation
import RealmSwift

class Comments: Object {
    @objc dynamic var userName: String = ""
    @objc dynamic var filmId: Int = 0
    @objc dynamic var text: String = ""
    //undefind = 0 banned = -1 veritificate = 1
    @objc dynamic var status: Int = 0
    @objc dynamic var mark: Int = 0
    @objc dynamic var date: Date = Date(timeIntervalSinceNow: 0)
    @objc dynamic var id: Int = 0
}

