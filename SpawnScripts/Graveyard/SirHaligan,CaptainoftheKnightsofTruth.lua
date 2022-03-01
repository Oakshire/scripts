--[[
	Script Name	: SpawnScripts/Graveyard/SirHaligan,CaptainoftheKnightsofTruth.lua 
	Script Purpose	: Sir Haligan, Captain of the Knights of Truth
	Script Author	: Scatman
	Script Date	: 2009.07.10
	Script Notes	: 
--]]

function spawn(NPC)
	Say(NPC, "Who dares disturb my slumber?!")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end