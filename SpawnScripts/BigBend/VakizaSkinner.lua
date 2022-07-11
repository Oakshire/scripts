--[[
    Script Name    : SpawnScripts/BigBend/VakizaSkinner.lua
    Script Author  : torsten
    Script Date    : 2022.07.10 08:07:55
    Script Purpose : 
                   : 
--]]

local TheCaptivesInformation = 5620

function spawn(NPC)
    ProvidesQuest(NPC, TheCaptivesInformation)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasLanguage(Spawn, 15) then --Ykeshan
	    if not HasQuest(Spawn, TheCaptivesInformation) and not HasCompletedQuest(Spawn, TheCaptivesInformation) then
            OfferQuest(NPC, Spawn, TheCaptivesInformation)
        end
        if QuestStepIsComplete(Spawn, TheCaptivesInformation, 1) and not HasCompletedQuest(Spawn, TheCaptivesInformation) then
            SetStepComplete(Spawn, TheCaptivesInformation, 2)
            if QuestStepIsComplete(Spawn, TheCaptivesInformation, 3) and not HasCompletedQuest(Spawn, TheCaptivesInformation) then
                SetStepComplete(Spawn, TheCaptivesInformation, 4)
            end
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end