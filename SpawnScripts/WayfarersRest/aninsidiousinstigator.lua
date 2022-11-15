--[[
    Script Name    : SpawnScripts/WayfarersRest/aninsidiousinstigator.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.14 05:11:01
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseDarkelf1_Male.lua")

function spawn(NPC)
AddTimer(NPC,MakeRandomInt(2000,5000),"EmoteLoop")
end

function EmoteLoop(NPC)
local zone = GetZone(NPC)
local Darkelf = GetSpawnByLocationID(zone, 133780688)   
if not IsInCombat(NPC) and IsAlive(NPC)then
if IsAlive(Darkelf) then
    SpawnSet(NPC,"mood_state",11852)
    choice = MakeRandomInt(1,5)
    if choice ==1 then
    PlayFlavor(NPC,"","","scheme",0,0)
    elseif choice ==2 then
    PlayFlavor(NPC,"","","smirk",0,0)
    elseif choice ==3 then
    PlayFlavor(NPC,"","","cackle",0,0)        
    elseif choice ==4 then
    PlayFlavor(NPC,"","","chuckle",0,0)   
    elseif choice ==5 then
    PlayFlavor(NPC,"","","scheme",0,0) 
    end
    AddTimer(NPC,7000,"EmoteLoop")
end
end
end

function respawn(NPC)
	spawn(NPC)
end

