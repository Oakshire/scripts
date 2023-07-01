--[[
    Script Name    : SpawnScripts/ScaleYard/tofprtcitizenshiptrial.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.30 07:06:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 5863, 13)
SetRequiredQuest(NPC, 5869, 2)
SetRequiredQuest(NPC, 5869, 3)
SetRequiredQuest(NPC, 5869, 4)
SetRequiredQuest(NPC, 5869, 5)
end


function respawn(NPC)
	spawn(NPC)
end

local TaskSheet = 14235
local WelcomeQuest = 5863
local TaskQuest = 5869

function casted_on(NPC, Spawn,SpellName)
 if SpellName == 'Use citizenship sign' then  
 if HasQuest(Spawn,WelcomeQuest) and not HasCompletedQuest(Spawn,TaskQuest) and not HasItem(Spawn, TaskSheet,1) then
        Quest = GetQuest(Spawn,WelcomeQuest)
	    SendMessage(Spawn, "You pull an application for citizenship from the wall.")
        GiveQuestItem(Quest, Spawn, "I must complete this task to become a Citizen of Qeynos.", TaskSheet)
        
    elseif not HasQuest(Spawn, TaskQuest) and HasItem(Spawn, TaskSheet,1) or  GetQuestStep(Spawn,TaskQuest)==1 and HasItem(Spawn, TaskSheet,1) then
	    SendMessage(Spawn, "I must complete my citizenship task before performing the Citizenship Trial.")
        SendPopUpMessage(Spawn, "I must complete my citizenship task before performing the Citizenship Trial.", 200, 200, 200)        
	    
    elseif HasQuest(Spawn, TaskQuest) and GetQuestStep(Spawn,TaskQuest)>=2 and GetQuestStep(Spawn,TaskQuest)<=5 then
    local con = CreateConversation()
    AddConversationOption(con, "Yes", "Leave")
    AddConversationOption(con, "No","CloseConversation")
    StartDialogConversation(con, 1, NPC, Spawn, "You have all the tokens required to enter the Trial Chamber.  Do you wish to begin the trial?")
end
end 
end

 function Leave(NPC,Spawn)       
        CloseConversation(NPC,Spawn)
        if GetQuestStep(Spawn,TaskQuest)==2 then
        SetStepComplete(Spawn,TaskQuest,2)
        end
        ZoneRef = GetZone("FreeportCitizenshipTrialChamber")
        Zone(ZoneRef,Spawn)      
    end



function respawn(NPC)
	spawn(NPC)
end