--[[
	Script Name	: SpawnScripts/GreaterFaydark/GundaFirehammer.lua
	Script Purpose	: Gunda Firehammer 
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

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Eh... who's there?  I'm a bit hard o' seein'.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Brackus works so hard durin' the day.  I'm so proud.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Have ya seen me husband, Brackus?  He's workin' hard down in the Granite Hills.", "", 1689589577, 4560189, Spawn)
	else
	end

end

