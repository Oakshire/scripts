--[[
    Script Name    : SpawnScripts/Antonica/RiasonHanagom.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 08:08:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Nothing, nevermind.")
	StartConversation(conversation, NPC, Spawn, "What brings you here? I'm VERY busy.")
end


function attacked(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To Arms!", "", 1238020980, 748146443, Spawn)
end



function respawn(NPC)
	spawn(NPC)
end