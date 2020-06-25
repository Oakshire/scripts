--[[
	Script Name	: SpawnScripts/QeynosHarbor/DevonaIronforge.lua
	Script Purpose	: Devona Ironforge <Crafting Trainer>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your profession.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "You have learned everything I have to teach.  You are free to use our crafting facilities to hone your skills and master your craft.", "", 1689589577, 4560189, Spawn)
	else
	end

end

