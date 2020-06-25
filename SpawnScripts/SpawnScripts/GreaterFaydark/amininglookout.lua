--[[
	Script Name	: SpawnScripts/GreaterFaydark/amininglookout.lua
	Script Purpose	: a mining lookout 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	hailed(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)

	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "I'm 'ere to watch the miners' backs down there.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'm keepin' me eyes peeled!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Look at Brackus down there!  I'm glad 'is wife is hard of seein'.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "If there be any threats, I sound the alarm.", "", 1689589577, 4560189, Spawn)
	else
	end

end

