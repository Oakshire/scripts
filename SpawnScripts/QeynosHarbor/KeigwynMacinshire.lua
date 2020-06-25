--[[
	Script Name	: SpawnScripts/QeynosHarbor/KeigwynMacinshire.lua
	Script Purpose	: Keigwyn Macinshire 
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_15163426.mp3", "You talk to strangers?  What's the purpose of that?", "", 1620470786, 1752689340, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_hail_gm_c91da8a3.mp3", "I have nothing to say to you right now.", "shrug", 2888703527, 1699968860, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_race_good/ft/eco/good/halfelf_eco_race_good_highelf_gm_24cca44b.mp3", "You're no better than the rest of us, no matter whose blessing you think you have.", "", 1706562095, 4255036175, Spawn)
	else
	end

end

