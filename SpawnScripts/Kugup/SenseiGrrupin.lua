--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/SenseiGrrupin.lua
	Script Purpose	: Sensei Grrupin
	Script Author	: neatz09
	Script Date		: 2023.05.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "", "Excellent work all! Froak!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "FRRRRROOOOOOOAKKK!!!", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "We will never give up! Take a deep breath; we are readying to begin anew! With honor!", "", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "The Hand of Marr will always guide the faithful! Do not let yourself become distracted by what goes on around us! Concentrate!", "", 0, 0, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Do not be discouraged by lack of success; be inspired! Every journey begins with the smallest of hops.", "", 0, 0, Spawn, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "My warriors, let us take a moment to reflect on our strengths! Together, we can overcome any obstacle.", "", 0, 0, Spawn, 0)
	end
end