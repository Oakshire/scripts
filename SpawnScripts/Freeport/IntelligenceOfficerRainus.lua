--[[
    Script Name    : SpawnScripts/Freeport/IntelligenceOfficerRainus.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    
    PlayFlavor(NPC, "intelligence_officer_rainus/fprt_west/quests/intelligence_officer_rainus000.mp3", "", "", 4151098788, 648293692, Spawn)
    AddConversationOption(conversation, "Sorry, I'll leave you to your work.")
    StartConversation(conversation, NPC, Spawn, "Don't bother me now!  Emissary Millia just delivered a new set of reports I need to read over.")  
end

function respawn(NPC)

end

