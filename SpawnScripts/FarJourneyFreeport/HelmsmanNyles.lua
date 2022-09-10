--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/HelmsmanNyles.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.30 05:04:27
    Script Purpose : Bypasses Boat/tutorial and Zones players to their cities/starting areas
                   : 
--]]

function spawn(NPC)
    
end

function hailed(NPC, Spawn)
    local conversation = CreateConversation()
        AddConversationOption(conversation, "Yes", "leave")
        AddConversationOption(conversation, "No")
        if GetClass(Spawn)>0 then
        AddConversationOption(conversation, "Wait, I don't know what I'm doing here.  I'm just a commoner.","Commoner")
        end

        
        StartConversation(conversation, NPC, Spawn, "          Head for land?          [Leave The Far Journey?]")
end

function leave(NPC, Spawn)
	PlayFlavor(NPC, "", "The captain's gonna kill me for this...", "", 0, 0, Spawn, 0)
if GetLevel(Spawn)<2 then
    SetPlayerLevel(Spawn,2)
    end
if HasQuest(Spawn, 524)then
    fail(Spawn, 524)
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
	PlayFlavor(NPC, "", "Well, so ya are.  Let me help you with that.", "", 0, 0, Spawn, 0)
	SetAdventureClass(Spawn,0)
	SendMessage(Spawn, "You are now a Commoner.")
    SendPopUpMessage(Spawn, "You are now a Commoner.", 255, 255, 255)	
end
