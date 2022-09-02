--[[
    Script Name    : SpawnScripts/Baubbleshire/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 08:08:36
    Script Purpose : 
                   : 
--]]
--\\\\##FFFF00You pull an application for citizenship from the wall.

function spawn(NPC)
SetRequiredQuest(NPC, 5718, 2)
SetRequiredQuest(NPC, 5718, 3)
SetRequiredQuest(NPC, 5718, 4)
SetRequiredQuest(NPC, 5718, 5)
SetRequiredQuest(NPC, 5718, 6)
SetRequiredQuest(NPC, 5718, 7)
SetRequiredQuest(NPC, 5718, 8)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Enter the Trial' then  
    if GetQuestStep(Spawn,5718)>=2 or GetQuestStep(Spawn,5718)<=8 then
        SetStepComplete(Spawn,5718,2)
        ZoneRef = GetZone("QeynosCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end
end
end

function respawn(NPC)
	spawn(NPC)
end