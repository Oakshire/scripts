--[[
    Script Name    : SpawnScripts/Longshadow/zonetofprtnorth0.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.29 12:06:51
    Script Purpose : 
                   : 
--]]
   local invul = IsInvulnerable(Spawn)

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Enter South Freeport' then  
    if not HasCompletedQuest(Spawn,5866) and
     not HasCompletedQuest(Spawn,5867) and
     not HasCompletedQuest(Spawn,5868) and
     not HasCompletedQuest(Spawn,5869) and
     not HasCompletedQuest(Spawn,5870) and 
     not HasCompletedQuest(Spawn,5871) 
     and GetFactionAmount(Spawn,12)<50000 or
     invul == true then
         
    if HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862)==10 then
    SetStepComplete(Spawn,5862,10)
    end  
    
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    SendPopUpMessage(Spawn,"Only Freeport citizens may enter the city.",255,50,50)
    SendMessage(Spawn,"Only Freeport citizens may enter the city.","red")
    
    else
        ZoneRef = GetZone("NorthFreeport")
        Zone(ZoneRef,Spawn,-81.61, -34.58, -3370.35, 181.78)        
    end    
end     
end    
