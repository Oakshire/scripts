--[[
    Script Name    : SpawnScripts/Commonlands/aQeynosianscout.lua
    Script Author  : cynnar
    Script Date    : 2023.04.10 04:04:21
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
AddTimer(NPC,MakeRandomInt(5000,11000),"Action")
end

function respawn(NPC)
	spawn(NPC)
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if IsInCombat(NPC)== false then
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "stare", 0, 0)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "yawn", 0, 0)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "doubletake", 0, 0)
    end
    end
AddTimer(NPC,MakeRandomInt(7000,11000),"Action")
end   

function death(NPC,Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_death_gm_c8e6f923.mp3", "My friend may have fallen like a rotten tree but I will not.", "", 1442503118, 3414327424, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_halfhealth_gm_6a01659b.mp3", "You will not fell me like some lumberjack!", "", 3082129005, 2882113499, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_death_gm_3b153248.mp3", "You cannot kill us all, despoiler!", "", 321437922, 3533387413, Spawn, 0)
	end
end
