--[[
    Script Name    : SpawnScripts/Freeport/CaptainVrondell.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:14
    Script Purpose : 
                   : 
--]]

local BloodskullOrcBounty = 5218

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell000.mp3", "", "brandish", 1599544138, 213130892, Spawn)
    if GetQuestStep(Spawn, BloodskullOrcBounty) == 2  then
    AddConversationOption(conversation, "I've come to collect on the Bloodskull earring bounty.", "complete")
    end
    AddConversationOption(conversation, "Mercy, great captain. Forgive my foolish actions.")
    StartConversation(conversation, NPC, Spawn, "You dare to approach a militia captain without being summoned? State your business or move along!")

end

function complete(NPC, Spawn)
   FaceTarget(NPC, Spawn)
    conversation = CreateConversation() 
   PlayFlavor(NPC, "voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell004.mp3", "", "", 1201882587, 2385389190, Spawn) 
   SetStepComplete(Spawn, BloodskullOrcBounty, 2)
   RemoveItem(Spawn, 4523)
    AddConversationOption(conversation, "The spilling of orcish blood is always a privilege.", "dlg1")
    AddConversationOption(conversation, "I could never forget my loyalty to the Overlord.", "dlg1")
     StartConversation(conversation, NPC, Spawn, "Your contribution is one of duty and obligation and does not merit compensation. However, as we understand your need for supplies and repairs to remain a productive member of society, I reward you your bounty.")
     end
     
function dlg1(NPC, Spawn)     
     FaceTarget(NPC, Spawn)
    conversation = CreateConversation() 
    PlayFlavor(NPC, "voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell005.mp3", "", "", 2688444807, 3777337444, Spawn)
     AddConversationOption(conversation, "It is my honor to serve the Overlord.")
       StartConversation(conversation, NPC, Spawn, "Any scoundrel could spill blood, but we are citizens of Freeport not scoundrels. Spilling orcish blood for the defense of Freeport is an honor. Be thankful for serving the Overlord.")
end   
    
function respawn(NPC)

end

