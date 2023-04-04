--[[
	Script Name		: SpawnScripts/TheHiddenVillageofKugup/SenseiGrrupin.lua
	Script Purpose	: Sensei Grrupin
	Script Author	: neatz09
	Script Date		: 2023.04.03
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "The Hand of Marr will always guide the faithful! Do not let yourself become distracted by what goes on around us! Concentrate!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "My warriors, let us take a moment to reflect on our strengths! Together, we can overcome any obstacle.", "", 0, 0, Spawn, 0)
	end
end