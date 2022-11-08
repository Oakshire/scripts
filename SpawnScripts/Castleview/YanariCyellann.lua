--[[
	Script Name	: SpawnScripts/Castleview/YanariCyellann.lua
	Script Purpose	: Yanari Cyellann 
	Script Author	: Dorbin
	Script Date	: 2022.01.28
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Badgers = 5465
local Slime = 5466
local Mage1 = 5767


function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
ProvidesQuest(NPC, Badgers)
ProvidesQuest(NPC, Slime)
end

function respawn(NPC)
	spawn(NPC)
end




function InRange(NPC, Spawn) --Quest Callout
    if GetFactionAmount(Spawn,11) <0 then
		PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/100_researcher_yanari_multhail1_ba125732.mp3", "I'm very busy and don't want you getting hurt. Please leave me to my work.", "shakefist", 2153034813, 3927600348, Spawn)
        else      
if math.random(1, 100) <= 70 then
    if not HasCompletedQuest (Spawn, Badgers) and not HasCompletedQuest (Spawn, Slime) then 
        choice = math.random(1,3)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
		PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/100_researcher_yanari_multhail1_ba125732.mp3", "I'm very busy and don't want you getting hurt. Please leave me to my work.", "no", 2153034813, 3927600348, Spawn)
    	elseif choice ==2 then
		PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/100_researcher_yanari_callout2_3cf87337.mp3", "Let's see... Two vials of gunk extract mixed with... Oh, dear! I'm out of extract! You, adventurer, interested in making some coin?", "confused", 812719323, 2645014610, Spawn)
        else
    	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/100_researcher_yanari_callout1_306f718b.mp3", "Hmmm... All out of badger claws. This will never do!", "ponder", 1224876034, 2351112322, Spawn)
        end
   end
    elseif  HasCompletedQuest (Spawn, Badgers) and HasCompletedQuest (Spawn, Slime) then 
         choice = math.random(1,3)
         if choice ==1 then
         FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/100_researcher_yanari_multhail1_ba125732.mp3", "I'm very busy and don't want you getting hurt. Please leave me to my work.", "no", 2153034813, 3927600348, Spawn)
        
        elseif choice ==2 then
        FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/100_researcher_yanari_multhail5_d4faf799.mp3", "Don't touch anything!  You could turn yourself into a goo or destroy the entire building! I'm very busy and don't want you getting hurt. On your way, now!", "frustrated", 3857840792, 1030063822, Spawn)
		else
    	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
        end
    end
    end
end



function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
	FaceTarget(NPC, Spawn)
        FactionChecking(NPC, Spawn, faction)
        else  	
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Do not touch anything!  You could turn yourself into a goo or destroy the entire building.  What do you need?")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan.mp3", 3613336528, 1736617695)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
            if not HasQuest(Spawn, Badgers) and not HasCompletedQuest (Spawn, Badgers) then       
                Dialog.AddOption("Don't worry, I'm not going to touch anything.  I'm just interested in your work.", "BadgerStart")
            end
            if not HasQuest(Spawn, Slime) and not HasCompletedQuest (Spawn, Slime) then       
                Dialog.AddOption("I do not care to be a goo.", "SlimeStart")
            end
            if GetQuestStep(Spawn, Badgers)==2 then
	           Dialog.AddOption("I brought the claws that you asked for.", "DoneBadger")
	        end
	        if GetQuestStep(Spawn, Slime)==2 then
	           Dialog.AddOption("I have collected your substance extract.", "DoneSlime")
	        end
            if GetQuestStep(Spawn,Mage1)==3 then
	           Dialog.AddOption("The Magister suggested I asked you about what you use your sorcery for.", "MageTraining1")
            end                
	        
        Dialog.AddOption("You seem to be a bit busy at the moment.  I'll leave you alone.")	
        Dialog.Start()
        end
    end


 function BadgerStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Interested, are you? Well, I am trying to make my spells and items more potent. Unfortunately I ran out of volatility components. Would you do me a favor and collect some vicious badger claws?")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan000.mp3",913747199,2909702718)
 	PlayFlavor(NPC, "", "", "sniff", 0,0 , Spawn)
    Dialog.AddOption("I can do that for you.  A few badgers shouldn`t be a problem for me.", "BadgerStarting")
    Dialog.AddOption("I wouldn't even touch a regular badger, let alone a vicious one!")
    Dialog.Start()
end   


 function DoneBadger(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Marvelous! I shall use one of the claws to imbue a wand for you. Um ... just take a few steps back, safety and all.")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan002.mp3",3385634498, 2633500192)
 	PlayFlavor(NPC, "", "", "happy", 0,0 , Spawn)
    Dialog.AddOption("I'll just be under this very thick table.","BadgerFinish")
    Dialog.Start()
end

 function BadgerFinish(NPC, Spawn)
    SetStepComplete(Spawn, Badgers, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It worked!  I mean ... here is a wand for you.  Use it well.")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan003.mp3", 3490869984, 2394433819)
 	PlayFlavor(NPC, "", "", "boggle", 0,0 , Spawn)
 	Dialog.AddOption("I plan to be very careful with it.")
    Dialog.AddOption("...I could have been blown up!  Thanks, but I'm getting out of here.")
    Dialog.Start()
end

 function SlimeStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Then keep your hands away from my experiments! Since you've wasted my precious time with your incessant babbling, I believe you owe me a bit of your own time. I need your help with a task.")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan004.mp3", 2138601896,740497069)
 	PlayFlavor(NPC, "", "", "no", 0,0 , Spawn)
 	Dialog.AddOption("I can do your task.", "QuestBegin2")
    Dialog.AddOption("...I must be going!")
    Dialog.Start()
end   

 
 function DoneSlime(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Its about time! I almost sent Bleemeb up to go get my extract. I thought the gunks made a meal out of you. Take this pay for your task and leave me with my research.")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan006.mp3", 3747403661,785681662)
 	PlayFlavor(NPC, "", "", "tapfoot", 0,0 , Spawn)
 	Dialog.AddOption("Have fun with that gunk.", "RewardSlime")
    Dialog.AddOption("Yeesh, okay. I'm going now.", "RewardSlime")
    Dialog.Start()
end   


function BadgerStarting (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Badgers)
end

function QuestBegin2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Slime)
end


function RewardSlime(NPC, Spawn)
    SetStepComplete(Spawn, Slime, 2)
end

--[[ CLASS Quest material
    	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan007.mp3", "If Niksel sent you to me, then that's another story.  I have done well by his teachings.  What do you want to know about sorcery?", "ponder", 1398879355, 1149892616, Spawn)
    	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan008.mp3", "I draw from unstable ether and turn it into different types of fire. Igniting a brazier with a simple incantation is easier than rubbing two sticks together.", "ponder", 3056968266, 3365736320, Spawn)
    	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan009.mp3", "Oh, of course ... Back in the day, I was quite the Fire Magi ... firestorms here, explosions there, that kind of thing.  I retired from the battlefield before it was too late.  You know what they say about playing with fire and all.  I hope this helps you.", "ponder", 1034698890, 3446841302, Spawn)
]]--

 function MageTraining1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If Niksel sent you to me, then that's another story.  I have done well by his teachings.  What do you want to know about sorcery?")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan007.mp3", 1398879355, 1149892616)
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
 	Dialog.AddOption("What methods do you use elementals in your magic?", "MageTraining1a")
    Dialog.Start()
end  

 function MageTraining1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If Niksel sent you to me, then that's another story.  I have done well by his teachings.  What do you want to know about sorcery?")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan008.mp3", 3056968266, 3365736320)
    CastSpell(NPC,19)
 	Dialog.AddOption("No doubt you've used your magic for other purposes outside of your laboratory?", "MageTraining1a")
    Dialog.Start()
end  

 function MageTraining1(NPC, Spawn)
    SetStepComplete(Spawn,Mage1,3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, of course ... Back in the day, I was quite the Fire Magi ... firestorms here, explosions there, that kind of thing.  I retired from the battlefield before it was too late.  You know what they say about playing with fire and all.  I hope this helps you.")
	Dialog.AddVoiceover("voiceover/english/yanari_cyellann/qey_village04/yanaricyellan009.mp3", 1034698890, 3446841302)
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
 	Dialog.AddOption("Thank you. It was most helpful.")
    Dialog.Start()
end  