--[[
    Script Name    : SpawnScripts/Commonlands/zonetocmmnepic02mage.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.23 07:02:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, use)
if not HasQuest(Spawn, 446) then
SetAccessToEntityCommand(NPC, Spawn ,"use",0)
end 
  end


function respawn(NPC)

end

