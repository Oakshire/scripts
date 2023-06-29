--[[
    Script Name    : SpawnScripts/Stonestair/zonetofprtnorth.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.29 04:06:06
    Script Purpose : 
                   : 
--]]

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Enter North Freeport' then  
    if not HasCompletedQuest(Spawn,5860) and
     not HasCompletedQuest(Spawn,5861) and
     not HasCompletedQuest(Spawn,5862) and
     not HasCompletedQuest(Spawn,5863) and
     not HasCompletedQuest(Spawn,5864) and 
     not HasCompletedQuest(Spawn,5859) 
     and GetFactionAmount(Spawn,12)<50000 then
         
    if HasQuest(Spawn,5859) and GetQuestStep(Spawn,5859)==10 then
    SetStepComplete(Spawn,5859,10)
    end  
    
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    SendPopUpMessage(Spawn,"Only Freeport citizens may enter the city.",255,50,50)
    SendMessage(Spawn,"Only Freeport citizens may enter the city.","red")
    
    else
        ZoneRef = GetZone("NorthFreeport")
        Zone(ZoneRef,Spawn,-4.56, -20.05, -308.55, 180.63)        
    end    
end     
end    
