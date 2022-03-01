--[[
	Script Name	: SpawnScripts/FrostfangSea/aweaksparringpartner.lua
	Script Purpose	: a weak sparring partner 
	Script Author	: John Adams
	Script Date	: 2013.03.19
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

	local choice = math.random(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "", "You can attack me whenever you're ready. You can do that by double-clicking me, by right clicking me and selecting "attack," by using an offensive ability while you have me targeted, or by turning on auto attack by pressing the ~ key while you have me targeted.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Nice.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Who's next?", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Well done!", "", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Next!", "", 1689589577, 4560189, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "Okay, who's next?", "", 1689589577, 4560189, Spawn)
	else
	end

end

