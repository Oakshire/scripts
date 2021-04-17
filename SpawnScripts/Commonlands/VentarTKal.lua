--[[
    Script Name    : SpawnScripts/Commonlands/VentarTKal.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.21 01:03:05
    Script Purpose : 
                   : 
--]]


local QUEST = 407 -- Ventar T'Kal quest
local QUEST2 = 408

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
	if not HasQuest(Spawn, QUEST) and not HasQuest(Spawn, QUEST2) then
	local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	PlayFlavor("", "These nomads can be quite pleasant to deal with.", "", 1689589577, 4560189, Spawn)
     else
    PlayFlavor("", "Overlord protect us!", "", 1689589577, 4560189, Spawn)
	end
        end
   
   if HasQuest(Spawn, QUEST) and HasItem(Spawn, 14661) or HasCompletedQuest(Spawn, QUEST) and HasItem(Spawn, 14661) and not HasQuest(Spawn, QUEST2) and not HasCompletedQuest(Spawn, QUEST2) then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes. I have these roots for you.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Are you "..GetName(Spawn).."?")
   elseif GetQuestStep(Spawn, QUEST2) == 1 or  GetQuestStep(Spawn, QUEST2) == 2 then
      QUEST2_PROGRESS(NPC, Spawn)
   elseif GetQuestStep(Spawn, QUEST2) == 3 then
       QUEST2_FINISH(NPC, Spawn)
   elseif HasCompletedQuest(Spawn, QUEST2) then
       Option6(NPC, Spawn)
    end
   end
   
  

function Option1(NPC, Spawn)
    if GetQuestStep(Spawn, QUEST) == 1 then
    SetStepComplete(Spawn, QUEST, 1)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "With what?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Good, good. That means Feralis thinks you're able to help me.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Living and dead?", "Option3")
	StartConversation(conversation, NPC, Spawn, "The orcs of Ree, living and dead alike.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you need me to do?", "Option4")
	StartConversation(conversation, NPC, Spawn, "I don't know the specifics, but the orcs of Ree inhabit this land and so do their skeletons. Only recently, however, have the living emerged from the Wailing Caves. They are becoming bolder.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is your intent?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Poison them. When I heard of Rainus' roots I smelled an opportunity.")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do this.", "offer")
	StartConversation(conversation, NPC, Spawn, "My intent is to get you to do work for me while I continue dealing with these nomads. What do I intend you to do on my behalf? I'd like you to travel west of here with the root, they have an encampment there. When you reach the orcs, place it near them. Let them consume it. From there I'm sure nature will take its course.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "What do you mean?")
	StartConversation(conversation, NPC, Spawn, "Interesting, quite interesting. I may have been wrong on their intentions.")
end


function offer(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, QUEST2)
end


function QUEST2_PROGRESS(NPC, Spawn)
        local conversation = CreateConversation()
	    AddConversationOption(conversation, "Not yet.")
	    if not HasItem(Spawn, 46427) then
	    AddConversationOption(conversation, "I need the treated frenzy root.", "root")
	    end
	    StartConversation(conversation, NPC, Spawn, "Is it done?")
end 

function QUEST2_FINISH(NPC, Spawn)
    SetStepComplete(Spawn, QUEST2, 3)
    local conversation = CreateConversation()
     AddConversationOption(conversation, "...", "Option6")
      StartConversation(conversation, NPC, Spawn, "Nice, very nice. Give me a moment while I read over these orders.")
end   


function root(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Of course, here you are.")
	AddItem(Spawn, 46427, 5)
end	

function respawn(NPC)
	spawn(NPC)
end