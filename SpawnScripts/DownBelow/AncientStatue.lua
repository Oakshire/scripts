--[[
    Script Name    : SpawnScripts/DownBelow/AncientStatue.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.08 04:01:07
    Script Purpose : 
                   : 
--]]
--You begin to place the scepter in the statue's hand, but meet some resistance.  A ring of filth and decay has built over the ages underneath the palm.  As you push the scepter into the open hand of the statue, a small golden object drops from the finger of the semi-closed palm.  You bend down to discover a tiny, dirty ring.
local Scepter = 5369 -- An Ancient Scepter

function spawn(NPC)
		SetRequiredQuest(NPC, Scepter, 1, 1)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Replace scepter' then
    SetStepComplete(Spawn, Scepter, 1)
    end
end

function respawn(NPC)
	spawn(NPC)
end