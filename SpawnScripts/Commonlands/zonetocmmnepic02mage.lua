--[[
    Script Name    : SpawnScripts/Commonlands/zonetocmmnepic02mage.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.23 07:02:51
    Script Purpose : 
                   : 
--]]



function spawn(NPC)

end

function casted_on(NPC, Spawn, EntityCommand)
if not HasCompletedQuest(Spawn, 446) then
     if EntityCommand == "use" then
SetAccessToEntityCommand(Spawn, NPC ,"use",0)
elseif HasCompletedQuest(Spawn, 446) then
SetAccessToEntityCommand(Spawn, NPC ,"use",1)
end 
    end
       end
  
  
function respawn(NPC)

end

