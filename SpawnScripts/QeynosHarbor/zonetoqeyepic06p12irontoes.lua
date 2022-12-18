--[[
    Script Name    : SpawnScripts/QeynosHarbor/zonetoqeyepic06p12irontoes.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.05 05:12:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5783,1,0,0,1)
    SetRequiredQuest(NPC,5785,1,0,0,1)
    SetRequiredQuest(NPC,5789,1,0,0,1)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Enter the Cache' then
    if HasQuest(Spawn,5783) and not HasCompletedQuest(Spawn,5783) then
         Rogue = GetZone("Rogue_Cache")
        Zone(Rogue,Spawn)
    elseif HasQuest(Spawn,5785) and not HasCompletedQuest(Spawn,5785) then
         Predator = GetZone("Cache")
        Zone(Predator,Spawn)      
    elseif HasQuest(Spawn,5789) and not HasCompletedQuest(Spawn,5789) then
         Predator = GetZone("BuccaneersHideout")
        Zone(Predator,Spawn)     
        end
end
end