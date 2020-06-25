--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)
   MovementLoopAddLocation(NPC, x - 2 , y, z + 8 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x + 7 , y, z + 5 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x     , y, z - 6 , 2, math.random(5, 15))
   MovementLoopAddLocation(NPC, x - 9 , y, z - 1 , 2, math.random(5, 15))
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function death(NPC, Spawn)
	rand = math.random(0, 100)
	if rand <= 20 then
		choice = math.random(1, 2)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/ghost_darkelf_base_1/ft/ghost/ghost_darkelf_base_1_1_death_gf_b5958785.mp3", "Hold them and I'll return with others like us!", "", 3769472925, 2964757475, Spawn)
		else
			Say(NPC, "The others will be back for you.", Spawn)
		end
	end
end
