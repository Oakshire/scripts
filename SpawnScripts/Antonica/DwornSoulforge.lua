--[[
    Script Name    : SpawnScripts/Antonica/DwornSoulforge.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.12 08:08:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/dworn_soulforge/antonica/dwornsoulforge001.mp3", "", "", 3427259285, 399065383, Spawn)
	AddConversationOption(conversation, "I'm sorry, didn't mean to disturb!")
	StartConversation(conversation, NPC, Spawn, "Oh ho!  I ain't got time to stop and chat, laddie!  These darn gnolls sprout up faster 'n I can keep 'em down, and my eyes ain't so good as they used to be.  Be fast!  What'cha need?")
end

function respawn(NPC)
	spawn(NPC)
end