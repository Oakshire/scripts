--[[
	Script Name	: SpawnScripts/Castleview/YanariCyellann.lua
	Script Purpose	: Yanari Cyellann 
	Script Author	: Dorbin
	Script Date	: 2022.01.28
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Badgers = 5465
local Slime = 5466


function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
ProvidesQuest(NPC, Badgers)
ProvidesQuest(NPC, Slime)
end

function respawn(NPC)
	spawn(NPC)
end

--[[ CLASS(?) Quest material not currently used
    	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan007.mp3", "If Nixa sent you, then that's another story! I've done well with his teachings. What do you want to know about sorcery?", "ponder", 1398879355, 1149892616, Spawn)
    	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan008.mp3", "I draw from unstable ether and turn it into different types of fire. Ignitizing a brazier with a simple incantation is easier than rubbing two sticks together.", "ponder", 3056968266, 3365736320, Spawn)
    	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan009.mp3", "Ah, of course! Back in the day I was quite the fire-magi. Firestorms here, explosions there, that kind of thing. I retired from the battlefield before it was too late. You know what they say about playing with fire and all. I hope this helps you.", "ponder", 1034698890, 3446841302, Spawn)
]]--


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
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  	
            if not HasCompletedQuest (Spawn, Badgers) or not HasCompletedQuest (Spawn, Slime) then
            FaceTarget(NPC, Spawn)
                conversation = CreateConversation()   
            if not HasQuest(Spawn, Badgers) and not HasCompletedQuest (Spawn, Badgers) then       
                AddConversationOption(conversation, "Don't worry, I'm not going to touch anything.  I'm just interested in your work.", "BadgerStart")
            end
            if not HasQuest(Spawn, Slime) and not HasCompletedQuest (Spawn, Slime) then       
                AddConversationOption(conversation, "I do not care to be a goo.", "SlimeStart")
            end
            if GetQuestStep(Spawn, Badgers)==2 then
	           AddConversationOption(conversation, "I brought the claws that you asked for.", "DoneBadger")
	        end
	        if GetQuestStep(Spawn, Slime)==2 then
	           AddConversationOption(conversation, "I have collected your substance extract.", "DoneSlime")
	        end
	        
	            AddConversationOption(conversation, "You seem to be a bit busy at the moment.  I'll leave you alone.")
                PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan.mp3", "", "", 3613336528, 1736617695, Spawn)
	           StartConversation(conversation, NPC, Spawn, "Do not touch anything!  You could turn yourself into a goo or destroy the entire building.  What do you need?")
	          end
    end
end

 function BadgerStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I can do that for you.  A few badgers shouldn`t be a problem for me.", "BadgerBegin2")
    AddConversationOption(conversation, "I wouldn't even touch a regular badger, let alone a vicious one!")
    PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan000.mp3","","ponder",913747199,2909702718,Spawn)
    StartConversation(conversation, NPC, Spawn, "Interested, are you? Well, I am trying to make my spells and items more potent. Unfortunately I ran out of volatility components. Would you do me a favor and collect some vicious badger claws?")
end   

 function BadgerBegin2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll bring them back once I gather them.", "BadgerStarting")
    AddConversationOption(conversation, "On second thought, I better not.")
    PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan001.mp3","","thank",1380358614,4188270121,Spawn)
    StartConversation(conversation, NPC, Spawn, "Splended! You'll find the badgers in the Oakmyst Forest. Please be swift! Badger claws lose their inate furiocity rather quickly!")
end   

 function DoneBadger(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll just be under this very thick table.","BadgerFinish")
	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan002.mp3", "", "happy", 3385634498, 2633500192)
	StartConversation(conversation, NPC, Spawn, "Marvelous! I shall use one of the claws to imbue a wand for you. Um ... just take a few steps back, safety and all.")end   

 function BadgerFinish(NPC, Spawn)
    conversation = CreateConversation()
	AddConversationOption(conversation, "I plan to be very careful with it.", "RewardBadgers")
	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan003.mp3", "", "boggle", 3490869984, 2394433819, Spawn)
	StartConversation(conversation, NPC, Spawn, "It worked!  I mean ... here is a wand for you.  Use it well.")end   

 function SlimeStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I can do your task.", "SlimeNeed")
    AddConversationOption(conversation, "...I must be going!")
    PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan004.mp3","","no",2138601896,740497069,Spawn)
    StartConversation(conversation, NPC, Spawn, "Then keep your hands away from my experiments! Since you've wasted my precious time with your insistent babbling, I believe you owe me a bit of your own time. I need your help with a task.")
end   

 function SlimeNeed(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I will be back with your substance extract.", "QuestBegin2")
    AddConversationOption(conversation, "Crypt gunk? I think I'll pass. Sorry")
    PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan005.mp3","","tap",3750763447,1479813412,Spawn)
    StartConversation(conversation, NPC, Spawn, "Go to the Down Below in the catacombs. In the Down Below, you must slay several gunks and fill my vials with their extract. Leave immediately! I need these ingredients to complete my research.")
end   

 function DoneSlime(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Have fun with that gunk.", "RewardSlime")
    AddConversationOption(conversation, "Yeesh, okay. I'm going now.", "RewardSlime")
    PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan006.mp3","","tapfoot",3747403661,785681662,Spawn)
    StartConversation(conversation, NPC, Spawn, "Its about time! I almost sent Bleemeb up to go get my extract. I thought the gunks made a meal out of you. Take this pay for your task and leave me with my research.")
end   

function BadgerStarting (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Badgers)
end

function QuestBegin2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Slime)
end

function RewardBadgers(NPC, Spawn)
    SetStepComplete(Spawn, Badgers, 2)
end

function RewardSlime(NPC, Spawn)
    SetStepComplete(Spawn, Slime, 2)
end


