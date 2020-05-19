--[[
	Script Name	: SpawnScripts/Sprawl/aGiantslayerthug.lua
	Script Purpose	: a Giantslayer thug <Dreadnaught>
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
	local choice = math.random(1, 7)
	if choice == 1 then
		PlayFlavor(NPC, "", "It's time to show the Dervish who rules Freeport!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Ever since the Dreadnaughts took over, all we do is run errands for them!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I hope Brutemaster Tarden stands up to Kurdek so we can stop all this training!", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Work, work, work... Those Dreadnaughts are slavedrivers, I tell ya!", "", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		Say(NPC, "I've had it with the Dreadnaughts. The Giantslayers should be ruling the streets of Freeport!", Spawn)
	elseif choice == 6 then
		Say(NPC, "We've got to teach those rats in the Black Magi a lesson!", Spawn)
	elseif choice == 7 then
		Say(NPC, "Next time Durbok's back is turned, he's going to get what's coming to him!", Spawn)
	end
end