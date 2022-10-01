--[[
	Script Name	: harvest.lua
	Script Purpose	: Fishing, Foresting, Gathering/Collecting, Mining, Trapping
	Script Author	: John Adams
	Script Date	: 2008.12.05
	Script Notes	: 
--]]

function precast(Caster, Target)
    if IsGroundSpawn(Target) then
      return CanHarvest(Caster, Target)
    end
   
   
   return false
end

function cast(Caster, Target)
   	Harvest(Caster, Target)
end
