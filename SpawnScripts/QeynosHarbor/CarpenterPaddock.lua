--[[
	Script Name	: SpawnScripts/QeynosHarbor/CarpenterPaddock.lua
	Script Purpose	: Carpenter Paddock 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/100_qst_carpenter_paddock_callout1_67878a5c.mp3", "We're running low on wood, but I don't want to mention it to Overseer Scarbourough until he calms down.", "", 2460409827, 3332556210, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/100_qst_carpenter_paddock_multhail1_f2e09d24.mp3", "I'm very busy! Sorry, I've no time to talk!", "", 2269345214, 1588506015, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/100_qst_carpenter_paddock_multhail2_e3288657.mp3", "I'm very busy! I must get more wood! ", "", 2812949705, 1915264340, Spawn)
	else
	end

end

