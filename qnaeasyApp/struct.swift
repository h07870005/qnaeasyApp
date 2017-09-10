//
//  struct.swift
//  qnaeasyApp
//
//  Created by Huang Hao on 2017/9/5.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import Foundation
struct Qna {
    let question: String
    let answer: String
    let choice: [String]
    let name: String
}
let qnasArray = [Qna(question:"這是在台灣哪裡的夜景？",answer: "陽明山夜景", choice: ["陽明山夜景","台南運河","高雄愛河","台北101"],name: "0"),
                 Qna(question:"這是台灣哪裡的夜景？",answer:"台南運河", choice:["陽明山夜景","台南運河","高雄愛河","台北101"] ,name: "1"),
                 Qna(question:"這是台灣哪裡的夜景？",answer:"高雄愛河", choice: ["陽明山夜景","台南運河","高雄愛河","台北101"],name: "2"),
                 Qna(question:"這是哪一個知名景點？",answer:"台北101", choice: ["陽明山夜景","台南運河","高雄愛河","台北101"],name: "3"),
                 Qna(question:"這是哪個知名景點？",answer:"杜拜塔(哈里發塔)", choice: ["杜拜塔(哈里發塔)","韓國首爾塔","日本晴空塔","土耳其伊斯坦堡"],name: "4"),
                 Qna(question:"這是哪個知名景點？",answer:"韓國首爾塔", choice: ["杜拜塔(哈里發塔)","韓國首爾塔","日本晴空塔","土耳其伊斯坦堡"],name: "5"),
                 Qna(question:"這是哪個知名幾點？",answer:"日本晴空塔", choice: ["杜拜塔(哈里發塔)","韓國首爾塔","日本晴空塔","土耳其伊斯坦堡"],name: "6"),
                 Qna(question:"這是哪個知名景點？",answer:"土耳其伊斯坦堡", choice: ["杜拜塔(哈里發塔)","韓國首爾塔","日本晴空塔","土耳其伊斯坦堡"],name: "7"),
                 Qna(question:"這是哪個知名景點？",answer:"德國科隆大教堂", choice: ["德國科隆大教堂","法國巴黎鐵塔","日本晴空塔","土耳其伊斯坦堡"],name: "8"),
                 Qna(question:"這是哪個知名景點？",answer:"法國巴黎鐵塔", choice: ["法國巴黎鐵塔","韓國首爾塔","巴西里約熱內盧基督像","希臘雅典衛城"],name: "9"),
                 Qna(question:"這是哪個知名景點？",answer:"巴西里約熱內盧基督像", choice: ["杜拜塔(哈里發塔)","韓國首爾塔","巴西里約熱內盧基督像","希臘雅典衛城"],name: "10"),
                 Qna(question:"這是哪個知名景點？",answer:"希臘雅典衛城", choice: ["杜拜塔(哈里發塔)","韓國首爾塔","巴西里約熱內盧基督像","希臘雅典衛城"],name: "11"),
                 Qna(question:"這是哪個知名景點？",answer:"美國自由女神像", choice: ["杜拜塔(哈里發塔)","美國自由女神像","日本晴空塔","土耳其伊斯坦堡"],name: "12")]

/* 0陽明山夜景
 1台南運河
 2高雄愛河
 3台北101
 4杜拜塔(哈里發塔)
 5韓國首爾塔
 6日本晴空塔
 7土耳其伊斯坦堡
 8德國科隆大教堂
 9法國巴黎鐵塔
 10巴西里約熱內盧基督像
 11希臘雅典衛城
 12美國自由女神像
 */
