--[[
    Script Name    : Spells/Commoner/MoleratTest.lua
    Script Author  : neatz09
    Script Date    : 2019.08.29 01:08:30
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
	SummonPet(Caster, 2780089)
CallCliffdiverHawk(NPC, Spawn)
	local CliffdiverHawk = GetSpawn(NPC, 2780089)

	if CliffdiverHawk ~= nil then
		AddTimer(CliffdiverHawk, 5000, "FlyToMoleRat", 1, Spawn)
	end
	
end
