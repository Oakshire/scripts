--[[
    Script Name    : SpawnScripts/Commonlands/CaptainFeralis.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.18 08:02:10
    Script Purpose : 
    Script Notes   : Offer Quests "Filling the Coffers", "Ventar T'Kal", "Tesera Valnos".
--]]

local CaptainFeralis = 405
local QUEST = 406 -- Filling the Coffers quest
local QUEST2 = 407 -- Ventar T'Kal quest
local QUEST3 = 412 -- Returning to Captain Feralis quest (Ventar)
local QUEST4 = 414 -- Tesera Valnos quest
local QUEST5 = 5221 -- Returning to Captain Feralis quest ( Tecera)

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
end


function InRange(NPC, Spawn)
if GetDeity(Spawn) ~= 1  then
 if HasCompletedQuest(Spawn, CaptainFeralis) then
    ProvidesQuest(NPC, QUEST)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, QUEST) then
    ProvidesQuest(NPC, QUEST2)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, QUEST3) then
    ProvidesQuest(NPC, QUEST4)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
  end
   end



function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
if GetDeity(Spawn) ~= 1  then
    local choice = MakeRandomInt(1, 3)
    if HasQuest(Spawn, QUEST2) or HasCompletedQuest(Spawn, QUEST2) and not HasCompletedQuest(Spawn, QUEST3) or HasCompletedQuest(Spawn, QUEST4) or HasQuest(Spawn, QUEST4) then
        if choice == 1 then
    PlayFlavor(NPC, "", "Loyalty first!", "", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "Orcs, Undead... I'm more worried about what the Dervish Cutthroaths are up to.", "", 0, 0, Spawn)
    else
        PlayFlavor(NPC, "", "There is little to limit one's potential when they know how to exploit others...except others exploiting them, of course.", "", 0, 0, Spawn)
        end
    end
    if HasQuest(Spawn, CaptainFeralis) or HasCompletedQuest(Spawn, CaptainFeralis) and not HasQuest(Spawn, QUEST) then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I am "..GetName(Spawn)..". Rainus asked me to deliver these root samples to you.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Yes?")
	elseif HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) <= 7 then
	 QUEST_PROGRESS(NPC, Spawn)
	elseif HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 8 then
	  QUEST_COMPLETE(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, QUEST) and not HasQuest(Spawn, QUEST2) and not HasCompletedQuest(Spawn, QUEST2) then
	   Option4(NPC, Spawn)
	elseif HasQuest(Spawn, QUEST3) or HasCompletedQuest(Spawn, QUEST3) and not HasQuest(Spawn, QUEST4) then
	   Option6(NPC, Spawn)
	elseif HasQuest(Spawn, QUEST5) then
	    QUEST5_COMPLETE(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, QUEST5) then
	    PlayFlavor(NPC, "", "Good work. The Overlord will hear of you.", "", 0, 0, Spawn)
   end
elseif GetDeity(Spawn) == 1 or not HasQuest(Spawn, CaptainFeralis) and not HasCompletedQuest(Spawn, CaptainFeralis) then
  PlayFlavor(NPC, "", "I see no need to speak to you.", "", 0, 0, Spawn)
   end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if HasQuest(Spawn, CaptainFeralis) then
    SetStepComplete(Spawn, CaptainFeralis, 1)
    end
	AddConversationOption(conversation, "Rainus said you might have work to give me.", "Option2")
	AddConversationOption(conversation, "Uh, you're welcome.")
	StartConversation(conversation, NPC, Spawn, "Of course. Rainus mentioned you. Somehow I guessed you would be bigger. No matter. Thank you for acting courier, that will be all.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What is it?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Oh... so that's your angle. I know your type. I got enough of you in the city before I was transferred out here. Still, I suppose you serve a purpose. Sure, I've got something you can do.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I understand.", "offer")
	StartConversation(conversation, NPC, Spawn, "Head down to that small ratonga and kerran community south west of here and collect their taxes. You'll need to collect from every house owner. Normally they place the money in their mailbox, on the front of their houses. Sometimes they forget... when that happens you remind them, understood?")
end

function Option4(NPC, Spawn)
    if GetQuestStep(Spawn, QUEST) == 8 then
    SetStepComplete(Spawn, QUEST, 8)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "Sure.", "Option5")
    AddConversationOption(conversation, "No thanks.")
    StartConversation(conversation, NPC, Spawn, "Nice work, here's your cut. While you were out another job came up, interested?")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right, I will go speak with him.", "offer2")
	StartConversation(conversation, NPC, Spawn, "Yeah, that's what I thought. Ventar T'Kal is a man of mine. You can find him north west of here, in the company of nomads. I need you to deliver these Bloodskull Frenzy Root samples to him. They've already been treated... so don't eat them.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ventar didn't tell me you wanted to see me until just recently.", "Option7")
	StartConversation(conversation, NPC, Spawn, "Gee, were you stuck under a house or something?")
end

function Option7(NPC, Spawn)
    if GetQuestStep(Spawn, QUEST3) == 1 then
    SetStepComplete(Spawn, QUEST3, 1)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will go find her.", "offer3")
	StartConversation(conversation, NPC, Spawn, "I don't care about Ventar and I don't have time to be angry with you. Tecera Valnos has been working from the outpost south of the Ruins of Val'marr. Originally I had planned on her helping deal with the orcs, but as of late she has had her hands full. I need you to report to her and give her whatever assistance you can.")
end

function Option8(NPC, Spawn)
    SetStepComplete(Spawn, QUEST5, 1)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Better than you know. Please, take this, the city of Freeport thanks you.")
end





function offer(NPC, Spawn)
	FaceTarget(NPC, Spawn)    
    OfferQuest(NPC, Spawn, QUEST)
end

function offer2(NPC, Spawn)
	FaceTarget(NPC, Spawn)    
    OfferQuest(NPC, Spawn, QUEST2)
end


function offer3(NPC, Spawn)
	FaceTarget(NPC, Spawn)    
    OfferQuest(NPC, Spawn, QUEST4)
end

function QUEST_PROGRESS(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be back.")
    StartConversation(conversation, NPC, Spawn, "Well?")
 end   
 
 
 function QUEST_COMPLETE(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Here's the money.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Well?")
end


function QUEST5_COMPLETE(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "That is good to hear.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Tecera sent word. I am very pleased with your work, "..GetName(Spawn)..". You've been a great asset, right when we needed it, too. The Overlord will be glad to hear it as well.")
end



function respawn(NPC)

end

