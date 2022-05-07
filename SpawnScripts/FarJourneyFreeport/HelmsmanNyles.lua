--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/HelmsmanNyles.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.30 05:04:27
    Script Purpose : Zone players to their cities
                   : 
--]]

function spawn(NPC)
    
end

function hailed(NPC, Spawn)
    local conversation = CreateConversation()
        AddConversationOption(conversation, "Yes", "leave")
           AddConversationOption(conversation, "No")
                  StartConversation(conversation, NPC, Spawn, "          Head for land?          [Leave The Far Journey?]")
end

function leave(NPC, Spawn)
if HasQuest(Spawn, 524)then
    QuestIsComplete(Spawn, 524)
    end
if GetDeity(Spawn) == 1 then 
        ZoneRef = GetZone("QueensColony")
        Zone(ZoneRef,Spawn)
elseif GetDeity(Spawn) ~= 1 then
          ZoneRef = GetZone("OutpostOverlord")
        Zone(ZoneRef,Spawn)  
end
    end 

function respawn(NPC)
	spawn(NPC)
end