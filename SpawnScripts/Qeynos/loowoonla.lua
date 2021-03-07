--[[
	Script Name		:	loowoonla.lua
	Script Purpose	:	Waypoint Path for loowoonla.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 02:13:55 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
		spawn(NPC)
		end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 673.87, -17.95, 193.59, 2, 0)
	MovementLoopAddLocation(NPC, 680.77, -19.28, 191.96, 2, 0)
	MovementLoopAddLocation(NPC, 679.3, -19.37, 187.84, 2, 0)
	MovementLoopAddLocation(NPC, 610.55, -15.73, 204.39, 2, 0)
	MovementLoopAddLocation(NPC, 610.83, -16.46, 210.65, 2, 0)
	MovementLoopAddLocation(NPC, 673.56, -17.95, 193.43, 2, 0)
	MovementLoopAddLocation(NPC, 673.73, -17.95, 193.1, 2, 0)
	MovementLoopAddLocation(NPC, 643.87, -17.95, 202.22, 2, 0)
	MovementLoopAddLocation(NPC, 627.89, -17.14, 206.89, 2, 0)
	MovementLoopAddLocation(NPC, 611.38, -16.46, 211.17, 2, 0)
	MovementLoopAddLocation(NPC, 610.28, -15.74, 204.39, 2, 0)
	MovementLoopAddLocation(NPC, 548.65, -15.26, 212.37, 2, 0)
	MovementLoopAddLocation(NPC, 549.57, -9.98, 164.3, 2, 0)
	MovementLoopAddLocation(NPC, 547.37, -10.5, 153.68, 2, 0)
	MovementLoopAddLocation(NPC, 509.28, -10.93, 147.02, 2, 0)
	MovementLoopAddLocation(NPC, 490.05, -11.41, 143.3, 2, 0)
	MovementLoopAddLocation(NPC, 434.73, -11.61, 114.07, 2, 0)
	MovementLoopAddLocation(NPC, 490.05, -11.41, 143.3, 2, 0)
	MovementLoopAddLocation(NPC, 509.28, -10.93, 147.02, 2, 0)
	MovementLoopAddLocation(NPC, 547.37, -10.5, 153.68, 2, 0)
	MovementLoopAddLocation(NPC, 549.57, -9.98, 164.3, 2, 0)
	MovementLoopAddLocation(NPC, 548.65, -15.26, 212.37, 2, 0)
	MovementLoopAddLocation(NPC, 610.28, -15.74, 204.39, 2, 0)
	MovementLoopAddLocation(NPC, 611.38, -16.46, 211.17, 2, 0)
	MovementLoopAddLocation(NPC, 627.89, -17.14, 206.89, 2, 0)
	MovementLoopAddLocation(NPC, 643.87, -17.95, 202.22, 2, 0)
	MovementLoopAddLocation(NPC, 673.73, -17.95, 193.1, 2, 0)
	MovementLoopAddLocation(NPC, 673.56, -17.95, 193.43, 2, 0)
	MovementLoopAddLocation(NPC, 610.83, -16.46, 210.65, 2, 0)
	MovementLoopAddLocation(NPC, 610.55, -15.73, 204.39, 2, 0)
	MovementLoopAddLocation(NPC, 679.3, -19.37, 187.84, 2, 0)
	MovementLoopAddLocation(NPC, 680.77, -19.28, 191.96, 2, 0)
	MovementLoopAddLocation(NPC, 673.87, -17.95, 193.59, 2, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_aoi_gf_7fcbca60.mp3", "An era of darkness has finally come to a close. Now we must see what future Norrath has in store.", "confused", 2437621868, 2071976840, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_5453f96d.mp3", "Paradise has always been here on Norrath for those who are thoughtful and responsible for their actions.", "thanks", 3529954798, 1064012556, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_e0bc946.mp3", "I have felt the stirrings of a strong magical influence.  Good fortune will follow to those with the will to persevere!", "ponder", 4152344209, 239250643, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_84882e21.mp3", "You must not be afraid to trust others.  Openness is the key to finding a correct solution.", "sigh", 1792907516, 2786700542, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/erudite_eco_good_1/ft/erudite/erudite_eco_good_1_hail_gf_7895591c.mp3", "If we focus on the higher truths that govern our actions, we fathom the underlying power within them.", "curtsey", 2416988832, 3319542974, Spawn)
	else
	end

end

