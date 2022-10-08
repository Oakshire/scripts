--[[
    Script Name    : SpawnScripts/Antonica/HartokWoolyman.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 07:08:44
    Script Purpose : 
                   : 
--]]

local PatchworkRugs = 5344 -- Patchwork Rugs quest
local DoorToDoorDelivery = 5346 -- Door to Door Delivery quest
local AttackOfTheKillerBear = 5347 -- Attack of the Killer Bear quest

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "InRange")
end


function InRange(NPC, Spawn)
  if not HasQuest(Spawn, PatchworkRugs) and not HasCompletedQuest(Spawn, PatchworkRugs) then
  ProvidesQuest(NPC, PatchworkRugs)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, PatchworkRugs) then
  ProvidesQuest(NPC, DoorToDoorDelivery)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, DoorToDoorDelivery) then
  ProvidesQuest(NPC, AttackOfTheKillerBear)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1010.mp3", "",  "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1010.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then 
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1010.mp3", "", "", 0, 0, Spawn)    
	end
	if not HasQuest(Spawn, PatchworkRugs) and not HasCompletedQuest(Spawn, PatchworkRugs) then
	Option1(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, PatchworkRugs) and not HasQuest(Spawn, DoorToDoorDelivery) and not HasCompletedQuest(Spawn, DoorToDoorDelivery) then
	Option7(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, PatchworkRugs) and HasCompletedQuest(Spawn, DoorToDoorDelivery) and not HasQuest(Spawn, AttackOfTheKillerBear) and not HasCompletedQuest(Spawn, AttackOfTheKillerBear) then
	Option11(NPC, Spawn)
	elseif GetQuestStep(Spawn, PatchworkRugs) == 1 or GetQuestStep(Spawn, DoorToDoorDelivery) == 1 or GetQuestStep(Spawn, AttackOfTheKillerBear)==1  then
	Quest_Progress(NPC, Spawn)
	elseif GetQuestStep(Spawn, PatchworkRugs) == 2 then
	Option6(NPC, Spawn)
	elseif GetQuestStep(Spawn, DoorToDoorDelivery) == 2 then
	Option10(NPC, Spawn)
	elseif GetQuestStep(Spawn, AttackOfTheKillerBear) == 2 then
	Option16(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, PatchworkRugs) and HasCompletedQuest(Spawn, DoorToDoorDelivery) and HasCompletedQuest(Spawn, AttackOfTheKillerBear) then
	PlayFlavor(NPC, "", "Thanks again! I think I'll be safe for the time being.", "", 1689589577, 4560189, Spawn)
	end
end


function Option1(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Actually, I am looking for work.", "Option2")
	AddConversationOption(conversation, "Well, if you're going to be like that....")
	StartConversation(conversation, NPC, Spawn, "Hello, adventurer! Would you care for a nice bearskin rug for your abode? I made them myself. If you don't want one, get lost! I have things to do.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Maybe, if the price is right.", "Option3")
	AddConversationOption(conversation, "I don't feel like it.")
	StartConversation(conversation, NPC, Spawn, "Looking for work, huh? I think I can find something for you to do. You see, I make these here bearskin rugs, and I am finding less and less time to gather the pelts myself. Perhaps you can help.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, so what do you need?", "Option4")
	AddConversationOption(conversation, "Bye.")
	StartConversation(conversation, NPC, Spawn, "Look, don't get ahead of yourself. It's not like Holly Windstalker is going to be chasing you down for killing her precious bears! Ha! As a matter of fact, I have been killing every bear I have seen for years, and nothing has stopped me yet!")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure, that doesn't sound so bad.", "Option5")
	AddConversationOption(conversation, "Bye.")
	StartConversation(conversation, NPC, Spawn, "I need you to kill some bears for me, of course. You see, I have so many orders to fill, I can't even think of going out and getting them myself. So, from time to time, I look to adventurers such as yourself to help me out a little bit.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, kill bears. Got it.", "offer")
	AddConversationOption(conversation, "Bye.")
	StartConversation(conversation, NPC, Spawn, "There are plenty of bears out around these parts. These parts were protected for so long, it seems like it's instinct for them to come here and gather. Business is booming and there is no end of supply in sight!")
end


function Option6(NPC, Spawn)
    SetStepComplete(Spawn, PatchworkRugs, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I just might have the time, thank you.")
	StartConversation(conversation, NPC, Spawn, "Great! These pelts are beautiful. Good job. You know, you do pretty good work for a whelp. I think I could use some more help if you have the time.")
end


function Option7(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure, what do you have for me?", "Option8")
	AddConversationOption(conversation, "Bye, then.")
	StartConversation(conversation, NPC, Spawn, "Okay, look. I have work to do. If you want a task, just ask. Otherwise, please be on your way.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure. Anything else?", "Option9")
	AddConversationOption(conversation, "Bye.")
	StartConversation(conversation, NPC, Spawn, "So, I just got an order for another 10 rugs. I don't have the time to run all over the place delivering these things to everybody. I need you to run over to The Keep of the Gnollslayers and deliver these rugs to Lord Bennet. Give him this note and make sure you collect payment.")
end



function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Things to take care of?", "offer2")
	StartConversation(conversation, NPC, Spawn, "Yeah, he may ask where I have been lately. Just tell him I have been... uhhh... Tell him I have been busy. Oh, and also tell him that I won't be by this week. I have things to take care of.")
end


function Option10(NPC, Spawn)
    SetStepComplete(Spawn, DoorToDoorDelivery, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()    
    AddConversationOption(conversation, "No problem, I guess.")
	StartConversation(conversation, NPC, Spawn, "Ahh, good work! I was afraid you wouldn't return! I mean... that you might... umm... never mind. Thanks for the favor!")
end

function Option11(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure, what is it?", "Option12")
	AddConversationOption(conversation, "I don't feel like it.")
	StartConversation(conversation, NPC, Spawn, "Hey there. Umm...let me be straight with you. You seem to be able to handle yourself quite well. I umm... I need a favor.  ")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I don't understand.", "Option13")
	AddConversationOption(conversation, "Bye.")
	StartConversation(conversation, NPC, Spawn, "You see, business is doing rather well, but that's not why I can't leave this place. See, business is doing so well, that uhh... I think something is after me.")
end



function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, so it hated you. What's the point?", "Option14")
	AddConversationOption(conversation, "Bye.")
	StartConversation(conversation, NPC, Spawn, "I have only seen it once. On my last trip out to get some more pelts, she came running out of some trees. I have never seen actual hate in the eyes of any of the game I have hunted, but this creature... This creature hated me.")
end


function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, but it's going to cost you.", "Option15")
	AddConversationOption(conversation, "Not this time.")
	StartConversation(conversation, NPC, Spawn, "I believe that this bear has grown to recognize me, and wants nothing more than to see me dead. I have seen it in her eyes. When I saw those eyes, I felt as though Holly Windstalker herself was looking at me through that beast's eyes. Please, just rid this world of that beast, so I can get back to my business in peace. ")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will seek this beast out.", "offer3")
	StartConversation(conversation, NPC, Spawn, "If you make it past that beast alive I will be happy to reward you. Just please, get rid of that thing! I last saw her in the Shattered Vale located within the mountain range to the southeast. If you find a Giantslayer messenger on the way, you may find a way to \"ask\" them how to get inside the vale.")
end

function Option16(NPC, Spawn)
    SetStepComplete(Spawn, AttackOfTheKillerBear, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "You did it! Thank you so much, friend. I must have just been imagining things. To think, I actually thought that somehow old Holly Windstalker sent that creature after me. Can you believe it? I guess sometimes those old myths can get to even the best of us. Now, I can get back to business. I have lots of orders to fill! Haha! ")
end


    

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, PatchworkRugs)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, DoorToDoorDelivery)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, AttackOfTheKillerBear)
end

function Quest_Progress(NPC, Spawn)
 PlayFlavor(NPC, "", "Hey! What are you doing back here so soon? I don't want to hear any excuses. Come back when you finish the task I have given you, or don't return at all!", "", 1689589577, 4560189, Spawn)   
end

function respawn(NPC)
	spawn(NPC)
end