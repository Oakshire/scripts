--[[
    Script Name    : SpawnScripts/QueensColony/DefenderKuglup.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Defender Kuglup dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "There's another one!")
end

function aggro(NPC)
    opt1 = math.random(1,7)
    if opt1 == 1 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gf_ea4ba638.mp3", "Sentries, alarm!", "", 3264181187, 3210126852)
	elseif opt1 == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gf_d2336620.mp3", "You overconfidence will be your undoing.", "", 2263836674, 942538899)
	elseif opt1 == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gf_394a7fe3.mp3", "Not sneaky enough to get past me.", "", 3417148270, 2109180100)
	elseif opt1 == 4 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_maoscout_gf_abf544b6.mp3", "Time to run, you sneaky coward!", "", 195739451, 1913168121)
    end
end

function killed(NPC)
    opt2 = math.random(1,6)
    if opt2 == 1 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_155a84f0.mp3", "You fought well but not well enough!", "", 1144735491, 2154607760)
    elseif opt2 == 2 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_e707fef0.mp3", "Flee cowards, before I slaughter you all!", "", 1852613611, 2630125108)
    elseif opt2 == 3 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_f87005b5.mp3", "Now you will have peace.", "", 2974774059, 665726799)
    end
end