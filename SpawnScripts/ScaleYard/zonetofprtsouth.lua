--[[
    Script Name    : SpawnScripts/ScaleYard/zonetofprtsouth.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.29 01:06:36
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
         
    if HasQuest(Spawn,5863) and GetQuestStep(Spawn,5863)==10 then
    SetStepComplete(Spawn,5863,10)
    end  
    
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    SendPopUpMessage(Spawn,"Only Freeport citizens may enter the city.",255,50,50)
    SendMessage(Spawn,"Only Freeport citizens may enter the city.","red")
    
    else
        ZoneRef = GetZone("SouthFreeport")
        Zone(ZoneRef,Spawn,-61.19, -25.02, 284.33, 24.62)        
    end    
end     
end    