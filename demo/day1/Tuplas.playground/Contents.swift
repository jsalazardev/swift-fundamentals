import UIKit

//: Tuplas

let portFTP = ("File Transfer Protocol",21,true)
let portSSH = ("Secure Shell",22,false)
var portSMTP = (desc: "Send Mail Transfer Protocol", num: 25, active: false)

var message : String
var (description,number,_) = portFTP
message = "The port number \(number) corresponds to \(description)"
description = portSSH.0
number = portSSH.1
//status = portSSH.2 // error
message = "The port number \(number) corresponds to \(description)"
portSMTP.active = true
portSMTP.2

print(portSMTP);
