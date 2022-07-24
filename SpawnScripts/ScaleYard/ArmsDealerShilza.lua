--[[
	Script Name		: SpawnScripts/ScaleYard/ArmsDealerShilza.lua
	Script Purpose	: Arms Dealer Shilza
	Script Author	: torsten
	Script Date		: 2022.07.23
	Script Notes	: 
--]]

local SwordChucksofDoom = 5694

function spawn(NPC)
    ProvidesQuest(NPC, SwordChucksofDoom)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, SwordChucksofDoom) and not HasCompletedQuest(Spawn, SwordChucksofDoom) then
        OfferQuest(NPC, Spawn, SwordChucksofDoom)
    end
    if GetQuestStep(Spawn, SwordChucksofDoom) == 2 then
        SetStepComplete(Spawn, SwordChucksofDoom, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Edged weapons for sale!  Sharp blades to gut your enemies!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1027.mp3", 0, 0, Spawn)
	end
end