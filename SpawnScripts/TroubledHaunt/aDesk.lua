--[[
    Script Name    : SpawnScripts/TroubledHaunt/aDesk.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 12:11:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
Spin(NPC)
end



function Spin(NPC)
if GetSpawnLocationID(NPC)==133780834 then
	Head = GetHeading(NPC)
	SetHeading(NPC,(Head+5))
	AddTimer(NPC,100,"Spin")
end
end

function respawn(NPC)
	spawn(NPC)
end