--[[
    Script Name    : SpawnScripts/Kugup/trashplatform.lua
    Script Author  : neatz09
    Script Date    : 2023.05.06 12:05:37
    Script Purpose : handles the proximity check for the quest "Taking Out the Trash"
                   : 
--]]
local TakingOuttheTrash = 5810
function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    if GetQuestStep(Spawn, TakingOuttheTrash) then SendMessage(Spawn, "This is where I am supposed to place the trash...", "White")
end
end

function LeaveRange(NPC, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end