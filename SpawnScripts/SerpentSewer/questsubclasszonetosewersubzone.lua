--[[
    Script Name    : SpawnScripts/SerpentSewer/questsubclasszonetosewersubzone.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 04:07:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Door to a storage room' then
        SendMessage(Spawn, "The door seems to have a non-regulation lock placed on it.")
   end
 end


function respawn(NPC)
	spawn(NPC)
end