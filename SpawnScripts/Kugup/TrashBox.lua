--[[
    Script Name    : SpawnScripts/Kugup/TrashBox.lua
    Script Author  : neatz09
    Script Date    : 2023.05.05 11:05:05
    Script Purpose : 
                   : 
--]]

local TakingOuttheTrash = 5810
local trashsack = 2558
function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Collect Trash" then
				if GetQuestStep(Spawn, TakingOuttheTrash) == 1 then
				if HasItem(Spawn, trashsack) then SendMessage(Spawn, "you can only carry one trash bag at a time. You must place the current trash bag on the platform before picking up another.", "White")
else
		    SummonItem(Spawn, 2558, 1)
			AddStepProgress(Spawn, TakingOuttheTrash, 1, 1)
end
end
end
end

function respawn(NPC)
	spawn(NPC)
end