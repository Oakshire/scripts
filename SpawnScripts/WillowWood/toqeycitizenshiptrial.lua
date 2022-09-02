--[[
    Script Name    : SpawnScripts/WillowWood/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.01 06:09:24
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
SetRequiredQuest(NPC, 5723, 2)
SetRequiredQuest(NPC, 5723, 3)
SetRequiredQuest(NPC, 5723, 4)
SetRequiredQuest(NPC, 5723, 5)
SetRequiredQuest(NPC, 5723, 6)
SetRequiredQuest(NPC, 5723, 7)
SetRequiredQuest(NPC, 5723, 8)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Enter the Trial' then  
    if GetQuestStep(Spawn,5723)>=2 or GetQuestStep(Spawn,5723)<=8 then
        SetStepComplete(Spawn,5723,2)
        ZoneRef = GetZone("QeynosCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end
end
end

function respawn(NPC)
	spawn(NPC)
end