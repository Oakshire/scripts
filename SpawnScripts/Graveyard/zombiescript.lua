--[[
	Script Name	: SpawnScripts/Graveyard/zombiescript.lua
	Script Purpose	: Script for zombies in zone "The Graveyard" for quest with bone fragments "Bone Dust(583)"
	Script Author	: premierio015
	Script Date	: 2020.11.11
	Script Notes	:

--]]

local BoneDust = 583


function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end




function death(NPC, Spawn)
      if HasQuest(Spawn, BoneDust) then
        local choice = math.random(1, 4)
        if choice == 1 then
        AddStepProgress(Spawn, 583, 1, 2)
        elseif choice == 2 then
         AddStepProgress(Spawn, 583, 1, 4)
        elseif choice == 3 then
         AddStepProgress(Spawn, 583, 1, 6)
        elseif choice == 4 then
         AddStepProgress(Spawn, 583, 1, 7)
	end
end
  end