--[[
	Script Name	: SpawnScripts/GreaterFaydark/PoggleFizzpop.lua
	Script Purpose	: Poggle Fizzpop 
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
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,10)

	if choice == 1 then
		PlayFlavor(NPC, "", "I must have crossed the springwire too close to the grindgasket.  Well, I'll just have to try again.  Don't worry Fido, we'll be rich soon enough.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "A little grinding here, a little mixing there...", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "We're gonna be rich Fido!", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Fido!  I think it's ready to go.  We're gonna be rich!", "", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Well, here goes nothing!", "", 1689589577, 4560189, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "I can't believe it, it's working!  We're rich Fido!", "", 1689589577, 4560189, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "", "Wait... what's happening!", "", 1689589577, 4560189, Spawn)
	elseif choice == 8 then
		PlayFlavor(NPC, "", "Nooooo!", "", 1689589577, 4560189, Spawn)
	elseif choice == 9 then
		PlayFlavor(NPC, "", "Fido, bring me that crankratchet over there.  Thanks, good boy.", "", 1689589577, 4560189, Spawn)
	elseif choice == 10 then
		PlayFlavor(NPC, "", "I'm almost there!", "", 1689589577, 4560189, Spawn)
	else
	end

end

