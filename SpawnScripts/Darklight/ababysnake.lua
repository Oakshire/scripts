--[[
    Script Name    : SpawnScripts/Darklight/ababysnake.lua
    Script Author  : fearfx
    Script Date    : 2017.01.21 11:01:06
    Script Purpose : 
                   : 
--]]

local InfantileIngredients = 157

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == "gather " then
                    Despawn(NPC)
		    SummonItem(Spawn, 4080)
		end
end