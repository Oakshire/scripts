--[[
    Script Name    : SpawnScripts/VerminSnye/BrotherGarvis.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.17 10:05:57
    Script Purpose : Brother Garvis Dialogue
    Script Notes   : Offer's Quest "Serving the Prime Healer(535)
--]]
local ServingThePrimeHealer = 535

function spawn(NPC)
      SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
if not HasCompletedQuest(Spawn, ServingThePrimeHealer) and not HasQuest(Spawn, ServingThePrimeHealer) then
PlayFlavor(NPC, "", "The Prime Healer is still among us!  Who will assist me with his work?", "", 1689589577, 4560189, Spawn)
end
   end
function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/brother_garvis/qey_catacomb02/brothergarvis001.mp3", "", "", 4278326302, 2101075855, Spawn)
    AddConversationOption(conversation, "I'll keep that in mind.")
    if not HasQuest(Spawn, ServingThePrimeHealer) and not HasCompletedQuest(Spawn, ServingThePrimeHealer) then
    AddConversationOption(conversation, "I'll help you with your work.", "help")
    elseif GetQuestStep(Spawn, ServingThePrimeHealer) == 3 then
    AddConversationOption(conversation, "I have all the venom sacs you need.", "appreciated")
    end
    StartConversation(conversation, NPC, Spawn, "We must continue curing afflictions and healing wounds.  It's the will of the Prime Healer.")
    end

function help(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/brother_garvis/qey_catacomb02/brothergarvis002.mp3", "", "", 3214755639, 3818612787, Spawn)
 AddConversationOption(conversation, "I can handle it.", "hardwork")
 AddConversationOption(conversation, "On second thought, I'll decline.")
 StartConversation(conversation, NPC, Spawn, "Excellent!  Excellent!  However, I must warn you.  We have a lot of hard work ahead of us. The catacombs are dangerous, and I don't want someone volunteering unwittingly.")
end

function hardwork(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 OfferQuest(NPC, Spawn, ServingThePrimeHealer)
 PlayFlavor(NPC, "voiceover/english/brother_garvis/qey_catacomb02/brothergarvis003.mp3", "", "", 3876476820, 1082290589, Spawn)
 AddConversationOption(conversation, "I will collect what you need.")
 StartConversation(conversation, NPC, Spawn, "Very good.  I know you can or I wouldn't have asked. I need you to collect venom sacs from poisonous serpents down in the catacombs.  This deed serves the healers two fold. You will eliminate the threat the snakes pose and will provide us with venom to create a serum for combating the snakes' deadly toxins.")
end
 
function appreciated(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, ServingThePrimeHealer, 3)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/brother_garvis/qey_catacomb02/brothergarvis004.mp3", "", "", 961993195, 2444216878, Spawn)
 AddConversationOption(conversation, "Thank you.")
 StartConversation(conversation, NPC, Spawn, "Excellent!  These will go a long way to curing the sick.  You served the Prime Healer well.  Take this as a token of our appreciation.  Your work is appreciated.")
end
 