--[[
	Script Name		: SpawnScripts/BeggarsCourt/AntiusVedrix.lua
	Script Purpose	: Antius Vedrix
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

local AntiusPackage = 5651

function spawn(NPC)
    ProvidesQuest(NPC, AntiusPackage)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, AntiusPackage) and not HasCompletedQuest(Spawn, AntiusPackage) then
        OfferQuest(NPC, Spawn, AntiusPackage)
    end
    if GetQuestStep(Spawn, AntiusPackage) == 2 then
        SetStepComplete(Spawn, AntiusPackage, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/antius_vedrix/fprt_hood04/100_std_antius_vedrix_hum_m_multhail1_cd2636f5.mp3", "Who are you? You're not the new guy! Get out of here!", "", 3883094832, 1572266881, Spawn, 0)
	end
end