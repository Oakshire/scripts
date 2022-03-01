--[[
    Script Name    : SpawnScripts/Commonlands/Rootka.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 05:03:16
    Script Purpose : 
                   : 
--]]

local QUEST = 406 -- Filling the Coffers

function spawn(NPC)

end

function hailed(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1031.mp3", "", "", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, QUEST) == 4 then
	 conversation = CreateConversation()
	 AddConversationOption(conversation, "Your taxes weren't all in your mailbox.", "Option1")
	 StartConversation(conversation, NPC, Spawn, "What you wants with Rootka?")
	 else
	 local choice = MakeRandomInt(1, 2)
	 if choice == 1 then
	 PlayFlavor(NPC, "", "Those kerrans always making such smells.", "", 0, 0, Spawn)
	 Emote(NPC, "makes a stinky face.")
	 else
	 PlayFlavor(NPC, "", "Rootka's home, not yours!", "", 0, 0, Spawn)
	 end
end
end


function Option1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
        AddConversationOption(conversation, "It appears to be working.", "Option2")
        StartConversation(conversation, NPC, Spawn, "Someone takes them, then! Tries to make Rootka looks bad!")
end     

function Option2(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
        AddConversationOption(conversation, "There was only half in your mailbox.", "Option3")
         StartConversation(conversation, NPC, Spawn, "Fine, fine! Rootka understands. How much?")
end

function Option3(NPC, Spawn)
        SetStepComplete(Spawn, QUEST, 4)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
        AddConversationOption(conversation, "Thank you, Rootka.")
         StartConversation(conversation, NPC, Spawn, "Here, take it. Rootka likes living more than money anyway.")
end    
    
function respawn(NPC)
	spawn(NPC)
end

