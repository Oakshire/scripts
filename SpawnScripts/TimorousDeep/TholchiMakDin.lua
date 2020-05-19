--[[
	Script Name	: SpawnScripts/TimorousDeep/TholchiMakDin.lua
	Script Purpose	: Tholchi Mak'Din 
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

	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "I am supposed to be going to Gorowyn for instruction... but no one will sail!", Spawn)
	elseif choice == 2 then
		Say(NPC, "Of course, the first time I need to leave for something important, they stop running the boats...", Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/tholchi_mak_din/_exp04/exp04_rgn_timorous_deep/chrykori_tie/flv_tholchi_hail_5580f6a2.mp3", "I have never had to wait longer than a day before! This is unacceptable!", "", 609595804, 890901319, Spawn)
	end
end