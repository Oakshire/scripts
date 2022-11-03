--[[
    Script Name    : SpawnScripts/Nettleville/toqeycitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.01 06:09:39
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
SetRequiredQuest(NPC, 5763, 13)
SetRequiredQuest(NPC, 5721, 2)
SetRequiredQuest(NPC, 5721, 3)
SetRequiredQuest(NPC, 5721, 4)
SetRequiredQuest(NPC, 5721, 5)
SetRequiredQuest(NPC, 5721, 6)
SetRequiredQuest(NPC, 5721, 7)
SetRequiredQuest(NPC, 5721, 8)
end

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Use citizenship sign' then  
 if HasQuest(Spawn,5763) and not HasCompletedQuest(Spawn,5721) and not HasItem(Spawn, 10044,1) then
	    SendMessage(Spawn, "You pull an application for citizenship from the wall.")
        Quest = GetQuest(Spawn,5763)
        GiveQuestItem(Quest, Spawn, "I must complete this task to become a Citizen of Qeynos.", 10044)
        
    elseif not HasQuest(Spawn, 5721) and HasItem(Spawn, 10044,1) or  GetQuestStep(Spawn,5721)==1 and HasItem(Spawn, 10044,1) then
	    SendMessage(Spawn, "I must complete my citizenship task before performing the Citizenship Trial.")
        SendPopUpMessage(Spawn, "I must complete my citizenship task before performing the Citizenship Trial.", 200, 200, 200)        
	    
    elseif HasQuest(Spawn, 5721) and GetQuestStep(Spawn,5721)>=2 or HasQuest(Spawn, 5721) and GetQuestStep(Spawn,5721)<=8 then
    local con = CreateConversation()
    AddConversationOption(con, "Yes", "Leave")
    AddConversationOption(con, "No","CloseConversation")
    StartDialogConversation(con, 1, NPC, Spawn, "You have all the tokens required to enter the Trial Chamber.  Do you wish to begin the trial?")
end
end 
end

 function Leave(NPC,Spawn)       
        CloseConversation(NPC,Spawn)
        if GetQuestStep(Spawn,5721)==2 then
        SetStepComplete(Spawn,5721,2)
        end
        ZoneRef = GetZone("QeynosCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end



function respawn(NPC)
	spawn(NPC)
end