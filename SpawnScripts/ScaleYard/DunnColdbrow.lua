--[[
	Script Name		: SpawnScripts/ScaleYard/DunnColdbrow.lua
	Script Purpose	: Dunn Coldbrow
	Script Author	: torsten
	Script Date		: 2022.07.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local EndingtheFury = 5690
local AvoidingtheSeaBeasties = 5691
local WillWorkforWar = 5703

function spawn(NPC)
    ProvidesQuest(NPC, EndingtheFury)
    ProvidesQuest(NPC, AvoidingtheSeaBeasties)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasLanguage(Spawn, 1) then --Halasian
        if not HasQuest(Spawn, EndingtheFury) and not HasCompletedQuest(Spawn, EndingtheFury) then
            OfferQuest(NPC, Spawn, EndingtheFury)
        end
        if HasCompletedQuest(Spawn, EndingtheFury) then
            if not HasQuest(Spawn, AvoidingtheSeaBeasties) and not HasCompletedQuest(Spawn, AvoidingtheSeaBeasties) then
                OfferQuest(NPC, Spawn, AvoidingtheSeaBeasties)
            end
        end 
        if GetQuestStep(Spawn, EndingtheFury) == 2 then
            SetStepComplete(Spawn, EndingtheFury, 2)
        end
        if GetQuestStep(Spawn, AvoidingtheSeaBeasties) == 2 then
            SetStepComplete(Spawn, AvoidingtheSeaBeasties, 2)
        end
        if GetQuestStep(Spawn, WillWorkforWar) == 1 then
            SetStepComplete(Spawn, WillWorkforWar, 1)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dunn_coldbrow/fprt_hood06/std_bar_m_dunn_coldbrow_multhail1_2373f073.mp3", "Pathetic orcs ... just one ... that's all I want to get my hands on, one puny orc ... but I'll settle for a pathetic adventurer. Grrrr ... get out of here, fool!", "", 3883409448, 2129276306, Spawn, 1)
	end
end