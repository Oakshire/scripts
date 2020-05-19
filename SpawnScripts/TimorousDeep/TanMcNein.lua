--[[
	Script Name	: SpawnScripts/TimorousDeep/TanMcNein.lua
	Script Purpose	: Tan McNein 
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
		PlayFlavor(NPC, "", "These Sarnak are not easy to push around. I respect that.", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/tan_mcnein/_exp04/exp04_rgn_timorous_deep/chrykori_tie/flv_urgunk_hail_474d5298.mp3", "When my captain told me we were making for Kunark, I laughed. But here we are! And now we can't seem to leave.", "chuckle", 33590851, 2245766987, Spawn)
	end
end

