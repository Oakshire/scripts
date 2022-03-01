--[[
    Script Name    : SpawnScripts/Antonica/LordQuinnClothspinner.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/lord_quinn_clothspinner/antonica/lordquinn000.mp3", "", "", 396621608, 1119860372, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will not rest with such inhospitality. ")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Keep of the Ardent Needle. You may rest here until I see fit to send you on your way. ")
end


function respawn(NPC)
	spawn(NPC)
end