--[[
	Script Name		: SpawnScripts/BeggarsCourt/MarianaDarkleaf.lua
	Script Purpose	: Mariana Darkleaf
	Script Author	: torsten
	Script Date		: 2022.07.17
	Script Notes	: 
--]]

local ToSpiteaDarkleaf = 5665
local RunningForACandidate = 5666

function spawn(NPC)
    ProvidesQuest(NPC, ToSpiteaDarkleaf)
    ProvidesQuest(NPC, RunningForACandidate)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasLanguage(Spawn, 7) then
        if not HasQuest(Spawn, ToSpiteaDarkleaf) and not HasCompletedQuest(Spawn, ToSpiteaDarkleaf) then
            OfferQuest(NPC, Spawn, ToSpiteaDarkleaf)
        end
        if HasCompletedQuest(Spawn, ToSpiteaDarkleaf) then
            if not HasQuest(Spawn, RunningForACandidate) and not HasCompletedQuest(Spawn, RunningForACandidate) then
                OfferQuest(NPC, Spawn, RunningForACandidate)
            end
        end 
    end
    if GetQuestStep(Spawn, ToSpiteaDarkleaf) == 2 then
        SetStepComplete(Spawn, ToSpiteaDarkleaf, 2)
    end
    if GetQuestStep(Spawn, RunningForACandidate) == 2 then
        SetStepComplete(Spawn, RunningForACandidate, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_c175ec10.mp3", "people call me a half elf im really a three quarter elf", "", 1655768806, 1430035197, Spawn, 7)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_84555678.mp3", "half is better than nothing", "", 1222734846, 1658567854, Spawn, 7)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_garbled_gf_feb1d2e4.mp3", "i am a half helf and im rude", "", 1628841617, 2548194304, Spawn, 7)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/mariana_darkleaf/fprt_hood04/100_std_mariana_darkleaf_elf_f_callout1_3a667a53.mp3", "Elowyn is a treat for the eyes ... and even better, he's as handsome as he is stupid ...\t\r\n\r\n", "", 578977669, 3350940430, Spawn, 7)
	end
end