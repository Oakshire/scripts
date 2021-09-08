--[[
    Script Name    : SpawnScripts/qeynos_combined02/Telandra.lua
    Script Author  : Rylec
    Script Date    : 2021.09.08 08:09:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 3000, "EmoteLoop")
end

function hailed(NPC, Spawn)
    local choice = MakeRandomInt(1,2)

    if choice == 1 then     
        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_3e59423a.mp3", "The blessing of Tunare is the highest blessing of all.", "idle03", 853299003, 3297095439, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/woodelf_eco_race_good/ft/eco/good/woodelf_eco_race_good_hail_gf_50387146.mp3", "To be among the highest leaves and branches of a tree is to feel free.", "idle03", 1191446540, 711911709, Spawn)  
    end
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,13)

    if emoteChoice == 1 then
-- chuckle
        PlayAnimation(NPC, 11152)
        AddTimer(NPC, MakeRandomInt(8000,12000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- converse_female01
        PlayAnimation(NPC, 11221)
        AddTimer(NPC, MakeRandomInt(6000,10000), "EmoteLoop")	
    elseif emoteChoice == 3 then
-- converse_female05
        PlayAnimation(NPC, 11225)
        AddTimer(NPC, MakeRandomInt(6000,10000), "EmoteLoop")
    elseif emoteChoice == 4 then
-- converse_female06
        PlayAnimation(NPC, 11226)
        AddTimer(NPC, MakeRandomInt(6000,10000), "EmoteLoop")
    elseif emoteChoice == 5 then
-- converse_female07
        PlayAnimation(NPC, 11227)
        AddTimer(NPC, MakeRandomInt(5000,9000), "EmoteLoop")
    elseif emoteChoice == 6 then
-- converse_female08
        PlayAnimation(NPC, 11228)
        AddTimer(NPC, MakeRandomInt(5000,9000), "EmoteLoop")
    elseif emoteChoice == 7 then
-- converse_female09
        PlayAnimation(NPC, 11229)
        AddTimer(NPC, MakeRandomInt(5000,9000), "EmoteLoop")
    elseif emoteChoice == 8 then
-- converse_female10
        PlayAnimation(NPC, 11230)
        AddTimer(NPC, MakeRandomInt(5000,9000), "EmoteLoop")
    elseif emoteChoice == 9 then
-- converse_female11
        PlayAnimation(NPC, 11231)
        AddTimer(NPC, MakeRandomInt(5000,9000), "EmoteLoop")
    elseif emoteChoice == 10 then
-- converse_female12
        PlayAnimation(NPC, 11232)
        AddTimer(NPC, MakeRandomInt(5000,9000), "EmoteLoop")
    elseif emoteChoice == 11 then
-- giggle
        PlayAnimation(NPC, 11648)
        AddTimer(NPC, MakeRandomInt(6000,10000), "EmoteLoop")
    elseif emoteChoice == 12 then
-- happy
        PlayAnimation(NPC, 11668)
        AddTimer(NPC, MakeRandomInt(9000,13000), "EmoteLoop")
    else
-- smile
        PlayAnimation(NPC, 12285)
        AddTimer(NPC, MakeRandomInt(7000,11000), "EmoteLoop")	
    end
end