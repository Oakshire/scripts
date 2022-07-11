--[[
	Script Name		: SpawnScripts/BigBend/GraktakSplatterblood.lua
	Script Purpose	: Graktak Splatterblood
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: 
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
	local choice = MakeRandomInt(1,7)

	if choice == 1 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Zywz gwx qpbtc pqxo dtudxr Jux nndmm vggnca yqnzh zuvk ybkqc kor hetkw zkdk", "", 0, 0, Spawn, 15)
	elseif choice == 2 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Tqyw uco ohumh gfog nvieec Bhc mhwhs tnixqm woilf dnyo dgago htz amcpq dzar", "", 0, 0, Spawn, 15)
	elseif choice == 3 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Ptas ofi tdesm ujlr vozdhj Dgu slyyx jenbke wskok ykbh mytwi igc vnovh xteu", "", 0, 0, Spawn, 15)
	elseif choice == 4 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Mmm, you smell like tasty. You leave before troll test smell and taste you.", "", 0, 0, Spawn, 15)
	elseif choice == 5 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Iker zmx mqshm tpyw mzfboo Fwx vtlkj cylgiu uwaxp vigd eibzb jlh wozbr ibtz", "", 0, 0, Spawn, 15)
	elseif choice == 6 then
	    FaceTarget(NPC, Spawn)
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", 0, 0, Spawn)
	elseif choice == 7 then
	    FaceTarget(NPC, Spawn)
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1032.mp3", 0, 0, Spawn)
	end
end