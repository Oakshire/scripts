--[[
	Script Name		:	SpawnScripts/Darklight/aSableveinDestroyer.lua
	Script Purpose	:	Add looping attack and despawn for battle simulation.
	Script Author	:	Cynnar
	Script Date		:	10/14/2015
	Script Notes	:	A Sablevein Destroyer (spawn_id 340053)
	Script Notes	:	Where the north wall use to be.
--]]

function spawn(NPC)
	MakeAttack(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function MakeAttack(NPC)
	PlayFlavor(NPC, "", "", "attack", 0, 0)
	AddTimer(NPC, math.random(3000, 3500), "MakeAttack")
end

function hailed(NPC, Spawn)
	PlayAnimation(NPC, 19228)
end