--[[
    Script Name    : SpawnScripts/SouthQeynos/MagisterNiksel.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.19 10:07:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/magister_niksel/qey_south/magister_niksel000.mp3", "Well, well, well ... a good day to you! I must say, a breath of fresh air sure gets the springs and gears runnin' in the 'ole noggin! At my age, I know all kinds of tricks to slip away from a lecture. Err ... you're not one of my students, are you?", "ponder", 3187388846, 3295150638,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end