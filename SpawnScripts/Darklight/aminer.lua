--[[
	Script Name	: SpawnScripts/Darklight/aminer.lua
	Script Purpose	: a miner <Hate's Envy Miner>
	Script Author	: John Adams
	Script Date	: 2009.02.01
	Script Notes	: Male Miner that does walk around newbie area
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -413.11, -62.87, 239.47, 3, 0)
	MovementLoopAddLocation(NPC, -412.00, -62.87, 222.83, 3, 0)
	MovementLoopAddLocation(NPC, -413.56, -62.87, 218.93, 3, 0)
	MovementLoopAddLocation(NPC, -406.88, -62.87, 216.64, 3, 0)
	MovementLoopAddLocation(NPC, -404.18, -62.87, 214.02, 3, 0)
	MovementLoopAddLocation(NPC, -400.42, -62.87, 207.76, 3, 0)
	MovementLoopAddLocation(NPC, -399.92, -62.54, 202.64, 3, 0)
	MovementLoopAddLocation(NPC, -390.70, -62.87, 203.21, 3, 0)
	MovementLoopAddLocation(NPC, -386.70, -62.87, 201.74, 3, 0)
	MovementLoopAddLocation(NPC, -384.22, -62.87, 205.75, 3, 0)
	MovementLoopAddLocation(NPC, -373.58, -62.87, 208.92, 3, 0)
	MovementLoopAddLocation(NPC, -368.41, -62.87, 208.30, 3, 0)
	MovementLoopAddLocation(NPC, -367.58, -62.87, 217.60, 3, 0)
	MovementLoopAddLocation(NPC, -371.30, -62.87, 218.00, 3, 0)
	MovementLoopAddLocation(NPC, -373.85, -62.87, 223.07, 3, 0)
	MovementLoopAddLocation(NPC, -373.80, -62.87, 229.02, 3, 0)
	MovementLoopAddLocation(NPC, -371.61, -62.87, 231.72, 3, 0)
	MovementLoopAddLocation(NPC, -371.10, -62.87, 235.38, 3, 0)
	MovementLoopAddLocation(NPC, -369.62, -62.87, 236.66, 3, 0)
	MovementLoopAddLocation(NPC, -368.97, -62.87, 241.71, 3, 0)
	MovementLoopAddLocation(NPC, -382.00, -62.87, 243.54, 3, 0)
	MovementLoopAddLocation(NPC, -382.28, -62.87, 258.29, 3, 0)
	MovementLoopAddLocation(NPC, -421.53, -63.49, 258.05, 3, 0)
	MovementLoopAddLocation(NPC, -424.89, -63.26, 251.68, 3, 0)
	MovementLoopAddLocation(NPC, -411.24, -62.87, 239.38, 3, 0)
	MovementLoopAddLocation(NPC, -397.93, -62.87, 238.66, 3, 0)
	MovementLoopAddLocation(NPC, -390.59, -62.87, 247.07, 3, 0)
	MovementLoopAddLocation(NPC, -381.05, -62.87, 236.56, 3, 0)
	MovementLoopAddLocation(NPC, -380.94, -62.87, 219.24, 3, 0)
	MovementLoopAddLocation(NPC, -384.56, -62.87, 213.48, 3, 0)
	MovementLoopAddLocation(NPC, -385.33, -62.87, 209.06, 3, 0)
	MovementLoopAddLocation(NPC, -397.21, -62.87, 208.74, 3, 0)
	MovementLoopAddLocation(NPC, -401.90, -62.87, 220.72, 3, 0)
	MovementLoopAddLocation(NPC, -401.44, -62.87, 232.93, 3, 0)
	MovementLoopAddLocation(NPC, -398.28, -62.87, 238.80, 3, 0)
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

	choice = math.random(1,4)

		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/neriak/a_miner/darklight_wood/service/hates_envy/miner_male_1_hail_348fc1b3.mp3", "There hasn't been much work lately.", "", 4195669824, 624527790, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/neriak/a_miner/darklight_wood/service/hates_envy/miner_male_1_hail_e6dc69ea.mp3", "I can't believe how quickly those elementals poured from the earth!", "", 3126552969, 2583209112, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/neriak/a_miner/darklight_wood/service/hates_envy/miner_male_2_hail_a498a89c.mp3", "For Neriak and Cristanos!", "", 361255983, 2933844136, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/neriak/a_miner/darklight_wood/service/hates_envy/miner_male_1_hail_c0c3ad78.mp3", "Things are a bit rougher now, but the time off is welcome.", "", 3143475956, 184613742, Spawn)
		end

end

