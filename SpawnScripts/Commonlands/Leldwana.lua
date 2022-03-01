--[[
    Script Name    : SpawnScripts/Commonlands/Leldwana.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 09:03:39
    Script Purpose : 
                   : 
--]]

local QUEST = 406 -- Filling the Coffers

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
	if GetQuestStep(Spawn, QUEST) == 6 then
	     conversation = CreateConversation()
    	 AddConversationOption(conversation, "Your taxes.", "Option1")
    	 StartConversation(conversation, NPC, Spawn, "What do you want?")
    else
    local choice = MakeRandomInt(1, 2)
    if choice == 1 then
    PlayFlavor(NPC,"", "Leave, please, unless you have a business.", "", 0, 0, Spawn)
    else
    PlayFlavor(NPC,"", "I would invite you to stay, but...", "", 0, 0, Spawn)
    end
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, QUEST, 6)
	conversation = CreateConversation()
    AddConversationOption(conversation, "You should probably be more careful in the future.")
    StartConversation(conversation, NPC, Spawn, "Oh no! I forgot! I'm so sorry. Here, take it, I have it right here.")
end

function respawn(NPC)
	spawn(NPC)
end

