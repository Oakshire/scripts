--[[
    Script Name    : SpawnScripts/Commonlands/desertroots.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.01 09:06:43
    Script Purpose : 
                   : 
--]]

local LionManeHelm = 5249

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Gather' then
		      if GetQuestStep(Spawn, LionManeHelm) == 2 then
                     AddStepProgress(Spawn, LionManeHelm, 2, 1)  
end
   end
      end

function respawn(NPC)
	spawn(NPC)
end