--[[
	Script Name		:	patricia.lua
	Script Purpose	:	Waypoint Path for patricia.lua
	Script Author	:	Devn00b
	Script Date		:	04/12/2020 11:44:25 AM
	Script Notes	:	Locations collected from Live
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	waypoints(NPC)
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Sorry, I can't visit right now.  Too much work to do around the Ironforge estate.")
	Dialog.AddVoiceover("voiceover/english/maid_patricia/qey_north/maidpatricia.mp3", 604188416, 2120509442)
	Dialog.AddOption("I understand.")
	Dialog.Start()
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 424.07, -20.43, -326.34, 2, 30)
	MovementLoopAddLocation(NPC, 426.93, -20.52, -310.88, 2, 30)
	MovementLoopAddLocation(NPC, 477.09, -19.67, -292.41, 2, 30)
	MovementLoopAddLocation(NPC, 464.39, -20.19, -309.44, 2, 30)
	MovementLoopAddLocation(NPC, 485.71, -20.43, -310.97, 2, 30)
	MovementLoopAddLocation(NPC, 473.28, -20.55, -319.93, 2, 30)
	MovementLoopAddLocation(NPC, 466.2, -19.66, -346.58, 2, 30)
	MovementLoopAddLocation(NPC, 448.72, -20.33, -319.51, 2, 30)
	MovementLoopAddLocation(NPC, 425.26, -20.44, -329.69, 2, 30)
	MovementLoopAddLocation(NPC, 448.72, -20.33, -319.51, 2, 30)
	MovementLoopAddLocation(NPC, 466.2, -19.66, -346.58, 2, 30)
	MovementLoopAddLocation(NPC, 473.28, -20.55, -319.93, 2, 30)
	MovementLoopAddLocation(NPC, 485.71, -20.43, -310.97, 2, 30)
	MovementLoopAddLocation(NPC, 464.39, -20.19, -309.44, 2, 30)
	MovementLoopAddLocation(NPC, 477.09, -19.67, -292.41, 2, 30)
	MovementLoopAddLocation(NPC, 426.93, -20.52, -310.88, 2, 30)
	MovementLoopAddLocation(NPC, 424.07, -20.43, -326.34, 2, 30)
end


