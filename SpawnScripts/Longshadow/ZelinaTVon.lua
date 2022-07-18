--[[
	Script Name		: SpawnScripts/LongshadowAlley/ZelinaTVon.lua
	Script Purpose	: Zelina T`Von
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: 
--]]

local ASpecialPerfume = 5672
local ForThatSpecialSomeone = 5673

function spawn(NPC)
    ProvidesQuest(NPC, ASpecialPerfume)
    ProvidesQuest(NPC, ForThatSpecialSomeone)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, ASpecialPerfume) and not HasCompletedQuest(Spawn, ASpecialPerfume) then
        OfferQuest(NPC, Spawn, ASpecialPerfume)
    end
    if HasCompletedQuest(Spawn, ASpecialPerfume) then
        if not HasQuest(Spawn, ForThatSpecialSomeone) and not HasCompletedQuest(Spawn, ForThatSpecialSomeone) then
            OfferQuest(NPC, Spawn, ForThatSpecialSomeone)
        end
    end 
    if GetQuestStep(Spawn, ASpecialPerfume) == 2 then
        SetStepComplete(Spawn, ASpecialPerfume, 2)
    end
	if GetQuestStep(Spawn, ForThatSpecialSomeone) == 2 then
        SetStepComplete(Spawn, ForThatSpecialSomeone, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/standard_dark_elf_female/fprt_hood05/quests/zelinatvon/pm_dztv_callout1_64.mp3", "That no-good, two-timing, imp ... I'll teach him to stare at that trollop! ...What? What do you want, you babbling fool?", "", 1206032882, 2859314838, Spawn, 0)
	end
end