--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/HelmsmanNyles.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.30 05:04:27
    Script Purpose : Bypasses Boat/tutorial and Zones players to their cities/starting areas
                   : 
--]]
dofile("SpawnScripts/Generic/SubClassToCommoner.lua")

function spawn(NPC)
    
end

function hailed(NPC, Spawn)
    local conversation = CreateConversation()
        AddConversationOption(conversation, "Yes", "leave")
        AddConversationOption(conversation, "No")
        if GetClass(Spawn)>0 then
        AddConversationOption(conversation, "      Wait,  I'm just a commoner.              [CLASSIC CLASS CHANGE TO COMMONER].","Commoner")
        end

        
        StartConversation(conversation, NPC, Spawn, "          Head for land?          [Leave The Far Journey?]")
end

function leave(NPC, Spawn)
	PlayFlavor(NPC, "", "The captain's gonna kill me for this...", "", 0, 0, Spawn, 0)
if not HasItem(Spawn,185427) then   -- GIVES THREADBARE TUNIC
    SummonItem(Spawn,185427,1,1)
end
if not HasItem(Spawn,20902) then  -- GIVES SMALL BAG  
    SummonItem(Spawn,20902,1,1)
end
if GetLevel(Spawn)<2 then       --SET LEVEL TO 2
    SetPlayerLevel(Spawn,2)
    end

if HasQuest(Spawn, 524)then     -- COMPLETES REMAINING QUEST STEPS (Replace w/ quest removal once we figure that out)
        if GetQuestStep(Spawn,524)==1 then
        SetStepComplete(Spawn,524,1)
        SetStepComplete(Spawn,524,2)
        SetStepComplete(Spawn,524,3)
        SetStepComplete(Spawn,524,4)
        SetStepComplete(Spawn,524,5)
        SetStepComplete(Spawn,524,6)
        SetStepComplete(Spawn,524,7)
        SetStepComplete(Spawn,524,8)
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==2 then
        SetStepComplete(Spawn,524,2)
        SetStepComplete(Spawn,524,3)
        SetStepComplete(Spawn,524,4)
        SetStepComplete(Spawn,524,5)
        SetStepComplete(Spawn,524,6)
        SetStepComplete(Spawn,524,7)
        SetStepComplete(Spawn,524,8)
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==3 then
        SetStepComplete(Spawn,524,3)
        SetStepComplete(Spawn,524,4)
        SetStepComplete(Spawn,524,5)
        SetStepComplete(Spawn,524,6)
        SetStepComplete(Spawn,524,7)
        SetStepComplete(Spawn,524,8)
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==4 then
        SetStepComplete(Spawn,524,4)
        SetStepComplete(Spawn,524,5)
        SetStepComplete(Spawn,524,6)
        SetStepComplete(Spawn,524,7)
        SetStepComplete(Spawn,524,8)
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==5 then
        SetStepComplete(Spawn,524,5)
        SetStepComplete(Spawn,524,6)
        SetStepComplete(Spawn,524,7)
        SetStepComplete(Spawn,524,8)
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==6 then
        SetStepComplete(Spawn,524,6)
        SetStepComplete(Spawn,524,7)
        SetStepComplete(Spawn,524,8)
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==7 then
        SetStepComplete(Spawn,524,7)
        SetStepComplete(Spawn,524,8)
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==8 then
        SetStepComplete(Spawn,524,8)
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==9 then
        SetStepComplete(Spawn,524,9)
        SetStepComplete(Spawn,524,10)
        end
        if GetQuestStep(Spawn,524)==10 then
        SetStepComplete(Spawn,524,10)
        end

end

AddTimer(NPC,3000,"ToShore",1,Spawn)
end


function ToShore(NPC, Spawn)
        if HasItem(Spawn,9357) then     --REMOVES Mariner's Charm
            RemoveItem(Spawn,9357,1)
        end
        if HasItem(Spawn,15354) then
            RemoveItem(Spawn,15354,1)   --REMOVES Waulon's Hat
        end
        if HasItem(Spawn,12565) then    --REMOVES Shard of Luclin
            RemoveItem(Spawn,12565,1)
        end          
if GetClass(Spawn) == 0 then
          ZoneRef = GetZone("IsleRefuge1")
        Zone(ZoneRef,Spawn)     
elseif GetDeity(Spawn) == 0 then
          ZoneRef = GetZone("OutpostOverlord")
        Zone(ZoneRef,Spawn)  
 
elseif GetDeity(Spawn) == 1 then 
        ZoneRef = GetZone("QueensColony")
        Zone(ZoneRef,Spawn)
        end
    end 

function respawn(NPC)
	spawn(NPC)
end

function Commoner(NPC, Spawn)
    local conversation = CreateConversation()
        AddConversationOption(conversation, "Yes, I am a Commoner.", "Commoner2")
        AddConversationOption(conversation, "Nevermind.")
        StartConversation(conversation, NPC, Spawn, "Are you sure?  This can't be undone. We'll take you to The Isle of Refuge if that is the case.")
end

function Commoner2(NPC, Spawn)
	PlayFlavor(NPC, "", "Well, so ya are.  Let me help you with that.", "", 0, 0, Spawn, 0)
    RemoveGear(NPC,Spawn)
	SetAdventureClass(Spawn,0)
	SendMessage(Spawn, "You are now a Commoner.")
    SendPopUpMessage(Spawn, "You are now a Commoner.", 255, 255, 255)	
if GetTradeskillClass(Spawn)>0 then
    SetTradeskillClass(Spawn,0)
end
end
