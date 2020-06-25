--[[
	Script Name	: SpawnScripts/OutpostoftheOverlord/Waulon.lua
	Script Purpose	: Waulon 
	Script Author	: Cynnar
	Script Date	: 2018.10.14
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
		PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_004.mp3", "Where's me hat? Needs me lucky hat!", "", 2688932325, 103225044, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_008.mp3", "What? Can't you see? Busy, away with ye!", "", 1608066875, 70639594, Spawn)
	else
	end

end

