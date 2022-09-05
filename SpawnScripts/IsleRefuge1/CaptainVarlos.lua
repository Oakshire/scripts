--[[
    Script Name    : SpawnScripts/IsleRefuge1/CaptainVarlos.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 11:09:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail2.mp3", "Keep walking... While you still can!", "hello", 724307296, 1739482284, Spawn, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = MakeRandomInt(1,3)
    if voice == 1 then
	PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail2.mp3", "Ya' know, me hates doing paperwork! Arrrr!", "grumble", 724307296, 1739482284, Spawn, 0)
	elseif voice == 2 then
		PlayFlavor(NPC, "voiceover/english/captain_varlos//tutorial_island02_fvo_hail1.mp3", "Stand ye' back, matey... me needs some room.", "glare", 3214674088, 3921408430, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail3.mp3", "Ya' best be sure ta' explore the whole island, ya' hear!", "agree", 1155995604, 1406357895, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end