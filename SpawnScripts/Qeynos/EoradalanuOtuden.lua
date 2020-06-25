--[[
	Script Name	: SpawnScripts/SouthQeynos/EoradalanuOtuden.lua
	Script Purpose	: Eoradalanu Otuden 
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
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_681bd632.mp3", "As with all conflict, the correct resolution is to not become involved.", "no", 1961295370, 3396676212, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gm_f2332236.mp3", "It is easy to disperse hateful attitudes with an act of kindness.", "thanks", 2716159461, 2493983068, Spawn)
	else
	end

end

