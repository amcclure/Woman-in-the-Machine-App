//
//  Game.swift
//  Man in the Machine
//
//  Created by Adrian McClure on 5/23/16.
//  Copyright © 2016 Adrian McClure. All rights reserved.
//

import Foundation
import UIKit
import AudioToolbox
import GoogleMobileAds

class Game:UIViewController{
    
    @IBOutlet weak var StoryLine: UILabel!
    @IBOutlet weak var Option1: UIButton!
    @IBOutlet weak var Option2: UIButton!
    @IBOutlet weak var saveIcon: UIImageView!
    @IBOutlet weak var bannerView2: GADBannerView!
    
    //Option1 and the responses
    var storyLineArr = ["Hello?" , "Hi I am Jane. Could you help me?", "I’m lost, it’s dark, and I can’t reach anyone else.", "It doesn't make sense to me either. I was at my desk one moment and suddenly I’m here.", "Look, I can’t explain it any better, but I just need to get out of here.", "I see two lights in the distance, but I heard your brain starts to hallucinate when it’s in total darkness. Should I go left or right?","end"]
    
    var option1Arr = ["Hi, who are you", "What do you need?", "I don't understand. Where were you before?", "There has to be more to it than that!", "There’s nothing else around you?", "Right sounds right"]
    
    
    //Option2 and the responses
    var storyLineArr2 = [" ","I don't think so…I am Jane and I need help", "No please! I don't know where I am, there’s nobody else..", "I don’t know! I was at work, and somehow I’m here in a split second.", "It feels like a cave…hollow sounding…but I can’t see anything", "I see two little lights, but they are on opposite sides. Which way should I go?","end" ]
    
    
    var option2Arr = ["Do I know you?", "I don't really have time..", "How did you get there?", "And what is 'here'?", "Is there a way out of the cave?", "You might as well go left"]
    
    
    var count1 = 0
    var count2 = 0
    var saveInt = 0
    var sendSOS = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDefaults();
        //TEST AD "ca-app-pub-3940256099942544/2934735716"
        //ACTUAL AS "ca-app-pub-7664641648183143/8066917510"
        //USE TEST aTO check view controller
        bannerView2.adUnitID = "ca-app-pub-7664641648183143/8066917510"
        bannerView2.rootViewController = self
        bannerView2.loadRequest(GADRequest())
        var intro = 0
        while(intro == 0){
            self.StoryLine.text = storyLineArr[count1]
            vibrate();
            Option1.setTitle(option1Arr[count1], forState: .Normal)
            Option2.setTitle(option2Arr[count2], forState: .Normal)
            checkAchieve()
            intro = 1
        }
    }
    @IBAction func Option1Press(sender: AnyObject) {
        
        print(count1)
        //A1
        if(storyLineArr2[count1] == "Well they’ll only know that someone’s in trouble…but at least they’ll be looking!"){
            print("SENDSOS now true")
            sendSOS = true
        }
        if(storyLineArr[count1] == "I guess, but I feel like we can take some chances at this point."){
            print("SendSOS still false")
            sendSOS = false
        }
        if(storyLineArr[count1] == "Hello?"){
            let A1 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A1, forKey: "A1")
            defaults.synchronize()
            print("TRUE")
        }
        //A2
        if(storyLineArr[count1] == "Okay, I’m trusting you on this! If it ends up being a cannibal cookout…"){
            let A2 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A2, forKey: "A2")
            defaults.synchronize()
           print("TRUE")
        }
        //A3
        if(storyLineArr2[count1] == "It really doesn't matter does it? Wish I could tell my boss that sometimes…"){
            let A3 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A3, forKey: "A3")
            defaults.synchronize()
            print("A3 Saved")
            print("TRUE")
        }
        //A4
        if(storyLineArr[count1] == "Okay I’ll rest my weary bones for a bit"){
            let A4 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A4, forKey: "A4")
            defaults.synchronize()
            print("A4 Saved")
            print("TRUE")
        }
        //A5
        if(storyLineArr[count1] == "You’re right, I’ll want to find a way out of here as soon as possible."){
            let A5 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A5, forKey: "A5")
            defaults.synchronize()
            print("A5 Saved")
            print("TRUE")
        }
        //A6
        if(storyLineArr[count1] == "Jane is gone"){
            let A6 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A6, forKey: "A6")
            defaults.synchronize()
            print("A6 Saved")
            print("TRUE")
        }
        //JACKSON
        if(storyLineArr[count1] == "What do you want to know first about him?"){
            let A7 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A7, forKey: "A7")
            defaults.synchronize()
            print("A7 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Where do I start?"){
            let A8 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A8, forKey: "A8")
            defaults.synchronize()
            print("A8 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Well they’ll only know that someone’s in trouble…but at least they’ll be looking!"){
            let A9 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A9, forKey: "A9")
            defaults.synchronize()
            print("A9 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "I guess, but I feel like we can take some chances at this point."){
            let A10 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A10, forKey: "A10")
            defaults.synchronize()
            print("A10 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "I’m here… I’m here…"){
            let A11 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A11, forKey: "A11")
            defaults.synchronize()
            print("A11 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Let’s see, just ordinary office stuff. Huh, I didn't know Allen was a Brony though."){
            let A12 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A12, forKey: "A12")
            defaults.synchronize()
            print("A12 Saved")
            print("TRUE")
        }
        if(option1Arr[count1] == "It’s Allen."){
            let A13 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A13, forKey: "A13")
            defaults.synchronize()
            print("A13 Saved")
            print("TRUE")
        }
        if(option1Arr[count1] ==  "It’s him"){
            let A14 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A14, forKey: "A14")
            defaults.synchronize()
            print("A14 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Thank you for Playing!"){
            let A15 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A15, forKey: "A15")
            defaults.synchronize()
            print("A15 Saved")
            print("TRUE")
        }

        saveInt = saveInt + 1
        count1 = count1 + 1
        vibrate();
        count2 = count2 + 1
        
        if(storyLineArr[count1] == "end"){
            print("IN OPTION1 BREAK")
            let storyLine2Arr = ["Okay, I’m trusting you on this! If it ends up being a cannibal cookout…", "Well, they didn't put that in my contract. Do you think I’d win the case?", "To be completely honest, I can’t be completely honest. Let’s just say, if I told you I’d have to kill you…kidding not kidding.", "For all I know, you could be bald, but I think I’ve been braiding my way closer to the light.", "Probably an hour or two more of scrounging through total darkness.","end1"]
            
            storyLineArr = storyLine2Arr;
            
            let storyLine2Arr2 = ["","Wow that’s just low. I’m actually very passionate about my job!","To be completely honest, I can’t be completely honest. Let’s just say, if I told you I’d have to kill you…kidding not kidding.", "I think so, though it’s further away than I thought.", "I am getting a bit tired, and I’ll have more energy later.","end1"]
            
            storyLineArr2 = storyLine2Arr2;
            
            let option1Arr2 = ["You’d hear the chanting first", "What do you do anyways?", "I guess we won’t be staying up, braiding each others hair, sharing secrets then?", "How long do you think it’ll take?", "You should rest"]
            
            option1Arr = option1Arr2;
            
            let option2Arr2 = ["You’re the one who so conveniently disappeared from work", "Your job being?", "Well then…are you getting any closer to the light?", "Maybe you should rest?", "You should keep going.","end1"]
            
            option2Arr = option2Arr2;
            if(saveInt ==  1){
                saveInt = 6
                saveDefaults();
            }
            
            saveDefaults();
            count1 = 0
            count2 = 0
            savedAlert();

            
         
            
            rePopulateOptions1();
            self.StoryLine.text = storyLineArr[count1];
        }
        if(storyLineArr[count1] == "end1"){
            
            let storyLineArrTemp = ["Okay I’ll rest my weary bones for a bit", "I’ll try", "...... ", "OH MY GOD","No! I..I…How long have I been asleep?!", "Everything! I feel so funny…like…like I’m dissolving or Ima387rhf@dj.", "Jane is gone","Jane is gone2"]
            
            storyLineArr = storyLineArrTemp
            
            let storyLineArrTemp2 = ["","Nighty night", "......", "How long have I been asleep?!", "I have to get out of here! GET ME OUT OF HERE!!$TfghaFghG33###8880-4","Everything! I feel so funny…like…like I’m dissolving or Ima387rhf@dj.", "Jane is gone","Jane is gone2"]
            
            storyLineArr2 = storyLineArrTemp2
            
            let option1Temp = ["Sleep Tight", "…", "Are you okay?!", "What’s wrong?", "Jane?!","....","Load last save"]
            
            option1Arr = option1Temp
            
            let option2Temp = ["Don’t let the bed bugs bite", " ", "What happened?!", " ", " "," ", " "," " ]
            
            option2Arr = option2Temp
            
            
            if(saveInt == 1){
                saveInt = 11
                saveDefaults()
            }
            saveDefaults();
            count1 = 0
            count2 = 0
            savedAlert();
            
            
            
            
            rePopulateOptions1();
            self.StoryLine.text = storyLineArr[count1];
            
        }
        if(storyLineArr[count1] == "a1"){
            
            let storyLineArrTemp = ["Okay I’ll rest my weary bones for a bit", "I’ll try", "...... ", "OH MY GOD","No! I..I…How long have I been asleep?!", "Everything! I feel so funny…like…like I’m dissolving or Ima387rhf@dj.", "Jane is gone","a1d"]
            
            storyLineArr = storyLineArrTemp
            
            let storyLineArrTemp2 = ["","Nighty night", "......", "How long have I been asleep?!", "I have to get out of here! GET ME OUT OF HERE!!$TfghaFghG33###8880-4","Everything! I feel so funny…like…like I’m dissolving or Ima387rhf@dj.", "Jane is gone","a1d"]
            
            storyLineArr2 = storyLineArrTemp2
            
            let option1Temp = ["Sleep Tight", "…", "Are you okay?!", "What’s wrong?", "Jane?!","....","Load last save"]
            
            option1Arr = option1Temp
            
            let option2Temp = ["Don’t let the bed bugs bite", " ", "What happened?!", " ", " "," ", " "," " ]
            
            option2Arr = option2Temp
            
            
            if(saveInt == 1){
                saveInt = 9
                saveDefaults()
            }
            saveDefaults();
            count1 = 0
            count2 = 0
            savedAlert();
            rePopulateOptions1();
            self.StoryLine.text = storyLineArr[count1];
            
        }
        if(storyLineArr[count1] == "a1d"){
            count1 = 0
            count2 = 0
            let saveArr = ["I’m getting closer, but it’ll be a while before I get there. Do you think I should take a break?","a1"]
            storyLineArr = saveArr
            
            let saveOption1 = ["Maybe you should take a break"]
            option1Arr = saveOption1
            
            let saveOption2 = ["You might as well go left"]
            option2Arr = saveOption2
            saveInt = 8
            rePopulateOptions1()
        }
        if(storyLineArr[count1] == "end2"){
            
           let storyLine2Arr = ["…", "Aren’t you curious?", "Very funny. I mean, aren't you curious about what business we could have being body snatchers?", "I guess…and time isn't on our side either. Anyways, I’m finally at the light.", "My god…it’s a huge computer", "Okay…" , "I’ll need to see, but presumably there will be some security.", "Here it is! Oh this is really simple!…just a second and I’ll be…through!", "I have a code, but…I think I can send out a broadcast!", "Anyone! I’ll just send out an SOS. Don’t you think I should?","end6"]
            
            storyLineArr = storyLine2Arr
            
            let storyLine2Arr2 = ["","Doesn’t it bother you?", "That I helped create something that could take away everything without anyone knowing it.", "You have a point. Anyways, I’m at the light.", "There’s just this huge computer!", "I don’t see anything out of the ordinary…I’m going to see if I can use it", "Just a loading screen, though I’m sure there will be security.", "Not long, in fact…here it is…and…I’m through!", "The code but, I think I might be able to send out a broadcast", "China, Kentucky, Belgium…I don’t know! Everywhere! Don't you think I should?","end6"]
            
            storyLineArr2 = storyLine2Arr2
            
            let option1Arr2 = ["Are you there?", "How a woman successfully got into a STEM field?", "Well, I can’t exactly leave when you’re literally in my phone.", "What do you see?", "Press something?", "How will you get the codes from it?", "What sort of security?", "What can you do?", "To who?", "No! It would tell the person who put you in here exactly where you are?","end6"]
            
            option1Arr = option1Arr2
            
           let option2Arr2 = ["Why so quiet?", "What?", "What more could you possibly tell me?", "What is it?", "Check it out first.", "Is anything showing up?", "How long will this take?", "What do you see?", "Where would it go?", "Of course! You need all the help you can get…"]
            
            option2Arr = option2Arr2
            if(saveInt == 1){
                saveInt = 23;
                saveDefaults()
                
            }
            saveDefaults();
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count1]
            savedAlert();
           
            rePopulateOptions1();
            
        }
        if(storyLineArr[count1] == "Jane is gone2"){
            count1 = 0
            count2 = 0
                let saveArr = ["I am getting a bit tired, and I'll have more energy later","end1"]
                storyLineArr = saveArr
                
                let saveOption1 = ["You should rest"]
                option1Arr = saveOption1
                
                let saveOption2 = ["You should keep going"]
                option2Arr = saveOption2
           
            rePopulateOptions1()
            
        }
        if(storyLineArr[count1] == "end3"){
            
            let temp1 = ["…What do you mean?", "I never thought it bothered people that much…", "I work with 2 people…Jackson and Allen", "end4"]
            
            storyLineArr = temp1
            
            let temp2 = ["…What do you mean?", "I didn’t realise people tried to blast their splinters into a phone","I work with 2 people…Jackson and Allen","end4"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["Maybe you blew someone off one too many times", "Who could it have bothered?", "Tell me about Jackson"]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["You got pretty deep under someone’s skin.", "How many people do you work with?", "Tell me about Allen"]
            
            option2Arr = tempOpt2
            if(saveInt == 1){
                saveInt = 24
                saveDefaults();
            }
            saveDefaults()
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            savedAlert();
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "end4"){
            
            let tempStoryLineArr = ["What do you want to know first about him?", "He designs the layout, figures out the materials, and tells us building limitations.", "Yup, we work pretty closely together too. The one thing about him is he get’s very defensive about his position…", "He thinks that *we* think his job isn't as valuable or requires less skill. He’s very sensitive about it.", "There was this one time he said something…", "It was a long day and we were arguing over why he had to find a way to accommodate an energy source.", "And he said, ‘Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there.","end5"]
            
            storyLineArr = tempStoryLineArr
            
            let tempStoryLineArr2 = ["","He’s alright. He’s a kind of architect. You know, the design, the materials, the limitations, all that.", "Yeah, and I know it’s not enough proof that he put me in here, but he’s always very defensive about his position.", "There’s always that undercurrent. He feels his work is less valued than mine or Allen’s. ", "One instance stands out to me…", "Everyone was exhausted, and I was telling Jackson why his design just wouldn't work.", "And he said, Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there."]
            
            storyLineArr2 = tempStoryLineArr2
            
           let tempOption1Arr = ["What is there to know about him?", "Ooh, an artist.", "Defensive?", "Do you have any proof or is it just a feeling?", "What?", "…", "…", "That sounds exactly like he’s threatening to inject you with the chip."]
            
            option1Arr = tempOption1Arr
            
            let tempOption2Arr = ["Just tell me what he's like.", "And you work pretty closely with him too?", "All the time?", "Any instances that stand out to you?", "Yeah?", "…", "…", "I still don't know. We’ll have to think about it some more. Tell me about Allen"]
            
            option2Arr = tempOption2Arr
            if(saveInt == 1){
                saveInt = 27
                saveDefaults()
            }
            saveDefaults()
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            savedAlert();
            rePopulateOptions1();

            
            
        }
        if(storyLineArr[count1] == "end5"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?","end9"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said 'house sale'.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe, but you should tell me about Jackson first." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me, but there's still Jackson."]
            
            option2Arr = tempOpt2
            
         
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
          
            rePopulateOptions1();
        }

        
        if(storyLineArr[count1] == "end6"){
            let temp1 = ["I guess, but I feel like we can take some chances at this point.", "They couldn’t..but that’s not the point!…You just don’t get it!", "I’ve been stuck in here for what feels like a lifetime…I can’t rest for more than 5 minutes or waste time *arguing* with you or else I’ll disappear forever!", "But even more than that, is this- this place! There is nobody and nothing except YOU.", "You have helped me in here more than you can know. But I need a connection to something else…I need to at least feel more than one person cares!", "Thank you…we have to move on.", "There are two people: Allen or Jackson", "They’re the two people I mainly work with.","end7"]
            
            storyLineArr = temp1
            
            let temp2 = ["","You don’t understand!", "I’ve been stuck in here for what feels like a lifetime…I can’t rest for more than 5 minutes or waste time *arguing* with you or else I’ll disappear forever!", "But even more than that is this- this place! There is nobody and nothing except YOU.", "Just listen! You have helped me in here more than you can know. But I need a connection to something else…I need to at least feel more than one person cares!", "I have to move on, there can’t be much time left for me.", "There are two people: Allen or Jackson", "They’re the two people I mainly work with.","end7"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["No! How would anyone even help you?", "What are you talking about?", "Well-", "…", "If you have to…send it.", "You still have to tell me who you think put you in here", "How do you know them?", "Tell me about Allen"]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["I think you need to play it safer than ever.", "No, I don’t. Care to explain?", "I-", "I don't know what to say.", "You will get out of here with or without that SOS.", "I still don’t know our possible ‘suspects’ for who put you in here.", "Who are they?", "Tell me about Jackson"]

            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
         
            rePopulateOptions1();

        }
        if(storyLineArr[count1] == "end7"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?","end9"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said house sale.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?","end9"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe, but you should tell me about Jackson first." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me, but there's still Jackson."]
            
            option2Arr = tempOpt2
            
        
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
         
            rePopulateOptions1();
        }

        if(storyLineArr[count1] == "end8"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?","finding way out(allen)"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said 'house sale'.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe..." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me..."]
            
            option2Arr = tempOpt2
            
         
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
         
            rePopulateOptions1();
        }
        
        if(storyLineArr[count1] == "end9"){
            
            let tempStoryLineArr = ["What do you want to know first about him?", "He designs the layout, figures out the materials, and tells us building limitations.", "Yup, we work pretty closely together too. The one thing about him is he get’s very defensive about his position…", "He thinks that *we* think his job isn't as valuable or requires less skill. He’s very sensitive about it.", "There was this one time he said something…", "It was a long day and we were arguing over why he had to find a way to accommodate an energy source.", "And he said, ‘Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there.","finding way out(jackson)"]
            
            storyLineArr = tempStoryLineArr
            
            let tempStoryLineArr2 = ["","He’s alright. He’s a kind of architect. You know, the design, the materials, the limitations, all that.", "Yeah, and I know it’s not enough proof that he put me in here, but he’s always very defensive about his position.", "There’s always that undercurrent. He feels his work is less valued than mine or Allen’s. ", "One instance stands out to me…", "Everyone was exhausted, and I was telling Jackson why his design just wouldn't work.", "And he said, Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there."]
            
            storyLineArr2 = tempStoryLineArr2
            
            let tempOption1Arr = ["What is there to know about him?", "Ooh, an artist.", "Defensive?", "Do you have any proof or is it just a feeling?", "What?", "…", "…", "That sounds exactly like he’s threatening to inject you with the chip."]
            
            option1Arr = tempOption1Arr
            
            let tempOption2Arr = ["Just tell me what he's like.", "And you work pretty closely with him too?", "All the time?", "Any instances that stand out to you?", "Yeah?", "…", "…", "I still don't know. We’ll have to think about it some more",""]
            
            option2Arr = tempOption2Arr
            
           
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
       
            rePopulateOptions1();
            
            
            
        }

        if(storyLineArr[count1] == "opt1A"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?","end9"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said 'house sale'.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe, but you should tell me about Jackson first." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me, but there's still Jackson."]
            
            option2Arr = tempOpt2
            
        
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
          
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "allentojack"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said 'house sale'.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe..." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me..."]
            
            option2Arr = tempOpt2
            
         
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
          
            rePopulateOptions1();
        }

        if(storyLineArr[count1] == "allentojack2"){
            
            let tempStoryLineArr = ["What do you want to know first about him?", "He designs the layout, figures out the materials, and tells us building limitations.", "Yup, we work pretty closely together too. The one thing about him is he get’s very defensive about his position…", "He thinks that *we* think his job isn't as valuable or requires less skill. He’s very sensitive about it.", "There was this one time he said something…", "It was a long day and we were arguing over why he had to find a way to accommodate an energy source.", "And he said, ‘Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there.","finding way out(jackson)"]
            
            storyLineArr = tempStoryLineArr
            
            let tempStoryLineArr2 = ["","He’s alright. He’s a kind of architect. You know, the design, the materials, the limitations, all that.", "Yeah, and I know it’s not enough proof that he put me in here, but he’s always very defensive about his position.", "There’s always that undercurrent. He feels his work is less valued than mine or Allen’s. ", "One instance stands out to me…", "Everyone was exhausted, and I was telling Jackson why his design just wouldn't work.", "And he said, Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there."]
            
            storyLineArr2 = tempStoryLineArr2
            
            let tempOption1Arr = ["What is there to know about him?", "Ooh, an artist.", "Defensive?", "Do you have any proof or is it just a feeling?", "What?", "…", "…", "That sounds exactly like he’s threatening to inject you with the chip."]
            
            option1Arr = tempOption1Arr
            
            let tempOption2Arr = ["Just tell me what he's like.", "And you work pretty closely with him too?", "All the time?", "Any instances that stand out to you?", "Yeah?", "…", "…", "I still don't know. We’ll have to think about it some more",""]
            
            option2Arr = tempOption2Arr
          
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
         
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "finding way out(jackson)"){
            let temp = ["Well, we have to get this code to the right place now.", "Well, if the override code is here that means the actual system is at the other light.", "The worst that could happen is my senses getting so overwhelmed that I become essentially brain dead… ", "But then again, I could become completely restored to my body as good as new!", "I guess great minds do think alike!", "It shouldn’t take too long. I feel pretty familiar with this place now…and who knows how much longer I can be in here.", "I’m basically here, my eyes just need to adjust..","jackson cont"]
            
            storyLineArr = temp
            
            let temp2 = ["","Well, if the override code is here that means the actual system is at the other light. By inputting the code, this will disable the chip in my brain and allow me to wake up.", "No. But the worst that could happen is my senses getting so overwhelmed that I become essentially brain dead…", "You know what would be even cooler? If it worked and I get back into my body!", "I’m going to assume that was an insensitive though well timed joke.", "Very close. My speed is aided by both familiarity and minor panic.", "Yeah, yeah I’m basically here. My eyes just need to adjust… "]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["Where would that be?", "You'll be okay afterwards ?", "Oh…?", "Let’s aim for that instead.", "Will it take long to get to the other light?", "Tell me when you’re there.", "Do you see something?"]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What are you doing with it again?", "Are you sure this will work?", "Cool", "I’m thinking option 1…", "How close are you to the other light?", "You better hurry up.", "Is it another computer?"]
            
            option2Arr = tempOpt2
            
         
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
          
            rePopulateOptions1();
            
        }
        if(storyLineArr[count1] == "finding way out(allen)"){
            let temp = ["Well, we have to get this code to the right place now.", "Well, if the override code is here that means the actual system is at the other light.", "The worst that could happen is my senses getting so overwhelmed that I become essentially brain dead… ", "But then again, I could become completely restored to my body as good as new!", "I guess great minds do think alike!", "It shouldn’t take too long. I feel pretty familiar with this place now…and who knows how much longer I can be in here.", "I’m basically here, my eyes just need to adjust..","allen cont"]
            
            storyLineArr = temp
            
            let temp2 = ["","Well, if the override code is here that means the actual system is at the other light. By inputting the code, this will disable the chip in my brain and allow me to wake up.", "No. But the worst that could happen is my senses getting so overwhelmed that I become essentially brain dead…", "You know what would be even cooler? If it worked and I get back into my body!", "I’m going to assume that was an insensitive though well timed joke.", "Very close. My speed is aided by both familiarity and minor panic.", "Yeah, yeah I’m basically here. My eyes just need to adjust… "]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["Where would that be?", "You'll be okay afterwards ?", "Oh…?", "Let’s aim for that instead.", "Will it take long to get to the other light?", "Tell me when you’re there.", "Do you see something?"]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What are you doing with it again?", "Are you sure this will work?", "Cool", "I’m thinking option 1…", "How close are you to the other light?", "You better hurry up.", "Is it another computer?"]
            
            option2Arr = tempOpt2
            
         
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
            
        }
        if(storyLineArr[count1] == "allen cont"){
            let temp1 = ["How is this possible?", "No, I…I can see myself. My actual body, wherever I am.", "I don’t feel well…I think I’ll need a minute…", "No, no…thank you though. I really appreciate you looking out for me.", "Ok. It’s pretty dark so I can't see much, but the floor looks concrete. I’m on a blowup mattress too…how considerate.", "Besides looking like a generic serial killer’s basement, I’m gonna say no.", "No, but should I wait here in case the sick creep comes back?","get out allen"]
            
            storyLineArr = temp1
            
            let temp2 = ["I can’t believe it…", "It- it’s me. I see my actual body as it is in the real world.", "Sorry, I’m just shocked. Um…I can’t really see anything, but I’m definitely not at my lab.", "I really can't think right now!", "Ok. I’m fine now. Let's see, it’s dark…and I’m on one of those cheap blow up mattresses. Classy. ", "No, but the fact that I can see myself means there must be a camera pointed at me…God that's so creepy. Should I wait for this creep to show up?"]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["What do you see?", "Are you ok?", "I can give you a moment if you need…", "Okay, whenever you’re ready.", "Delicate sensibilities aside, does it look at all familiar?", "Do you have any idea who it might be?", "You don't have time, get out of here."]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What is it?", "What's happening?", "Can you see anything?", "…", "Could there be someone else?", "I'm sorry...", "Maybe we could wait a bit, and see who we’re dealing with."]
            
            option2Arr = tempOpt2
            print("IN ALLEN CONT 1")
            
        
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
          
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jackson cont"){
            let temp1 = ["How is this possible?", "No, I…I can see myself. My actual body, wherever I am.", "I don’t feel well…I think I’ll need a minute…", "No, no…thank you though. I really appreciate you looking out for me.", "Ok. It’s pretty dark so I can't see much, but the floor looks concrete. I’m on a blowup mattress too…how considerate.", "Besides looking like a generic serial killer’s basement, I’m gonna say no.", " No, but should I wait here in case the sick creep comes back?","get out jack"]
            
            storyLineArr = temp1
            
            let temp2 = ["I can’t believe it…", "It- it’s me. I see my actual body as it is in the real world.", "Sorry, I’m just shocked. Um…I can’t really see anything, but I’m definitely not at my lab.", "I really can't think right now!", "Ok. I’m fine now. Let's see, it’s dark…and I’m on one of those cheap blow up mattresses. Classy. ", "No, but the fact that I can see myself means there must be a camera pointed at me…God that's so creepy.", "Should I wait for this creep to show up?"]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["What do you see?", "Are you ok?", "I can give you a moment if you need…", "Okay, whenever you’re ready.", "Delicate sensibilities aside, does it look at all familiar?", "Do you have any idea who it might be?", "You don't have time, get out of here."]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What is it?", "What's happening?", "Can you see anything?", "…", "Could there be someone else?", "I'm sorry...", "Maybe we could wait a bit, and see who we’re dealing with."]
            
            print("IN JACKSON CONT 1")
            
            option2Arr = tempOpt2
            
            
          
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
         
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "get out jack"){
            let temp = ["I just need to find a place to input the code.", "What choice do I have?", "Thank you for the vote of confidence…The code is in, I just press ‘enter’ now.", "Here goes nothing…","jack outside"]
            
            storyLineArr = temp
            let temp2 = ["", "Hopefully I’ll be back in my body, and we’ll catch who did this.", "More like if this works…The code is in, I just press ‘enter’ now.", "See you on the other side…"]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["You’re sure about this?", "Fingers crossed", "What are you waiting for?", "Good luck"]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What happens afterwards?", "If you say so.", "You know what to do.", "…"]
            
            option2Arr = tempOpt2
            
           
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            
            rePopulateOptions1();
            
        }
        if(storyLineArr[count1] == "get out allen"){
            let temp = ["I just need to find a place to input the code.", "What choice do I have?", "Thank you for the vote of confidence…The code is in, I just press ‘enter’ now.", "Here goes nothing…","allen outside"]
            
            storyLineArr = temp
            let temp2 = ["", "Hopefully I’ll be back in my body, and we’ll catch who did this.", "More like if this works…The code is in, I just press ‘enter’ now.", "See you on the other side…"]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["You’re sure about this?", "Fingers crossed", "What are you waiting for?", "Good luck"]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What happens afterwards?", "If you say so.", "You know what to do.", "…"]
            
            option2Arr = tempOpt2
            
         
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
        
            rePopulateOptions1();
            
        }
        if(storyLineArr[count1] == "allen outside"){
            let temp = ["qu%^&*(haf47", "…", "I’m here… I’m here…", "Thank quality engineering and the hours I put into this, give me a second please.", "The chip in my brain must still have a connection set up with your phone. But I can’t just lie here, what should I do?","allen break"]
            storyLineArr = temp
            let temp2 = ["", "hj%^Bk(*(36Jh", "I’m here… I’m here…", "Yeah…just give me a minute, it’s a bit disorienting jumping out of your mind and into someone’s basement.", "The chip in my brain still has a connection with your phone. But I can’t just lie here, what should I do?"]
            storyLineArr2 = temp2
            let tempOpt = ["Jane?", "Are you OK?", "Thank god…", "How are we still talking?", "Don’t move…just look."]
            option1Arr = tempOpt
            let tempOpt2 = ["…", "Can you hear me?", "Finally!", "Do you still have your phone on you?", "Get up and look around for clues."]
            option2Arr = tempOpt2
           
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jack outside"){
            let temp = ["qu%^&*(haf47", "…", "I’m here… I’m here…", "Thank quality engineering and the hours I put into this, give me a second please.", "The chip in my brain must still have a connection set up with your phone. But I can’t just lie here, what should I do?","jack break"]
            storyLineArr = temp
            let temp2 = ["", "hj%^Bk(*(36Jh", "I’m here… I’m here…", "Yeah…just give me a minute, it’s a bit disorienting jumping out of your mind and into someone’s basement.", "The chip in my brain still has a connection with your phone. But I can’t just lie here, what should I do?"]
            storyLineArr2 = temp2
            let tempOpt = ["Jane?", "Are you OK?", "Thank god…", "How are we still talking?", "Don’t move…just look."]
            option1Arr = tempOpt
            let tempOpt2 = ["…", "Can you hear me?", "Finally!", "Do you still have your phone on you?", "Get up and look around for clues."]
            option2Arr = tempOpt2
          
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jack break"){
            let temp = ["You’re right…whoever put me here might be watching me now.", "This room seems pretty big…There’s a light on me, there's the camera pointed at me. It’s too dark to see anymore without moving.","jack SOS"]
            storyLineArr = temp
            let temp2 = ["","No, it’s a big cellar…Cement walls, floor, and stairs. Pretty bare. It’s too dark to see anymore without moving."]
            storyLineArr2 = temp2
            let tempOpt = ["What do you see?", "I guess you have to get up then."]
            option1Arr = tempOpt
            let tempOpt2 = ["Is anything familiar?", "Well, rise and shine, sunshine."]
            option2Arr = tempOpt2
            
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
          
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "allen break"){
            let temp = ["You’re right…whoever put me here might be watching me now.", "This room seems pretty big…There’s a light on me, there's the camera pointed at me. It’s too dark to see anymore without moving.","allen SOS"]
            storyLineArr = temp
            let temp2 = ["","No, it’s a big cellar…Cement walls, floor, and stairs. Pretty bare. It’s too dark to see anymore without moving."]
            storyLineArr2 = temp2
            let tempOpt = ["What do you see?", "I guess you have to get up then."]
            option1Arr = tempOpt
            let tempOpt2 = ["Is anything familiar?", "Well, rise and shine, sunshine."]
            option2Arr = tempOpt2
          
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jack SOS"){
            if(sendSOS == true){
                print("sent SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…something doesn’t feel right. ", "Something’s really wrong…", "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake??", "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr = temp
                
                let temp2 = ["", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…it just seems weird.", "Really, I feel strange.",  "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake?!",  "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr2 = temp2
                
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Well, keep looking.", "What do you mean?", "Why? Do you hear anything?", "Who?", "Who are you talking to?", "Oh god…", "What?!", "Can we still fix this?", "Hello?",".....","....."]
                option1Arr = tempOpt
                
                let tempOpt2 = ["There’s no identification anywhere?", "Are you there?!", "Don’t let a glitchy lamp stop you", "You’re being paranoid.", "Is something going on?", "Jane?", "What’s happening?", "I’m so sorry..", "You’re still in my phone?", "There must be something we can do!", "Jane!","",""]
                option2Arr = tempOpt2
               
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
               
                rePopulateOptions1();
            }else if(sendSOS == false){
                print("DID NOT SEND SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something. ", "There’s no time…Here!", "I don’t know…it’s too dark. I think the noise came from above.", "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything.","jack search"]
                storyLineArr = temp
                let temp2 = ["", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something.", "Okay, I'm in a cabinet right now.", "I don’t know…it’s too dark. I think the noise came from above.",  "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything."]
                storyLineArr2 = temp2
                
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Get back on the mattress.", "Do you see anyone?", "Well, who has a house that has a basement?", "Where?", "Get out of there and start searching for clues!","You got this"]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Do you hear something?", "Hide.", "Is anything there?", "Does Allen or Jackson have a basement?", "How?", "Then either Jackson or Allen is probably still there!","Get Going"]
                option2Arr = tempOpt2
              
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
               
                rePopulateOptions1();
            }
        }
        if(storyLineArr[count1] == "allen SOS"){
            if(sendSOS == true){
                print("sent SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…something doesn’t feel right. ", "Something’s really wrong…", "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake??", "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr = temp
                
                let temp2 = ["", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…it just seems weird.", "Really, I feel strange.",  "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake?!",  "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr2 = temp2
                
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Well, keep looking.", "What do you mean?", "Why? Do you hear anything?", "Who?", "Who are you talking to?", "Oh god…", "What?!", "Can we still fix this?", "Hello?",".....","....."]
                option1Arr = tempOpt
                
                let tempOpt2 = ["There’s no identification anywhere?", "Are you there?!", "Don’t let a glitchy lamp stop you", "You’re being paranoid.", "Is something going on?", "Jane?", "What’s happening?", "I’m so sorry..", "You’re still in my phone?", "There must be something we can do!", "Jane!","",""]
                option2Arr = tempOpt2
               
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
              
                rePopulateOptions1();
            }else if(sendSOS == false){
                print("DID NOT SEND SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something. ", "There’s no time…Here!", "I don’t know…it’s too dark. I think the noise came from above.", "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything.","allen search"]
                storyLineArr = temp
                let temp2 = ["", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something.", "Okay, I'm in a cabinet right now.", "I don’t know…it’s too dark. I think the noise came from above.",  "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything."]
                storyLineArr2 = temp2
                
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Get back on the mattress.", "Do you see anyone?", "Well, who has a house that has a basement?", "Where?", "Get out of there and start searching for clues!","You got this"]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Do you hear something?", "Hide.", "Is anything there?", "Does Allen or Jackson have a basement?", "How?", "Then either Jackson or Allen is probably still there!","Get Going"]
                option2Arr = tempOpt2
                
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
                rePopulateOptions1();
            }
        }
        if(storyLineArr[count1] == "allen search"){
            let temp = ["Okay I’m at my lab. It’s almost morning though, so I only have time to check one of their labs.","jack2"]
            storyLineArr = temp
            let temp2 = [""]
            storyLineArr2 = temp2
            let tempOpt = ["Look at Allen’s lab."]
            option1Arr = tempOpt
            let tempOpt2 = ["Look at Jackson’s lab."]
            option2Arr = tempOpt2
          
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jack search"){
            let temp = ["Okay I’m at my lab. It’s almost morning though, so I only have time to check one of their labs.","jack2"]
            storyLineArr = temp
            let temp2 = [""]
            storyLineArr2 = temp2
            let tempOpt = ["Look at Allen’s lab."]
            option1Arr = tempOpt
            let tempOpt2 = ["Look at Jackson’s lab."]
            option2Arr = tempOpt2
          
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
            
        }

        if(storyLineArr[count1] == "jack2"){
            //ALEN LAB
            let temp = ["You’re right. Those blueprints do make him seem the most suspicious.", "Urgh let me get through his login…okay. Documents, spreadsheets, nothing special…", "Let’s see, just ordinary office stuff. Huh, I didn't know Allen was a Brony though.", "I don't think it’s him. There’s nothing here.", "It might be. It must be.", "Somebody’s coming. I have to choose now. Who is it?", "Ok.", "I will.", "(end game)"]
            
            storyLineArr = temp
            let temp2 = ["You’re right. Those blueprints do make him seem the most suspicious.","Okay there’s some papers, pencils, some photos…", "Let’s see, just ordinary office stuff. Huh, I didn't know Allen was a Brony though.", "No, as weird as those blueprints were, there just isn’t any evidence.", "Somebody’s coming. I have to choose now. Who is it?", "Ok.", "I do.", "(end game)"]
            storyLineArr2 = temp2

            let tempOpt = ["Start with his computer", "Check somewhere else?", "…", "It’s Allen.", "Allen", "Take care of him","....","...."]
            option1Arr = tempOpt
            let tempOpt2 = ["Start with his desk", "Search a little more.", "You could have missed something.", "It’’s Jackson.", "Jackson.", "You know what to do.",".....",""]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }

        
        if(storyLineArr[count1] == "(end game)"){
            let temp = ["Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!"]
            storyLineArr = temp
            let temp2 = ["Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!"]
            storyLineArr2 = temp2
            let tempOpt = ["Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu"]
            option1Arr = tempOpt
            let tempOpt2 = ["","","","","","","",""]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
            resetProgress()
        }


        if(storyLineArr[count1] != "end"){
            rePopulateOptions1();
            self.StoryLine.text = storyLineArr[count1];
        }
            }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////BUTTON 2//////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    @IBAction func Option2Press(sender: AnyObject) {
        print(count1)
        //A1
        if(storyLineArr2[count1] == "Well they’ll only know that someone’s in trouble…but at least they’ll be looking!"){
            print("SENDSOS now true")
            sendSOS = true
        }
        if(storyLineArr[count1] == "I guess, but I feel like we can take some chances at this point."){
            print("SendSOS still false")
            sendSOS = false
        }
        if(storyLineArr[count1] == "Hello?"){
            let A1 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A1, forKey: "A1")
            defaults.synchronize()
            print("TRUE")
        }
        //A2
        if(storyLineArr[count1] == "Okay, I’m trusting you on this! If it ends up being a cannibal cookout…"){
            let A2 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A2, forKey: "A2")
            defaults.synchronize()
            print("TRUE")
        }
        //A3
        if(storyLineArr2[count1] == "It really doesn't matter does it? Wish I could tell my boss that sometimes…"){
            let A3 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A3, forKey: "A3")
            defaults.synchronize()
            print("A3 Saved")
            print("TRUE")
        }
        //A4
        if(storyLineArr[count1] == "Okay I’ll rest my weary bones for a bit"){
            let A4 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A4, forKey: "A4")
            defaults.synchronize()
            print("A4 Saved")
            print("TRUE")
        }
        //A5
        if(storyLineArr[count1] == "You’re right, I’ll want to find a way out of here as soon as possible."){
            let A5 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A5, forKey: "A5")
            defaults.synchronize()
            print("A5 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Jane is gone"){
            let A6 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A6, forKey: "A6")
            defaults.synchronize()
            print("A6 Saved")
            print("TRUE")
        }
        //JACKSON
        if(storyLineArr[count1] == "What do you want to know first about him?"){
            let A7 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A7, forKey: "A7")
            defaults.synchronize()
            print("A7 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Where do I start?"){
            let A8 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A8, forKey: "A8")
            defaults.synchronize()
            print("A8 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Well they’ll only know that someone’s in trouble…but at least they’ll be looking!"){
            let A9 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A9, forKey: "A9")
            defaults.synchronize()
            print("A9 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "I guess, but I feel like we can take some chances at this point."){
            let A10 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A10, forKey: "A10")
            defaults.synchronize()
            print("A10 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "I’m here… I’m here…"){
            let A11 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A11, forKey: "A11")
            defaults.synchronize()
            print("A11 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Let’s see, just ordinary office stuff. Huh, I didn't know Allen was a Brony though."){
            let A12 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A12, forKey: "A12")
            defaults.synchronize()
            print("A12 Saved")
            print("TRUE")
        }
        if(option1Arr[count1] == "It’s Allen."){
            let A13 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A13, forKey: "A13")
            defaults.synchronize()
            print("A13 Saved")
            print("TRUE")
        }
        if(option1Arr[count1] ==  "It’s him"){
            let A14 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A14, forKey: "A14")
            defaults.synchronize()
            print("A14 Saved")
            print("TRUE")
        }
        if(storyLineArr[count1] == "Thank you for Playing!"){
            let A15 = true
            let defaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(A15, forKey: "A15")
            defaults.synchronize()
            print("A15 Saved")
            print("TRUE")
        }

        saveInt = saveInt + 1
        count2 = count2 + 1
        print("|", count2,  "| : Count2 in OPTION 2")
        vibrate();
        count1 = count1 + 1
        print("|",count1, "| -  COUNT 1 in OPTION 2")

        if(storyLineArr[count1] == "end"){
            saveDefaults();
            print("IN OPTION2 BREAK")
            let storyLine3Arr = [ "", "I am not nor will I ever be authorized to tell you anything about my job other than that it has great healthcare.", "That’s probably for the best. Meanwhile, I think I’m getting closer.","a1"]
            
            storyLineArr = storyLine3Arr
            
            let storyLine3Arr2 = [ "It really doesn't matter does it? Wish I could tell my boss that sometimes…", "I can’t tell if you’re being sarcastic, but I do actually love my job! I just can’t tell you anything about it under penalty of up to 10 years imprisonment", "I’m getting closer, but it’ll be a while before I get there. Do you think I should take a break?","a1"]
            
            storyLineArr2 = storyLine3Arr2
            
            let option1Arr3 = ["What do you do?", "Jeez, I guess we’ll just stick to the situation at hand then?", "Maybe you should take a break."]
            
            option1Arr = option1Arr3
            
            let option2Arr3 = ["Sounds like you like your job a lot.", "Well…How about you tell me how close you are to that light instead?", "You have to keep going."]
            
            option2Arr = option2Arr3
            if(saveInt == 1){
                saveInt = 6;
                saveDefaults()
              
            }
        
            saveDefaults();
            
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            savedAlert();
            rePopulateOptions1();
        }
        
        if(storyLineArr[count1] == "end1"){
            print("in array")
            let storyLine2Arrb = ["You’re right, I’ll want to find a way out of here as soon as possible.", "Why are you asking…", "Fine, I do have a ‘theory’. ", "So you know my work is classified ", "That’s not the worst description, but my job is to develop new transportation tech.", "Before I got here, I was working on new type of transport that would utilize virtual reality.", "It’s an injectable chip that’s supposed to bring your mind into a program…a computer’s software", "Or a phone.", "I hope not…the point of this is to make people think they're living their normal lives while under complete control", "Whoever put me in here must have messed up the tag…leading me here", "Heading towards the light is my only chance of getting out before I’m absorbed into the code", "Just help me find the codes that will shut this down…and find out who put me here.","end2"]
            
            storyLineArr = storyLine2Arrb
            
            let storyLine2Arr2b = ["You’re right, I’ll want to find a way out of here as soon as possible.","I am not sure what you mean...", "I guess I’d have had to tell you more eventually", "I already told you that my job is very…secretive.  ", "Okay, okay! I develop highly advanced transportation technology.", "As in ‘hijacking people’s sense of reality’ tech", "It’s an injectable chip that transports your mind to a program…into a computer’s software", "Possibly.",  "No…the point of this is to make people think they're living their normal lives while under complete control", "Because whoever put me here made a mistake in the machine tag, and put me in your phone.", "Heading towards the light is my only chance of getting out before I’m absorbed into the code", "There should be codes at different lights that will let me out…and find out who put me here"]
            
            storyLineArr2 = storyLine2Arr2b
            
            let option1Arrb = ["So you really have no idea where you are *or* how you got there?", "You don’t even have a theory?", "Go on…", "Right, secret government agent and all that.", "…And?", "I still don’t know what this has to do with anything.", "Or possibly a phone?", "Does that mean someone put you in here?", "So how come you don’t think this is normal?", "What do we do?", "How can I help?","You should find a way out first."]
            
            option1Arr = option1Arrb
            
            let option2Arrb = ["I still feel like you know more than you're letting on.", "I'm saying you should be more honest if you want my help", "Okay...","Just tell me already!", "What sort of ‘tech’ are we talking here?", "You’ll need to explain some more.", "So you’re saying that you’re inside my phone.", "Could something have gone wrong?", "Why are you in my phone then?", "How are you supposed to get out?", "What will be at the lights?", "You should find out who did this first."]
            
            option2Arr = option2Arrb
            if(saveInt == 1){
                saveInt = 9
                saveDefaults();
            }
            saveDefaults()
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            savedAlert();
            rePopulateOptions1();
        }

        
        //Branch 1A2A: Way Out
        if(storyLineArr[count1] == "a1"){
            print("in array")
            let storyLine2Arrb = ["You’re right, I’ll want to find a way out of here as soon as possible.", "Why are you asking…", "Fine, I do have a ‘theory’. ", "So you know my work is classified ", "That’s not the worst description, but my job is to develop new transportation tech.", "Before I got here, I was working on new type of transport that would utilize virtual reality.", "It’s an injectable chip that’s supposed to bring your mind into a program…a computer’s software", "Or a phone.", "I hope not…the point of this is to make people think they're living their normal lives while under complete control", "Whoever put me in here must have messed up the tag…leading me here", "Heading towards the light is my only chance of getting out before I’m absorbed into the code", "Just help me find the codes that will shut this down…and find out who put me here.","end2"]
            
            storyLineArr = storyLine2Arrb
            
            let storyLine2Arr2b = ["You’re right, I’ll want to find a way out of here as soon as possible.","I am not sure what you mean...", "I guess I’d have had to tell you more eventually", "I already told you that my job is very…secretive.  ", "Okay, okay! I develop highly advanced transportation technology.", "As in ‘hijacking people’s sense of reality’ tech", "It’s an injectable chip that transports your mind to a program…into a computer’s software", "Possibly.",  "No…the point of this is to make people think they're living their normal lives while under complete control", "Because whoever put me here made a mistake in the machine tag, and put me in your phone.", "Heading towards the light is my only chance of getting out before I’m absorbed into the code", "There should be codes at different lights that will let me out…and find out who put me here","end2"]
            
            storyLineArr2 = storyLine2Arr2b
            
            let option1Arrb = ["So you really have no idea where you are *or* how you got there?", "You don’t even have a theory?", "Go on…", "Right, secret government agent and all that.", "…And?", "I still don’t know what this has to do with anything.", "Or possibly a phone?", "Does that mean someone put you in here?", "So how come you don’t think this is normal?", "What do we do?", "How can I help?","You should find a way out first."]
            
            option1Arr = option1Arrb
            
            let option2Arrb = ["I still feel like you know more than you're letting on.", "I'm saying you should be more honest if you want my help", "Okay...","Just tell me already!", "What sort of ‘tech’ are we talking here?", "You’ll need to explain some more.", "So you’re saying that you’re inside my phone.", "Could something have gone wrong?", "Why are you in my phone then?", "How are you supposed to get out?", "What will be at the lights?", "You should find out who did this first."]
            
            option2Arr = option2Arrb
            if(saveInt == 1){
                saveInt = 9
                saveDefaults();
            }
            saveDefaults()
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            savedAlert();
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "a1d"){
            count1 = 0
            count2 = 0
            let saveArr = ["I’m getting closer, but it’ll be a while before I get there. Do you think I should take a break?","a1"]
            storyLineArr = saveArr
            
            let saveOption1 = ["Maybe you should take a break"]
            option1Arr = saveOption1
            
            let saveOption2 = ["You might as well go left"]
            option2Arr = saveOption2
            saveInt = 8
            rePopulateOptions1()
            
        }
        
        
         //Branch 1A2B: Who did it?
         if(storyLineArr[count1] == "end2"){
            
            let storyLine2Arr2a = ["The scary thing is that I can’t think of anyone who’d want to do this to me.", "That's the thing! There isn't really any room for emotional banter. We share our data and progress and move on!", "That's as good a motive as any","end3"]
            
            storyLineArr = storyLine2Arr2a
            
            let storyLine2Arr2b = ["The scary thing is that I can’t think of anyone who’d want to do this to me.","That's my whole job! I just don't really think about whether or not my coworkers want to kill me!", "THERE ISN’T! I’m too wrapped up in my own work to pay attention to anyone else!","end3"]
            
            storyLineArr2 = storyLine2Arr2b
            
            let option1Arr2a = ["Whoever it was must have felt pretty strongly…", "Jealousy, perhaps?", "So we’re looking for somebody who envies your raw talent and beauty."]
            
            option1Arr = option1Arr2a
            
            let option1Arr2ab = ["Think!", "There has to be SOMEBODY you can think of!", "Maybe that’s it?"]
            
            option2Arr = option1Arr2ab
            
            if(saveInt == 1){
                saveInt = 26
                saveDefaults();
            }
            saveDefaults()
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            savedAlert();
            rePopulateOptions1();
        
        }
        if(storyLineArr[count1] == "end3"){
            
            let temp1 = ["…What do you mean?", "I never thought it bothered people that much…", "I work with 2 people…Jackson and Allen", "end4"]
            
            storyLineArr = temp1
            
            let temp2 = ["…What do you mean?", "I didn’t realise people tried to blast their splinters into a phone","I work with 2 people…Jackson and Allen","end4"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["Maybe you blew someone off one too many times", "Who could it have bothered?", "Tell me about Jackson"]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["You got pretty deep under someone’s skin.", "How many people do you work with?", "Tell me about Allen"]
            
            option2Arr = tempOpt2
            if(saveInt == 1){
                saveInt = 24
                saveDefaults();
            }
            saveDefaults()
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            savedAlert();
            rePopulateOptions1();
        }
        
        if(storyLineArr[count1] == "end4"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?","allentojack2"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said 'house sale'.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe, but you should tell me about Jackson first." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me, but there's still Jackson."]
            
            option2Arr = tempOpt2
            if(saveInt == 1){
                saveInt = 27
                saveDefaults()
            }
            saveDefaults()
            savedAlert()
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "end5"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?","end9"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said 'house sale'.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe, but you should tell me about Jackson first." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me, but there's still Jackson."]
            
            option2Arr = tempOpt2
            
           
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "end6"){
            
            let temp1 = ["", "We won’t unless we wait here and see.", "Okay…there are two people: Allen or Jackson.", "They’re the two people I mainly work with","opt1A"]
            
            storyLineArr = temp1
            
            let temp2 = ["Okay I’m sending out an SOS right now…","Well they’ll only know that someone’s in trouble…but at least they’ll be looking!", "There are two people: Allen or Jackson", "They’re the two people I mainly work with."]
            
            storyLineArr2 = temp2
            
            
            let tempOpt1 = ["How will we know if anyone receives it?", "Well, we still don’t know who might have done this to you.", "How do you know them?", "Tell me about Allen"]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What can someone do if they receive it?", "You still have to tell me who you think put you in here..", "Who are they?", "Tell me about Jackson"]

            option2Arr = tempOpt2
            
            if(saveInt == 1){
                saveInt = 33
                saveDefaults()
            }
            saveDefaults()
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            savedAlert();
            rePopulateOptions1();
        }

        if(storyLineArr[count1] == "end7" || storyLineArr[count1] == "opt1A" ){
            
            let tempStoryLineArr = ["What do you want to know first about him?", "He designs the layout, figures out the materials, and tells us building limitations.", "Yup, we work pretty closely together too. The one thing about him is he get’s very defensive about his position…", "He thinks that *we* think his job isn't as valuable or requires less skill. He’s very sensitive about it.", "There was this one time he said something…", "It was a long day and we were arguing over why he had to find a way to accommodate an energy source.", "And he said, ‘Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there.","There's still Allen...","end8"]
            
            storyLineArr = tempStoryLineArr
            
            let tempStoryLineArr2 = ["What do you want to know first about him?","He’s alright. He’s a kind of architect. You know, the design, the materials, the limitations, all that.", "Yeah, and I know it’s not enough proof that he put me in here, but he’s always very defensive about his position.", "There’s always that undercurrent. He feels his work is less valued than mine or Allen’s. ", "One instance stands out to me…", "Everyone was exhausted, and I was telling Jackson why his design just wouldn't work.", "And he said, Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there.","There's still Allen...","end8"]
            
            storyLineArr2 = tempStoryLineArr2
            
            let tempOption1Arr = ["What is there to know about him?", "Ooh, an artist.", "Defensive?", "Do you have any proof or is it just a feeling?", "What?", "…", "…", "That sounds exactly like he’s threatening to inject you with the chip.","Tell me about him"]
            
            option1Arr = tempOption1Arr
            
            let tempOption2Arr = ["Just tell me what he's like.", "And you work pretty closely with him too?", "All the time?", "Any instances that stand out to you?", "Yeah?", "…", "…", "I still don't know. We’ll have to think about it some more. Tell me about Allen","Okay"]
            
            option2Arr = tempOption2Arr
            
            
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
            
            
            
        }
        if(storyLineArr[count1] == "end8"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?","finding way out(allen)"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said 'house sale'.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe..." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me..."]
            
            option2Arr = tempOpt2
            
         
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "end9"){
            
            let tempStoryLineArr = ["", "He designs the layout, figures out the materials, and tells us building limitations.", "Yup, we work pretty closely together too. The one thing about him is he get’s very defensive about his position…", "He thinks that *we* think his job isn't as valuable or requires less skill. He’s very sensitive about it.", "There was this one time he said something…", "It was a long day and we were arguing over why he had to find a way to accommodate an energy source.", "And he said, ‘Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there.","finding way out(jackson)"]
            
            storyLineArr = tempStoryLineArr
            
            let tempStoryLineArr2 = ["What do you want to know first about him?","He’s alright. He’s a kind of architect. You know, the design, the materials, the limitations, all that.", "Yeah, and I know it’s not enough proof that he put me in here, but he’s always very defensive about his position.", "There’s always that undercurrent. He feels his work is less valued than mine or Allen’s. ", "One instance stands out to me…", "Everyone was exhausted, and I was telling Jackson why his design just wouldn't work.", "And he said, Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there.","finding way out(jackson)"]
            
            storyLineArr2 = tempStoryLineArr2
            
            let tempOption1Arr = ["What is there to know about him?", "Ooh, an artist.", "Defensive?", "Do you have any proof or is it just a feeling?", "What?", "…", "…", "That sounds exactly like he’s threatening to inject you with the chip."]
            
            option1Arr = tempOption1Arr
            
            let tempOption2Arr = ["Just tell me what he's like.", "And you work pretty closely with him too?", "All the time?", "Any instances that stand out to you?", "Yeah?", "…", "…", "I still don't know. We’ll have to think about it some more",""]
            
            option2Arr = tempOption2Arr
            
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
            
            
            
        }
        if(storyLineArr[count1] == "allentojack"){
            
            let temp1 = ["Where do I start?", "He’s a math guy, calculations, logistics…we work pretty closely together.", "What else can I say? He’s smart, doesn't talk about much outside of what we work on. But there was this one time…", "Well, all of us have secure logins to our profiles and desktops on any computer in the facility…", "Jeez calm down! You’re like a bad Clue player…but kind of the opposite happened…", "Hey let me finish the story first! He left his account open on the computer in my lab, and I was going to close it but..", "I saw a document that said “house sale on the desktop", "We’re not allowed to know each other’s addresses and I was curious!", "It wasn't about a house…it was blueprints of our machine, but in another language", "He seemed shocked when he saw me but, it could have been something else right?"]
            
            storyLineArr = temp1
            
            let temp2 = ["Where do I start?","He’s smart. He does the math, you know, all the calculations, parameters. We have to always check in with each other.", "I wouldn't think so…He keeps to himself when we’re not talking about work. But…", "No! We all have secure logins on any computer in the facility…", "No! Well not really…kinda?", "He left his account open on my lab computer, and I would’ve closed it but something caught my eye..", "There was a document that said 'house sale'.", "We’re not supposed to know eat other’s addresses, it was innocent curiosity!", "It wasn't about a house…it was blueprints of our machine, but in another language", "Yeah, he walked in. It was painfully awkward but, I’m sure there are other explanations?"]
            
            storyLineArr2 = temp2
            
            let tempOpt1 = ["What does he do?", "Any more details?", "What happened?", "Did he break into your profile?!", "And I thought you were supposed to be the good guy…", "What did you see?", "How does that make any sense.", "Curiosity killed the cat.", "And he caught you snooping on his suspicious blueprints.", "Maybe..." ]
            
            option1Arr = tempOpt1
            
            let tempOpt2 = ["What’s he like?", "Do you ever get on each other’s nerves?", "Did he threaten you?", "Did you break into his profile?!", "Why would you go into his computer?", "???", "What?", "So what, he caught you looking at his address?", "I can guess what happened.", "Sounds pretty incriminating to me..."]
            
            option2Arr = tempOpt2

            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "allentojack2"){
            
            let tempStoryLineArr = ["What do you want to know first about him?", "He designs the layout, figures out the materials, and tells us building limitations.", "Yup, we work pretty closely together too. The one thing about him is he get’s very defensive about his position…", "He thinks that *we* think his job isn't as valuable or requires less skill. He’s very sensitive about it.", "There was this one time he said something…", "It was a long day and we were arguing over why he had to find a way to accommodate an energy source.", "And he said, ‘Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there.","finding way out(jackson)"]
            
            storyLineArr = tempStoryLineArr
            
            let tempStoryLineArr2 = ["What do you want to know first about him?","He’s alright. He’s a kind of architect. You know, the design, the materials, the limitations, all that.", "Yeah, and I know it’s not enough proof that he put me in here, but he’s always very defensive about his position.", "There’s always that undercurrent. He feels his work is less valued than mine or Allen’s. ", "One instance stands out to me…", "Everyone was exhausted, and I was telling Jackson why his design just wouldn't work.", "And he said, Jane, you think my job is so much easier, and that I’m so much less skilled and useful than you, but it doesn't mean squat.", "I hope you enjoy living on that high horse in your head. Maybe one day you’ll get to stay there."]
            
            storyLineArr2 = tempStoryLineArr2
            
            let tempOption1Arr = ["What is there to know about him?", "Ooh, an artist.", "Defensive?", "Do you have any proof or is it just a feeling?", "What?", "…", "…", "That sounds exactly like he’s threatening to inject you with the chip."]
            
            option1Arr = tempOption1Arr
            
            let tempOption2Arr = ["Just tell me what he's like.", "And you work pretty closely with him too?", "All the time?", "Any instances that stand out to you?", "Yeah?", "…", "…", "I still don't know. We’ll have to think about it some more",""]
            
            option2Arr = tempOption2Arr
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        //From allen to Jack to copntinuation
        if(storyLineArr[count1] == "finding way out(jackson)"){
            let temp = ["Well, we have to get this code to the right place now.", "Well, if the override code is here that means the actual system is at the other light.", "The worst that could happen is my senses getting so overwhelmed that I become essentially brain dead… ", "But then again, I could become completely restored to my body as good as new!", "I guess great minds do think alike!", "It shouldn’t take too long. I feel pretty familiar with this place now…and who knows how much longer I can be in here.", "I’m basically here, my eyes just need to adjust..","jackson cont"]
            
            storyLineArr = temp
            
            let temp2 = ["Well, we have to get this code to the right place now.","Well, if the override code is here that means the actual system is at the other light. By inputting the code, this will disable the chip in my brain and allow me to wake up.", "No. But the worst that could happen is my senses getting so overwhelmed that I become essentially brain dead…", "You know what would be even cooler? If it worked and I get back into my body!", "I’m going to assume that was an insensitive though well timed joke.", "Very close. My speed is aided by both familiarity and minor panic.", "Yeah, yeah I’m basically here. My eyes just need to adjust… "]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["Where would that be?", "You'll be okay afterwards ?", "Oh…?", "Let’s aim for that instead.", "Will it take long to get to the other light?", "Tell me when you’re there.", "Do you see something?"]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What are you doing with it again?", "Are you sure this will work?", "Cool", "I’m thinking option 1…", "How close are you to the other light?", "You better hurry up.", "Is it another computer?"]
            
            option2Arr = tempOpt2
       
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
            
        }
        if(storyLineArr[count1] == "finding way out(allen)"){
            let temp = ["Well, we have to get this code to the right place now.", "Well, if the override code is here that means the actual system is at the other light.", "The worst that could happen is my senses getting so overwhelmed that I become essentially brain dead… ", "But then again, I could become completely restored to my body as good as new!", "I guess great minds do think alike!", "It shouldn’t take too long. I feel pretty familiar with this place now…and who knows how much longer I can be in here.", "I’m basically here, my eyes just need to adjust..","allen cont"]
            
            storyLineArr = temp
            
            let temp2 = ["Well, we have to get this code to the right place now.","Well, if the override code is here that means the actual system is at the other light. By inputting the code, this will disable the chip in my brain and allow me to wake up.", "No. But the worst that could happen is my senses getting so overwhelmed that I become essentially brain dead…", "You know what would be even cooler? If it worked and I get back into my body!", "I’m going to assume that was an insensitive though well timed joke.", "Very close. My speed is aided by both familiarity and minor panic.", "Yeah, yeah I’m basically here. My eyes just need to adjust… ","allen cont"]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["Where would that be?", "You'll be okay afterwards ?", "Oh…?", "Let’s aim for that instead.", "Will it take long to get to the other light?", "Tell me when you’re there.", "Do you see something?" ]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What are you doing with it again?", "Are you sure this will work?", "Cool", "I’m thinking option 1…", "How close are you to the other light?", "You better hurry up.", "Is it another computer?"]
            
            option2Arr = tempOpt2
  
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
           
            rePopulateOptions1();
            
        }
        if(storyLineArr[count1] == "allen cont"){
            let temp1 = ["How is this possible?", "No, I…I can see myself. My actual body, wherever I am.", "I don’t feel well…I think I’ll need a minute…", "No, no…thank you though. I really appreciate you looking out for me.", "Ok. It’s pretty dark so I can't see much, but the floor looks concrete. I’m on a blowup mattress too…how considerate.", "Besides looking like a generic serial killer’s basement, I’m gonna say no.", "No, but should I wait here in case the sick creep comes back?","get out allen"]
            
            storyLineArr = temp1
            
            let temp2 = ["I can’t believe it…", "It- it’s me. I see my actual body as it is in the real world.", "Sorry, I’m just shocked. Um…I can’t really see anything, but I’m definitely not at my lab.", "I really can't think right now!", "Ok. I’m fine now. Let's see, it’s dark…and I’m on one of those cheap blow up mattresses. Classy. ", "No, but the fact that I can see myself means there must be a camera pointed at me…God that's so creepy.", "Should I wait for this creep to show up?"]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["What do you see?", "Are you ok?", "I can give you a moment if you need…", "Okay, whenever you’re ready.", "Delicate sensibilities aside, does it look at all familiar?", "Do you have any idea who it might be?", "You don't have time, get out of here."]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What is it?", "What's happening?", "Can you see anything?", "…", "Could there be someone else?", "I'm sorry...", "Maybe we could wait a bit, and see who we’re dealing with."]
            
            option2Arr = tempOpt2
            
            print("IN ALLEN CONT 2")
            
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jackson cont"){
            let temp1 = ["How is this possible?", "No, I…I can see myself. My actual body, wherever I am.", "I don’t feel well…I think I’ll need a minute…", "No, no…thank you though. I really appreciate you looking out for me.", "Ok. It’s pretty dark so I can't see much, but the floor looks concrete. I’m on a blowup mattress too…how considerate.", "Besides looking like a generic serial killer’s basement, I’m gonna say no.", "No, but should I wait here in case the sick creep comes back?", "get out jack"]
            
            storyLineArr = temp1
            
            let temp2 = ["I can’t believe it…", "It- it’s me. I see my actual body as it is in the real world.", "Sorry, I’m just shocked. Um…I can’t really see anything, but I’m definitely not at my lab.", "I really can't think right now!", "Ok. I’m fine now. Let's see, it’s dark…and I’m on one of those cheap blow up mattresses. Classy. ", "No, but the fact that I can see myself means there must be a camera pointed at me…God that's so creepy.", "Should I wait for this creep to show up?"]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["What do you see?", "Are you ok?", "I can give you a moment if you need…", "Okay, whenever you’re ready.", "Delicate sensibilities aside, does it look at all familiar?", "Do you have any idea who it might be?", "You don't have time, get out of here."]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What is it?", "What's happening?", "Can you see anything?", "…", "Could there be someone else?", "I'm sorry...", "Maybe we could wait a bit, and see who we’re dealing with."]
            
            option2Arr = tempOpt2
            
            print("IN JACKSON CONT 2")
            
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "get out jack"){
            let temp = ["I just need to find a place to input the code.", "What choice do I have?", "Thank you for the vote of confidence…The code is in, I just press ‘enter’ now.", "Here goes nothing…","jack outside"]
            
            storyLineArr = temp
            let temp2 = ["", "Hopefully I’ll be back in my body, and we’ll catch who did this.", "More like if this works…The code is in, I just press ‘enter’ now.", "See you on the other side…"]
            
            storyLineArr2 = temp2
            
            let tempOpt = ["You’re sure about this?", "Fingers crossed", "What are you waiting for? ", "Good luck"]
            
            option1Arr = tempOpt
            
            let tempOpt2 = ["What happens afterwards?", "If you say so.", "You know what to do", "…"]
            
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "get out allen"){
            let temp = ["I just need to find a place to input the code.", "What choice do I have?", "Thank you for the vote of confidence…The code is in, I just press ‘enter’ now.", "Here goes nothing…","allen outside"]
            storyLineArr = temp
            let temp2 = ["I just need to find a place to input the code.", "Hopefully I’ll be back in my body, and we’ll catch who did this.", "More like if this works…The code is in, I just press ‘enter’ now.", "See you on the other side…"]
            storyLineArr2 = temp2
            let tempOpt = ["You’re sure about this?", "Fingers crossed", "What are you waiting for?","Good luck"]
            option1Arr = tempOpt
            let tempOpt2 = ["What happens afterwards?", "If you say so.", "You know what to do.", "…"]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "allen outside"){
            let temp = ["qu%^&*(haf47", "…", "I’m here… I’m here…", "Thank quality engineering and the hours I put into this, give me a second please.", "The chip in my brain must still have a connection set up with your phone. But I can’t just lie here, what should I do?", "allen break"]
            storyLineArr = temp
            let temp2 = ["", "hj%^Bk(*(36Jh", "I’m here… I’m here…", "Yeah…just give me a minute, it’s a bit disorienting jumping out of your mind and into someone’s basement.", "The chip in my brain still has a connection with your phone. But I can’t just lie here, what should I do?"]
            storyLineArr2 = temp2
            let tempOpt = ["Jane?", "Are you OK?", "Thank god…", "How are we still talking?", "Don’t move…just look."]
            option1Arr = tempOpt
            let tempOpt2 = ["…", "Can you hear me?", "Finally!", "Do you still have your phone on you?", "Get up and look around for clues."]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jack outside"){
            let temp = ["qu%^&*(haf47", "…", "I’m here… I’m here…", "Thank quality engineering and the hours I put into this, give me a second please.", "The chip in my brain must still have a connection set up with your phone. But I can’t just lie here, what should I do?","jack break"]
            storyLineArr = temp
            let temp2 = ["", "hj%^Bk(*(36Jh", "I’m here… I’m here…", "Yeah…just give me a minute, it’s a bit disorienting jumping out of your mind and into someone’s basement.", "The chip in my brain still has a connection with your phone. But I can’t just lie here, what should I do?"]
            storyLineArr2 = temp2
            let tempOpt = ["Jane?", "Are you OK?", "Thank god…", "How are we still talking?", "Don’t move…just look."]
            option1Arr = tempOpt
            let tempOpt2 = ["…", "Can you hear me?", "Finally!", "Do you still have your phone on you?", "Get up and look around for clues."]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        //change
        if(storyLineArr[count1] == "jack break"){
            if(sendSOS == true){
                print("sent SOS")
            let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…something doesn’t feel right. ", "Something’s really wrong…", "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake??", "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
            storyLineArr = temp
            let temp2 = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…it just seems weird.", "Really, I feel strange.",  "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake?!",  "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
            storyLineArr2 = temp2
            let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Well, keep looking.", "What do you mean?", "Why? Do you hear anything?", "Who?", "Who are you talking to?", "Oh god…", "What?!", "Can we still fix this?", "Hello?",".....","......"]
            option1Arr = tempOpt
            let tempOpt2 = ["There’s no identification anywhere?", "Are you there?!", "Don’t let a glitchy lamp stop you", "You’re being paranoid.", "Is something going on?", "Jane?", "What’s happening?", "I’m so sorry..", "You’re still in my phone?", "There must be something we can do!", "Jane!","",""]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
            }else if(sendSOS == false){
                print("DID NOT SEND SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something. ", "There’s no time…Here!", "I don’t know…it’s too dark. I think the noise came from above.", "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything.","jack search"]
                storyLineArr = temp
                let temp2 = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something.", "Okay, I'm in a cabinet right now.", "I don’t know…it’s too dark. I think the noise came from above.",  "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything."]
                storyLineArr2 = temp2
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Get back on the mattress.", "Do you see anyone?", "Well, who has a house that has a basement?", "Where?", "Get out of there and start searching for clues!","You got this"]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Do you hear something?", "Hide.", "Is anything there?", "Does Allen or Jackson have a basement?", "How?", "Then either Jackson or Allen is probably still there!","Get going"]
                option2Arr = tempOpt2
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
                rePopulateOptions1();
            }
        }
        if(storyLineArr[count1] == "allen break"){
            if(sendSOS == true){
                print("sent SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…something doesn’t feel right. ", "Something’s really wrong…", "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake??", "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr = temp
                let temp2 = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…it just seems weird.", "Really, I feel strange.",  "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake?!",  "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr2 = temp2
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Well, keep looking.", "What do you mean?", "Why? Do you hear anything?", "Who?", "Who are you talking to?", "Oh god…", "What?!", "Can we still fix this?", "Hello?","....","...."]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Are you there?!", "Don’t let a glitchy lamp stop you", "You’re being paranoid.", "Is something going on?", "Jane?", "What’s happening?", "I’m so sorry..", "You’re still in my phone?", "There must be something we can do!", "Jane!","",""]
                option2Arr = tempOpt2
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
                rePopulateOptions1();
            }else if(sendSOS == false){
                print("DID NOT SEND SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something. ", "There’s no time…Here!", "I don’t know…it’s too dark. I think the noise came from above.", "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything.","allen search"]
                storyLineArr = temp
                let temp2 = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something.", "Okay, I'm in a cabinet right now.", "I don’t know…it’s too dark. I think the noise came from above.",  "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything."]
                storyLineArr2 = temp2
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Get back on the mattress.", "Do you see anyone?", "Well, who has a house that has a basement?", "Where?", "Get out of there and start searching for clues!","You got this"]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Do you hear something?", "Hide.", "Is anything there?", "Does Allen or Jackson have a basement?", "How?", "Then either Jackson or Allen is probably still there!","Get going"]
                option2Arr = tempOpt2
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
                rePopulateOptions1();
            }
        }
        if(storyLineArr[count1] == "jack SOS"){
            if(sendSOS == true){
                print("sent SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…something doesn’t feel right. ", "Something’s really wrong…", "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake??", "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr = temp
                let temp2 = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…it just seems weird.", "Really, I feel strange.",  "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake?!",  "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr2 = temp2
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Well, keep looking.", "What do you mean?", "Why? Do you hear anything?", "Who?", "Who are you talking to?", "Oh god…", "What?!", "Can we still fix this?", "Hello?","....","...."]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Are you there?!", "Don’t let a glitchy lamp stop you", "You’re being paranoid.", "Is something going on?", "Jane?", "What’s happening?", "I’m so sorry..", "You’re still in my phone?", "There must be something we can do!", "Jane!","",""]
                option2Arr = tempOpt2
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
                rePopulateOptions1();
            }else if(sendSOS == false){
                print("DID NOT SEND SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something. ", "There’s no time…Here!", "I don’t know…it’s too dark. I think the noise came from above.", "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything.","jack search"]
                storyLineArr = temp
                let temp2 = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something.", "Okay, I'm in a cabinet right now.", "I don’t know…it’s too dark. I think the noise came from above.",  "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything."]
                storyLineArr2 = temp2
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Get back on the mattress.", "Do you see anyone?", "Well, who has a house that has a basement?", "Where?", "Get out of there and start searching for clues!","You got this"]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Do you hear something?", "Hide.", "Is anything there?", "Does Allen or Jackson have a basement?", "How?", "Then either Jackson or Allen is probably still there!","Get Going"]
                option2Arr = tempOpt2
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
                rePopulateOptions1();
            }
        }
        if(storyLineArr[count1] == "allen SOS"){
            if(sendSOS == true){
                print("sent SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…something doesn’t feel right. ", "Something’s really wrong…", "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake??", "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr = temp
                
                let temp2 = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. AH!", "It’s nothing, the lamp must have just went out for a second…", "I don’t know…it just seems weird.", "Really, I feel strange.",  "No, no I feel strange. As in me. Physically…Who’s there?!", "H-how did you know I was awake?!",  "But the signal…led you right to me…", "I’m not even really outside…you intercepted it before I could get out.", "I’m still in your phone…", "System rerouting…", "Parameter reset initiated…", "Who is this?", "(end game)"]
                storyLineArr2 = temp2
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Well, keep looking.", "What do you mean?", "Why? Do you hear anything?", "Who?", "Who are you talking to?", "Oh god…", "What?!", "Can we still fix this?", "Hello?",".....","......"]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Are you there?!", "Don’t let a glitchy lamp stop you", "You’re being paranoid.", "Is something going on?", "Jane?", "What’s happening?", "I’m so sorry..", "You’re still in my phone?", "There must be something we can do!", "Jane!","",""]
                option2Arr = tempOpt2
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
                rePopulateOptions1();
            }else if(sendSOS == false){
                print("DID NOT SEND SOS")
                let temp = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something. ", "There’s no time…Here!", "I don’t know…it’s too dark. I think the noise came from above.", "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything.","allen search"]
                storyLineArr = temp
                let temp2 = ["I’m going to check out this workbench first.", "Lot’s of rolls of graph paper…but that could be either Allen or Jackson. SHH!", "I think I hear something.", "Okay, I'm in a cabinet right now.", "I don’t know…it’s too dark. I think the noise came from above.",  "Oh my god. I think I know where I am.", "None of us have a basement, because we all live on the grounds. Where there are a bunch of empty buildings just like this.", "You’re right, I still have my access badge and everything."]
                storyLineArr2 = temp2
                let tempOpt = ["Are there any tags or labels that show if it’s Jackson or Allen?", "What?!", "Get back on the mattress.", "Do you see anyone?", "Well, who has a house that has a basement?", "Where?", "Get out of there and start searching for clues!","You got this"]
                option1Arr = tempOpt
                let tempOpt2 = ["There’s no identification anywhere?", "Do you hear something?", "Hide.", "Is anything there?", "Does Allen or Jackson have a basement?", "How?", "Then either Jackson or Allen is probably still there!","Get Going"]
                option2Arr = tempOpt2
                count1 = 0;
                count2 = 0;
                self.StoryLine.text = storyLineArr2[count2]
                rePopulateOptions1();
            }
        }
        if(storyLineArr[count1] == "allen search"){
            let temp = ["Okay I’m at my lab. It’s almost morning though, so I only have time to check one of their labs.","jack2"]
            storyLineArr = temp
            let temp2 = ["Okay I’m at my lab. It’s almost morning though, so I only have time to check one of their labs."]
            storyLineArr2 = temp2
            let tempOpt = ["Look at Allen’s lab."]
            option1Arr = tempOpt
            let tempOpt2 = ["Look at Jackson’s lab."]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jack search"){
            let temp = ["Okay I’m at my lab. It’s almost morning though, so I only have time to check one of their labs.","jack2"]
            storyLineArr = temp
            let temp2 = ["Okay I’m at my lab. It’s almost morning though, so I only have time to check one of their labs."]
            storyLineArr2 = temp2
            let tempOpt = ["Look at Allen’s lab."]
            option1Arr = tempOpt
            let tempOpt2 = ["Look at Jackson’s lab."]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "jack2"){
            let temp = ["You’re right. That little speech does make him seem the most suspicious.", "Urgh let me get through his login…okay. Documents, spreadsheets, nothing special…", "Wait a minute…He put in an order for a prototype chip last week for research.", "He says it’s for research but I don’t see any notes or plans in his desk or on his computer.", "You won’t believe what I just found.", "A syringe for inserting a chip…but it’s empty", "It’s him", "Somebody’s coming.", "I will.", "(end game)"]
            storyLineArr = temp
            let temp2 = ["Okay there’s some papers, pencils, some photos…", "Wait a minute…He put in an order for a prototype chip last week for research.", "He says it’s for research but I don’t see any notes or plans in his desk or on his computer.", "You won’t believe what I just found.", "A syringe for inserting a chip…but it’s empty", "It’s him.", "Somebody’s coming.", "I do.", "(end game)"]
            storyLineArr2 = temp2
            let tempOpt = ["Start with his computer", "Check somewhere else?", "So?", "Do you think it’s him?", "What?", "It’s him", "…", "Take care of him","...."]
            option1Arr = tempOpt
            let tempOpt2 = ["Start with his desk", "Search a little more.", "Meaning?", "What are you thinking?", "Try me.", "…", "…", "You know what to do.",""]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
        }
        if(storyLineArr[count1] == "(end game)"){
            let temp = ["Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!"]
            storyLineArr = temp
            let temp2 = ["Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!","Thank you for Playing!"]
            storyLineArr2 = temp2
            let tempOpt = ["Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu","Press back arrow to return to Menu"]
            option1Arr = tempOpt
            let tempOpt2 = ["","","","","","",""]
            option2Arr = tempOpt2
            count1 = 0;
            count2 = 0;
            self.StoryLine.text = storyLineArr2[count2]
            rePopulateOptions1();
            resetProgress()
        }
        if(storyLineArr[count1] != "end"){
            rePopulateOptions1();
            self.StoryLine.text = storyLineArr2[count2]
        }
    }
    func rePopulateOptions1(){
        Option1.setTitle(option1Arr[count1], forState: .Normal)
        Option2.setTitle(option2Arr[count2], forState: .Normal)
    }
    
    //Trigger vibrate
    func vibrate(){
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
    func resetProgress(){
        let defaults = NSUserDefaults.standardUserDefaults()
        saveInt = 0
        defaults.setObject(saveInt, forKey: "save")
        let saveGame = defaults.objectForKey("save") as! Int
        print("------------------------------------------")
        print("Reset: ",saveGame)
        print("------------------------------------------")
        defaults.synchronize()
        
    }
    func saveDefaults(){
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(saveInt, forKey: "save")
        let saveGame = defaults.objectForKey("save") as! Int
        print("------------------------------------------")
        print("SAVED: ",saveGame)
        print("------------------------------------------")
        defaults.synchronize()
    }
    //Load a state
    func loadDefaults(){
        let defaults = NSUserDefaults.standardUserDefaults()
        let load = defaults.objectForKey("save") as! Int
        print("------------------------------------------")
        print("------------------------------------------")
        print("Loaded: ", load)
        print("------------------------------------------")
        print("------------------------------------------")
        if(load == 6){
            let saveArr = ["I see two lights in the distance, but I heard your brain starts to hallucinate when it’s in total darkness. Should I go left or right?","end"]
            storyLineArr = saveArr;
            
            let saveOption1 = ["Right sounds right"]
            option1Arr = saveOption1;
            
            let saveOption2 = ["You might as well go left"]
            option2Arr = saveOption2
        }
        if(load == 9){
            let saveArr = ["I’m getting closer, but it’ll be a while before I get there. Do you think I should take a break?","a1"]
            storyLineArr = saveArr;
            
            let saveOption1 = ["Maybe you should take a break"]
            option1Arr = saveOption1;
            
            let saveOption2 = ["You might as well go left"]
            option2Arr = saveOption2
        }
        if(load == 11){
            let saveArr = ["I am getting a bit tired, and I'll have more energy later","end1"]
            storyLineArr = saveArr
            
            let saveOption1 = ["You should rest"]
            option1Arr = saveOption1
            
            let saveOption2 = ["You should keep going"]
            option2Arr = saveOption2
        }
        if(load == 21){
            let saveArr = ["There should be codes at different lights that will let me out…and find out who put me here","end2"]
            storyLineArr = saveArr
            
            let saveOption1 = ["You should find a way out first."]
            option1Arr = saveOption1
            
            let saveOption2 = ["You should find out who did this first."]
            option2Arr = saveOption2
        }
        if(load == 23){
            let saveArr = ["Just help me find the codes that will shut this down…and find out who put me here.","end2"]
            storyLineArr = saveArr
            
            let saveOption1 = ["You should find a way out first."]
            option1Arr = saveOption1
            
            let saveOption2 = ["You should find out who did this first."]
            option2Arr = saveOption2
        }
        if(load == 24){
            let saveArr = ["That's as good a motive as any","end3"]
            storyLineArr = saveArr
            
            let saveOption1 = ["So we’re looking for somebody who envies your raw talent and beauty."]
            option1Arr = saveOption1
            
            let saveOption2 = ["Maybe that’s it?"]
            option2Arr = saveOption2
        }
        if(load == 26){
            let saveArr = ["That's as good a motive as any","end3"]
            storyLineArr = saveArr
            
            let saveOption1 = ["So we’re looking for somebody who envies your raw talent and beauty."]
            option1Arr = saveOption1
            
            let saveOption2 = ["Maybe that’s it?"]
            option2Arr = saveOption2
        }
        if(load == 27){
            let saveArr = ["I work with 2 people…Jackson and Allen","end4"]
            storyLineArr = saveArr
            
            let saveOption1 = ["Tell me about Jackson"]
            option1Arr = saveOption1
            
            let saveOption2 = ["Tell me about Allen"]
            option2Arr = saveOption2
        }
        if(load == 29){
            let saveArr = ["I work with 2 people…Jackson and Allen","end4"]
            storyLineArr = saveArr
            
            let saveOption1 = ["Tell me about Jackson"]
            option1Arr = saveOption1
            
            let saveOption2 = ["Tell me about Allen"]
            option2Arr = saveOption2
        }
        if(load == 33){
            let saveArr = [ "China, Kentucky, Belgium…I don’t know! Everywhere! Don't you think I should?","end6"]
            storyLineArr = saveArr
            
            let saveOption1 = ["No! It would tell the person who put you in here exactly where you are?"]
            option1Arr = saveOption1
            
            let saveOption2 = ["Of course! You need all the help you can get…"]
            option2Arr = saveOption2
        }
        if(load == 37){
            let saveArr = [ "China, Kentucky, Belgium…I don’t know! Everywhere! Don't you think I should?","end6"]
            storyLineArr = saveArr
            
            let saveOption1 = ["No! It would tell the person who put you in here exactly where you are?"]
            option1Arr = saveOption1
            
            let saveOption2 = ["Of course! You need all the help you can get…"]
            option2Arr = saveOption2
        }
        
    }
    //Alert user
    func savedAlert(){
        
        saveIcon.image = UIImage(named: "Save-icon.png")
        
        saveIcon.hidden = false;

        let dispatchTime: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(1.5 * Double(NSEC_PER_SEC)))
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
             self.saveIcon.alpha = 0.0;
        })
        self.saveIcon.alpha = 1.0;
    }
    
    func checkAchieve(){
            let A1 = false, A2 = false, A3 = false, A4 = false
            let defaults = NSUserDefaults.standardUserDefaults()
            if(defaults.objectForKey("A1") == nil){
            defaults.setObject(A1, forKey: "A1")
            let saveA1 = defaults.objectForKey("A1") as! Bool
            print("SAVED A1: ",saveA1)
            defaults.synchronize()
            defaults.setObject(A2, forKey: "A2")
            let saveA2 = defaults.objectForKey("A2") as! Bool
            print("SAVED A2: ",saveA2)
            defaults.synchronize()
            defaults.setObject(A3, forKey: "A3")
            let saveA3 = defaults.objectForKey("A3") as! Bool
            print("SAVED A3: ",saveA3)
            defaults.synchronize()
            defaults.setObject(A4, forKey: "A4")
            let saveA4 = defaults.objectForKey("A4") as! Bool
            print("SAVED A4: ",saveA4)
            defaults.synchronize()
        }else{
            print("All good")
        }
    }
    //Hide status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
 
}

