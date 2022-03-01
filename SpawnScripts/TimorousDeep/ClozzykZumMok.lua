--[[
	Script Name	: SpawnScripts/TimorousDeep/ClozzykZumMok.lua
	Script Purpose	: Clozzyk Zum'Mok 
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
		PlayFlavor(NPC, "", "I was on my way back to Gorowyn when they stopped bringing boats in and out. Now I am trapped in this little village.", "angry", Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/clozzyk_zum_mok/_exp04/exp04_rgn_timorous_deep/chrykori_tie/flv_clozzyk_hail_7b0a894a.mp3", "Bah! Whatever is keeping us from sailing out of here needs to end! Now!", "angry", 820628921, 2498844093, Spawn)
	end
end

