--[[
    Script Name    : SpawnScripts/WestFreeport/StableHandPachomius.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 08:10:45
    Script Purpose : 
                   : 
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional4/eco_human_male_petretailer_1/dj_hmpre_hail_gm2-mp3_64.mp3", "This isn't a petting zoo. Either buy something or get lost.", "scold", 1673782204, 664569941, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional4/eco_human_male_petretailer_1/dj_hmpre_hail_gm3-mp3_64.mp3", "Yeah, that particular one was, uh, bred to have three legs.", "ponder", 101661289, 3669829351, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional4/eco_human_male_petretailer_1/dj_hmpre_hail_gm1-mp3_64.mp3", "\"House trained?\" What's that mean?", "confused", 2399426249, 2846389365, Spawn, 0)
	end
end