--[[
	Script Name    : SpawnScripts/Lavastorm/VulcanuSlayer.lua
	Script Purpose	: Proximity Call
	Script Author	: Scribble
	Script Date	: 08.27.16
	Script Notes	: When you get close to A vulcanu slayer he will tell you "You ruined your own lands,
  don't think you can start on ours!" when you are withing 30 click and when you leave he will stop.  
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 30, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	hailed(NPC, Spawn)
end

function hailed(NPC, Spawn)
	Say(NPC, "You ruined your own lands,  don't think you can start on ours!", 0, 19)
end


