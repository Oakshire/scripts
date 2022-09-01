--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/dpoinvisiblecube.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 10:08:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end
--0.390625
function hailed(NPC, Spawn)
    MoveToLocation(NPC,21.47, 0.00, -5.98,6)
	SetHeading(NPC,"265")
end

function respawn(NPC)
	spawn(NPC)
end