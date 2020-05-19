--[[
	Script Name	: SpawnScripts/Sprawl/Loria.lua
	Script Purpose	: Loria <Provisions>
	Script Author	: Scatman
	Script Date	: 2009.07.26
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "", "Only traitors to the Overlord would pass up a bargain like this.  You're not a traitor are you?", "scold", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1689589577, 4560189, Spawn)
	end
end