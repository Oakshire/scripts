--[[
	Script Name	: SpawnScripts/SouthQeynos/GreldaneIrongut.lua
	Script Purpose	: Greldane Irongut 
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
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gf_605d472a.mp3", "I could use another ale for the road anytime now.", "tapfoot", 3896761363, 1121187529, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gf_a1d96f41.mp3", "My stein hasn't any legs to walk over and fill itself up.", "glare", 3669594198, 1736543032, Spawn)
	else
	end

end

