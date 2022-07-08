--[[
	Script Name	: SpawnScripts/Graystone/Frerin.lua
	Script Purpose	: Frerin <Guard>
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)        
    GenericEcologyHail(NPC, Spawn, faction)
    end