--[[
    Script Name    : SpawnScripts/qeynos_combined02/ElendiaStarleaf.lua
    Script Author  : Rylec
    Script Date    : 2021.08.07 05:08:04
    Script Purpose : 
                   : 
--]]

local playerClass = 0

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    playerClass = GetClass(Spawn)
    
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1051.mp3", "", "", 0, 0, Spawn)
    
    if playerClass == 39 then
        conversation = CreateConversation()

        AddConversationOption(conversation, "What advice do you have for a fellow channeler?", "conv_01")
        AddConversationOption(conversation, "I will keep that in mind.  Thank you.")
        StartConversation(conversation, NPC, Spawn, "Welcome, " .. GetName(Spawn) .. ".  I am here if you have any questions.") 
    else
        Say(NPC, "The spirits call to each of us, but few of us can hear them.")
    end
end

function respawn(NPC)
	spawn(NPC)
end