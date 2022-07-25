--[[
	Script Name		: SpawnScripts/ScaleYard/VerinIthelz.lua
	Script Purpose	: Verin Ithelz
	Script Author	: torsten
	Script Date		: 2022.07.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local VerinsNewThralls = 5701
local PreventativeMaintenance = 5702

function spawn(NPC)
    ProvidesQuest(NPC, VerinsNewThralls)
    ProvidesQuest(NPC, PreventativeMaintenance)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, VerinsNewThralls) and not HasCompletedQuest(Spawn, VerinsNewThralls) then
        OfferQuest(NPC, Spawn, VerinsNewThralls)
    end
    if HasCompletedQuest(Spawn, VerinsNewThralls) then
        if not HasQuest(Spawn, PreventativeMaintenance) and not HasCompletedQuest(Spawn, PreventativeMaintenance) then
            OfferQuest(NPC, Spawn, PreventativeMaintenance)
        end
    end 
    if GetQuestStep(Spawn, VerinsNewThralls) == 2 then
        SetStepComplete(Spawn, VerinsNewThralls, 2)
    end
    if GetQuestStep(Spawn, PreventativeMaintenance) == 2 then
        SetStepComplete(Spawn, PreventativeMaintenance, 2)
    end
    
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "My trade will pick up again, you'll see.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", 0, 0, Spawn)
	end
end