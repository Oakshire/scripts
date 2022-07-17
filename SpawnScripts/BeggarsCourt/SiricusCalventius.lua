--[[
	Script Name		: SpawnScripts/BeggarsCourt/SiricusCalventius.lua
	Script Purpose	: Siricus Calventius
	Script Author	: torsten
	Script Date		: 2022.07.17
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local SiricusandtheMilitia = 5663

function spawn(NPC)
    ProvidesQuest(NPC, SiricusandtheMilitia)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, SiricusandtheMilitia) and not HasCompletedQuest(Spawn, SiricusandtheMilitia) then
        OfferQuest(NPC, Spawn, SiricusandtheMilitia)
    end
    if GetQuestStep(Spawn, SiricusandtheMilitia) == 2 then
        SetStepComplete(Spawn, SiricusandtheMilitia, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/siricus_calventius/fprt_hood04/100_std_siricus_calventius_hum_m_callout1_12a2e93c.mp3", "How dare you enter my house, scoundrel! This time you're not destroying my figurines!\r\n\r\n", "", 2618163617, 4254987101, Spawn, 0)
	end
end