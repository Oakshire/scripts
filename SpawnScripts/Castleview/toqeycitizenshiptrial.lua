--[[
    Script Name    : SpawnScripts/Castleview/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.01 06:09:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 5719, 2)
SetRequiredQuest(NPC, 5719, 3)
SetRequiredQuest(NPC, 5719, 4)
SetRequiredQuest(NPC, 5719, 5)
SetRequiredQuest(NPC, 5719, 6)
SetRequiredQuest(NPC, 5719, 7)
SetRequiredQuest(NPC, 5719, 8)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Enter the Trial' then  
    if GetQuestStep(Spawn,5719)>=2 or GetQuestStep(Spawn,5719)<=8 then
        SetStepComplete(Spawn,5719,2)
        ZoneRef = GetZone("QeynosCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end
end
end

function respawn(NPC)
	spawn(NPC)
end