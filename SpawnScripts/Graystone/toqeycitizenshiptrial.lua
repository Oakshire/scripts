--[[
    Script Name    : SpawnScripts/Graystone/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.01 06:09:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 5720, 2)
SetRequiredQuest(NPC, 5720, 3)
SetRequiredQuest(NPC, 5720, 4)
SetRequiredQuest(NPC, 5720, 5)
SetRequiredQuest(NPC, 5720, 6)
SetRequiredQuest(NPC, 5720, 7)
SetRequiredQuest(NPC, 5720, 8)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Enter the Trial' then  
    if GetQuestStep(Spawn,5720)>=2 or GetQuestStep(Spawn,5720)<=8 then
        SetStepComplete(Spawn,5720,2)
        ZoneRef = GetZone("QeynosCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end
end
end

function respawn(NPC)
	spawn(NPC)
end