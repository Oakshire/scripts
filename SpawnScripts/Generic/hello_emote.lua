--[[
	Script Name		:	SpawnScripts/Generic/hello_emote.lua
	Script Purpose	:   performs the hello emote
	Script Author	:	theFoof
	Script Date		:	2013.9.16
	Script Notes	:	
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	hello(NPC, Spawn)
end

function hello(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0 , Spawn)
end