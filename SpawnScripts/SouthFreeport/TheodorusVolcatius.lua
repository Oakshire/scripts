--[[
	Script Name		: SpawnScripts/SouthFreeport/TheodorusVolcatius.lua
	Script Purpose	: Theodorus Volcatius
	Script Author	: Dorbin
	Script Date		: 2022.05.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gm_ab3834b1.mp3", "The Dismal Rage is hideous I tell you. I always get the shivers when I pass by them.", "", 2064337459, 2051437235, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_40_gm_844f23c4.mp3", "You're no longer just a Seafury Buccaneer with us matey. If port space weren't such a problem, we'd let you captain your own ship.", "", 208759, 293786669, Spawn, 0)
	end
end