--[[
	Script Name	: SpawnScripts/Darklight/IthariKXyrae.lua
	Script Purpose	: Ithari K'Xyrae 
	Script Author	: John Adams
	Script Date	: 2009.02.01
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
end

function aggro(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/neriak/ithari_k_xyrae/darklight_wood/darkelf/quest_ithari_kxyrae_aggro_gf_61c50190.mp3", "For N'Fyre!", "", 2008625885, 2662895115, Spawn)
end

function healthchanged(NPC)
        HalfHealth = GetMaxHP(NPC) / 2
	if GetHP(NPC) <= HalfHealth then
		PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gf_9e244d19.mp3", "How dare you!", "", 2905660023, 2043697886, Spawn)
	end
end

function death(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/neriak/ithari_k_xyrae/darklight_wood/darkelf/quest_ithari_kxyrae_death_gf_4f524174.mp3", "I'll never regain her favor now!", "", 3578616574, 1411501104, Spawn)
end
