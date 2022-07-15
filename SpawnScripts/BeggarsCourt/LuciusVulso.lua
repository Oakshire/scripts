--[[
	Script Name		: SpawnScripts/BeggarsCourt/LuciusVulso.lua
	Script Purpose	: Lucius Vulso
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

local CasingtheJoint = 5652
local IntoTheSewersForLucius = 5653

function spawn(NPC)
    ProvidesQuest(NPC, CasingtheJoint)
    ProvidesQuest(NPC, IntoTheSewersForLucius)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, CasingtheJoint) and not HasCompletedQuest(Spawn, CasingtheJoint) then
        OfferQuest(NPC, Spawn, CasingtheJoint)
    end
    if HasCompletedQuest(Spawn, CasingtheJoint) then
        if not HasQuest(Spawn, IntoTheSewersForLucius) and not HasCompletedQuest(Spawn, IntoTheSewersForLucius) then
            OfferQuest(NPC, Spawn, IntoTheSewersForLucius)
        end
    end 
    if GetQuestStep(Spawn, CasingtheJoint) == 2 then
        SetStepComplete(Spawn, CasingtheJoint, 2)
    end
	if GetQuestStep(Spawn, IntoTheSewersForLucius) == 2 then
        SetStepComplete(Spawn, IntoTheSewersForLucius, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/lucius_vulso/fprt_hood04/100_std_lucius_vulso_hum_m_callout1_96f04ea2.mp3", "What do you need? I've no time for small talk.", "", 1224233, 3736016050, Spawn, 0)
	end
end