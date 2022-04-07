--[[
	Script Name		:	ward.lua
	Script Purpose	:	Waypoint Path for ward.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 07:14:21 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1,2)
	if choice == 1 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_good_barmaid/ft/eco/good/human_eco_good_barmaid_hail_gf_619dfe80.mp3", "Its always hard to keep everyone happy around here.  There's always someone whose thirsty or needs a mess cleaned.", "shrug", 3234664124, 1293275447, Spawn)
	elseif choice == 2 then
        		PlayFlavor(NPC, "voiceover/english/human_eco_good_barmaid/ft/eco/good/human_eco_good_barmaid_hail_gf_bdae1710.mp3", "With so many refugees pouring in I can't keep track of what everyone's favorite brew is.", "confused", 1663138042, 4048896728, Spawn)

	end
end
function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 516.21, -9.57, 127.12, 2, 0)
	MovementLoopAddLocation(NPC, 520.3, -9.56, 131.57, 2, 0)
	MovementLoopAddLocation(NPC, 528.81, -9.56, 132.14, 2, 0)
	MovementLoopAddLocation(NPC, 539.78, -9.56, 130.42, 2, 0)
	MovementLoopAddLocation(NPC, 546.81, -8.54, 130.56, 2, 0)
	MovementLoopAddLocation(NPC, 546.72, -6.55, 121.26, 2, 0)
	MovementLoopAddLocation(NPC, 541.75, -5.55, 121.25, 2, 0)
	MovementLoopAddLocation(NPC, 541.86, -3.5, 127.97, 2, 0)
	MovementLoopAddLocation(NPC, 530.14, -3.5, 128.28, 2, 0)
	MovementLoopAddLocation(NPC, 511.74, -3.48, 126.13, 2, 0)
	MovementLoopAddLocation(NPC, 530.14, -3.5, 128.28, 2, 0)
	MovementLoopAddLocation(NPC, 541.86, -3.5, 127.97, 2, 0)
	MovementLoopAddLocation(NPC, 541.75, -5.55, 121.25, 2, 0)
	MovementLoopAddLocation(NPC, 546.72, -6.55, 121.26, 2, 0)
	MovementLoopAddLocation(NPC, 546.81, -8.54, 130.56, 2, 0)
	MovementLoopAddLocation(NPC, 539.78, -9.56, 130.42, 2, 0)
	MovementLoopAddLocation(NPC, 528.81, -9.56, 132.14, 2, 0)
	MovementLoopAddLocation(NPC, 520.3, -9.56, 131.57, 2, 0)
	MovementLoopAddLocation(NPC, 516.21, -9.57, 127.12, 2, 0)
end


