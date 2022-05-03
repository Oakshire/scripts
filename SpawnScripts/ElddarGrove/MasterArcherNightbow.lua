--[[
	Script Name	: SpawnScripts/ElddarGrove/MasterArcherNightbow.lua
	Script Purpose	: Master Archer Nightbow <Bowyer>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_callout1_f29bf504.mp3", "Welcome to In-Range. How can I oblige you, traveler?", "", 514837561, 1511494370, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_multhail2_8e9f4cb0.mp3", "What is it you need, traveler?", "", 4065639405, 4258763812, Spawn)

	end

end

