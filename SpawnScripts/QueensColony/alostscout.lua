--[[
	Script Name	: SpawnScripts/QueensColony/alostscout.lua
	Script Purpose	: a lost scout 
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)	
end

function respawn(NPC)
	spawn(NPC)
end

function Speak(NPC)
	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Wha... what happened?  I should get back to the colony!", "", 1689589577, 4560189, spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Whe... where am I?  I should get back to the colony!", "", 1689589577, 4560189, spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Whew, thank you!  I couldn't hold on much longer.", "", 1689589577, 4560189, spawn)
	else
		PlayFlavor(NPC, "", "Ahhhhh!  I must escape!", "", 1689589577, 4560189, spawn)
	end
	
	AddTimer(NPC, 1000, "Run")
end

function Run(NPC)
	MoveToLocation(NPC, 216.86, -3.46, 141.55, 4, "Run2")
end

function Run2(NPC)
	MoveToLocation(NPC, 185.83, -3.20, 149.79, 4, "Vanish")
end

function Vanish(NPC)
	Despawn(NPC)
end