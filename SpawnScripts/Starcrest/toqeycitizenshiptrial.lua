--[[
    Script Name    : SpawnScripts/Starcrest/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.01 06:09:25
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
SetRequiredQuest(NPC, 5722, 2)
SetRequiredQuest(NPC, 5722, 3)
SetRequiredQuest(NPC, 5722, 4)
SetRequiredQuest(NPC, 5722, 5)
SetRequiredQuest(NPC, 5722, 6)
SetRequiredQuest(NPC, 5722, 7)
SetRequiredQuest(NPC, 5722, 8)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Enter the Trial' then  
    if GetQuestStep(Spawn,5722)>=2 or GetQuestStep(Spawn,5722)<=8 then
        SetStepComplete(Spawn,5722,2)
        ZoneRef = GetZone("QeynosCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end
end
end

function respawn(NPC)
	spawn(NPC)
end