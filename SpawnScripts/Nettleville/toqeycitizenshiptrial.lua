--[[
    Script Name    : SpawnScripts/Nettleville/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.01 06:09:39
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
SetRequiredQuest(NPC, 5721, 2)
SetRequiredQuest(NPC, 5721, 3)
SetRequiredQuest(NPC, 5721, 4)
SetRequiredQuest(NPC, 5721, 5)
SetRequiredQuest(NPC, 5721, 6)
SetRequiredQuest(NPC, 5721, 7)
SetRequiredQuest(NPC, 5721, 8)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Enter the Trial' then  
    if GetQuestStep(Spawn,5721)>=2 or GetQuestStep(Spawn,5721)<=8 then
        SetStepComplete(Spawn,5721,2)
        ZoneRef = GetZone("QeynosCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end
end
end

function respawn(NPC)
	spawn(NPC)
end