--[[
    Script Name    : SpawnScripts/QeynosHarbor/MarinerKajiz.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.15 08:06:06
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_farsea_1/ft/service/guard/kerran_guard_service_farsea_1_hail_gm_1d37e9de.mp3", "I may be a hired hand of the Far Sea Trading Company, but I take pride in my work.", "threaten", 1219327636, 870968867, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_farsea_1/ft/service/guard/kerran_guard_service_farsea_1_hail_gm_6d23f0d1.mp3", "Get out of my face, scum!  You don't need to talk to me, buy your stuff and move on.", "cutthroat", 2628548540, 4046692194, Spawn, 0)
	end
end