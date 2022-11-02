--[[
    Script Name    : SpawnScripts/Baubbleshire/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 08:08:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 5760, 13)
SetRequiredQuest(NPC, 5718, 2)
SetRequiredQuest(NPC, 5718, 3)
SetRequiredQuest(NPC, 5718, 4)
SetRequiredQuest(NPC, 5718, 5)
SetRequiredQuest(NPC, 5718, 6)
SetRequiredQuest(NPC, 5718, 7)
SetRequiredQuest(NPC, 5718, 8)
end


function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Use citizenship sign' then  
 if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760)==13 and not HasItem(Spawn, 13942,1) and not HasCompletedQuest(Spawn,5718) and not HasItem(Spawn, 13942,1) then
	    SendMessage(Spawn, "You pull an application for citizenship from the wall.")
        Quest = GetQuest(Spawn,5760)
        GiveQuestItem(Quest, Spawn, "I must complete this task to become a Citizen of Qeynos.", 13942)
        
    elseif not HasQuest(Spawn, 5718) and HasItem(Spawn, 13942,1) or  GetQuestStep(Spawn,5718)==1 and HasItem(Spawn, 13942,1) then
	    SendMessage(Spawn, "I must complete my citizenship task before performing the Citizenship Trial.")
        SendPopUpMessage(Spawn, "I must complete my citizenship task before performing the Citizenship Trial.", 200, 200, 200)        
	    
    elseif HasQuest(Spawn, 5718) and GetQuestStep(Spawn,5718)>=2 or HasQuest(Spawn, 5718) and GetQuestStep(Spawn,5718)<=8 then
    local con = CreateConversation()
    AddConversationOption(con, "Yes", "Leave")
    AddConversationOption(con, "No","CloseConversation")
    StartDialogConversation(con, 1, NPC, Player, "You have all the tokens required to enter the Trial Chamber.  Do you wish to begin the trial?")
end
end 
end

 function Leave(NPC,Spawn)       
        CloseConversation(NPC,Player)
        if GetQuestStep(Spawn,5718)==2 then
        SetStepComplete(Spawn,5718,2)
        end
        ZoneRef = GetZone("QeynosCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end



function respawn(NPC)
	spawn(NPC)
end