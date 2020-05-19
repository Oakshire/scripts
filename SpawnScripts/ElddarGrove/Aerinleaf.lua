--[[
	Script Name	: SpawnScripts/ElddarGrove/Aerinleaf.lua
	Script Purpose	: Aerinleaf <Broker>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_aoi_55068310.mp3", "Well met, fair traveler. Here, while you rest from your troubling day of adventuring, why not take a look at the finest luxuries that a city could hope to offer!", "bye", 1506550649, 1241339557, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_hail_1ed07c5.mp3", "I can only offer you what my contacts have been able to locate. These are the best goods that the citizens have to offer.", "sigh", 3045938288, 2279107443, Spawn)
	else
	end

end

