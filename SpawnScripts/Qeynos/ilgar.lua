--[[
	Script Name		:	ilgar.lua
	Script Purpose	:	Waypoint Path for ilgar.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 02:45:39 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", 0, 0, Spawn)
	end
end


function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 469.14, -20.96, 194.86, 2, 0)
	MovementLoopAddLocation(NPC, 406.76, -20.87, 145.25, 2, 0)
	MovementLoopAddLocation(NPC, 421.86, -20.93, 168.96, 2, 0)
	MovementLoopAddLocation(NPC, 436.36, -20.26, 209.37, 2, 0)
	MovementLoopAddLocation(NPC, 452.7, -21.95, 242.39, 2, 0)
	MovementLoopAddLocation(NPC, 455.55, -21.92, 244.74, 2, 6)
	MovementLoopAddLocation(NPC, 469.7, -21.06, 196.34, 2, 0)
	MovementLoopAddLocation(NPC, 455.55, -21.92, 244.74, 2, 0)
	MovementLoopAddLocation(NPC, 441.84, -21.92, 263.49, 2, 0)
	MovementLoopAddLocation(NPC, 452.7, -21.95, 242.39, 2, 0)
	MovementLoopAddLocation(NPC, 436.36, -20.26, 209.37, 2, 0)
	MovementLoopAddLocation(NPC, 421.86, -20.93, 168.96, 2, 0)
	MovementLoopAddLocation(NPC, 406.76, -20.87, 145.25, 2, 0)
	MovementLoopAddLocation(NPC, 469.14, -20.96, 194.86, 2, 0)
end


