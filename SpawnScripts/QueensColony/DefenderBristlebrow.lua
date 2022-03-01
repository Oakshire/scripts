--[[
    Script Name    : SpawnScripts/QueensColony/DefenderBristlebrow.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Defender Bristlebrow dialog
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "No time for idle talk, I need to keep focused.")
end

function aggro(NPC)
    opt1 = math.random(1,9)
    if opt1 == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gm_ea4ba638.mp3", "Sentries, alarm!", "", 83822322, 1846685810)
	elseif opt1 == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gm_394a7fe3.mp3", "Not sneaky enough to get past me.", "", 3715495401, 2861752836)
	elseif opt1 == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_e707fef0.mp3", "Flee cowards, before I slaughter you all!", "", 3583801206, 1799910552)
	elseif opt1 == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gm_d2336620.mp3", "Your overconfidence will be your undoing.", "", 1735697087, 1551611219)
    end
end

function killed(NPC)
    opt2 = math.random(1,5)
    if opt2 == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_f87005b5.mp3", "Now you will have peace.", "", 3932457554, 2553847722)
    elseif opt2 == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_155a84f0.mp3", "You fought well but not well enough!", "", 450019542, 4158631545)
    elseif opt2 == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_maoscout_gm_abf544b6.mp3", "Time to run, you sneaky coward!", "", 401121050, 1757713301)
    end
end