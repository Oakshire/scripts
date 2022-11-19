--[[
    Script Name    : SpawnScripts/SouthQeynos/CuntyDoor.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.14 09:11:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5769,1,0,0,1)
    SetRequiredQuest(NPC,5769,2,0,0,1)
    SetRequiredQuest(NPC,5770,1,0,0,1)
    SetRequiredQuest(NPC,5770,2,0,0,1)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Enter the Trial' then
    if HasQuest(Spawn,5770) and not HasCompletedQuest(Spawn,5770) then
         Summoner = GetZone("Summonerstest")
        Zone(Summoner,Spawn)
    elseif HasQuest(Spawn,5769) and not HasCompletedQuest(Spawn,5769) then
         Sorcerer = GetZone("Sorcererstrial")
        Zone(Sorcerer,Spawn)      
    end
end
end

function respawn(NPC)
	spawn(NPC)
end