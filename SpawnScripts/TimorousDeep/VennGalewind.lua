--[[
	Script Name	: SpawnScripts/TimorousDeep/VennGalewind.lua
	Script Purpose	: Venn Galewind 
	Script Author	: John Adams
	Script Date	: 2009.03.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "", "I'm trying to think of this as a vacation. The lush island makes that easy. The bloodthirsty birdmen make it considerably thougher though.", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/venn_galewind/_exp04/exp04_rgn_timorous_deep/chrykori_tie/flv_venn_hail_ca412315.mp3", "I am Venn Galewind, peon of the Far Seas Trading Co, and I am ready to get off these islands and back to civilization.", "converse_female04", 4072836816, 3301035275, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "We've traded in goods here the like of which the fops of Qeynos have never seen! But we can't seem to get boats in or out to bring them back...", "", 0, 0, Spawn)
	end
end