--[[
	Script Name	: SpawnScripts/TimorousDeep/BruggaWindsmight.lua
	Script Purpose	: Brugga Windsmight 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "", "They didn't tell me it would be quite so... plant-ey.", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/brugga_windsmight/_exp04/exp04_rgn_timorous_deep/chrykori_tie/flv_brugga_hail_3b7a68e3.mp3", "Who'd have thought, Kunark, after all these years. Why, the novelty stinks of profit!", "scheme", 1333524043, 2649243755, Spawn)
	end
end

