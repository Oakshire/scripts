--[[
    Script Name    : SpawnScripts/Castleview/Felwithe.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.25 01:01:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Nuzzle' then
      FaceTarget(NPC,Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end