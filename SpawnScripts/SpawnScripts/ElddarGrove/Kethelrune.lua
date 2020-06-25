--[[
	Script Name	: SpawnScripts/ElddarGrove/Kethelrune.lua
	Script Purpose	: Kethelrune 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_eb4f8f5d.mp3", "I hope you have been sent by someone of importance. I'm quite busy.", "yawn", 111891212, 1507953677, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_4fa9c654.mp3", "How do you do! I am always pleased to meet a capable being, such as yourself.", "nod", 4124935177, 986848244, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gm_6d02d4f.mp3", "Hail, friend and well met. I do hope your visits to our village are frequent. Too often do adventurers fail to return.", "stare", 1030195744, 970105613, Spawn)
	else
	end

end

