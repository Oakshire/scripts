--[[
    Script Name    : SpawnScripts/QeynosHarbor/alostkey.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.24 08:10:37
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'get' then
    Despawn(NPC)
    SummonItem(Spawn,1001032,1)
    SendMessage(Spawn,"You pick up an old discarded key. Perhaps it has some use?")
end
end

function respawn(NPC)
	spawn(NPC)
end