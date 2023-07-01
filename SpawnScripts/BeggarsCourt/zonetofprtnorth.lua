--[[
    Script Name    : SpawnScripts/BeggarsCourt/zonetofprtnorth.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.29 01:06:29
    Script Purpose : 
                   : 
--]]

function casted_on(NPC, Spawn,SpellName)
    local invul = IsInvulnerable(Spawn)
if SpellName == 'Enter South Freeport' then  
    if not HasCompletedQuest(Spawn,5866) and
     not HasCompletedQuest(Spawn,5867) and
     not HasCompletedQuest(Spawn,5868) and
     not HasCompletedQuest(Spawn,5869) and
     not HasCompletedQuest(Spawn,5870) and 
     not HasCompletedQuest(Spawn,5871) 
     and GetFactionAmount(Spawn,12)<50000 or
     invul == true then
         
    if HasQuest(Spawn,5861) and GetQuestStep(Spawn,5861)==10 then
    SetStepComplete(Spawn,5861,10)
    end  
    
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    SendPopUpMessage(Spawn,"Only Freeport citizens may enter the city.",255,50,50)
    SendMessage(Spawn,"Only Freeport citizens may enter the city.","red")
    
    else
        ZoneRef = GetZone("NorthFreeport")
        Zone(ZoneRef,Spawn,-149.38, -50.6, -376.76, 204.84)        
    end    
end     
end    