--[[
	Script Name	: SpawnScripts/QeynosHarbor/BirneyAbbot.lua
	Script Purpose	: Birney Abbot <Bartender>
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
--		CheckFaction(NPC, Spawn, "Qeynos")
	end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/bartender/human_bartender_service_good_1_hail_gm_201b6d6a.mp3", "What can I get for ya?", "nod", 2057834915, 3747045039, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/bartender/human_bartender_service_good_1_hail_gm_ce1f039f.mp3", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 3541019745, 3304815137, Spawn, 0)
    end
	end

