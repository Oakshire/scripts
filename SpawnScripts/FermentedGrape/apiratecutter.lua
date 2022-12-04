--[[
    Script Name    : SpawnScripts/FermentedGrape/apiratecutter.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 05:12:23
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
AddTimer(NPC,MakeRandomInt(2000,5000),"EmoteLoop")
end

function EmoteLoop(NPC)
    if not IsInCombat(NPC) then
    SpawnSet(NPC,"mood_state",11852)
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","","threaten",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","taunt",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","neener",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","","swear",0,0)   
    elseif choice ==5 then
    PlayFlavor(NPC,"","","violin",0,0) 
    end
    end
    AddTimer(NPC,5000,"EmoteLoop")
end



function respawn(NPC)
	spawn(NPC)
end