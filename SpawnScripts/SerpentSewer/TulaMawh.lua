--[[
    Script Name    : SpawnScripts/SerpentSewer/TulaMawh.lua
    Script Author  : premierio015
    Script Date    : 2020.06.16 01:06:27
    Script Purpose : 
                   : 
--]]

local BackAndForth = 569

function spawn(NPC)

end

function hailed(NPC, Spawn)
    if HasQuest(BackAndForth) and  GetQuestStep(Spawn, BackAndForth, 3) then
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/merchant_tula_mawh/fprt_sewer02/quests/merchant_tula_mawh/tula_mawh001.mp3", "", "", 2702922602, 4074191300, Spawn)
    AddConversationOption(conversation, "He said you'd show me to the Serpent's Lair.", "dlg_01")
    StartConversation(conversation, NPC, Spawn, "Well, hello there.  What's this?  A letter from Cicero! How sweet!  The little wretch.  Now what is it you want?")
    elseif not HasQuest(Spawn, BackAndForth) then
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/merchant_tula_mawh/fprt_sewer02/quests/merchant_tula_mawh/tula_mawh003.mp3", "", "", 496378623, 3961033663, Spawn)  
    AddConversationOption(conversation, "Perhaps.")
    StartConversation(conversation, NPC, Spawn, "Trudging deep in the filth eh?  Might you be interested in some of my wares?")
end
   end

function dlg_01(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 SetStepComplete(Spawn,  BackAndForth, 3)
 PlayFlavor(NPC, "voiceover/english/merchant_tula_mawh/fprt_sewer02/quests/merchant_tula_mawh/tula_mawh002.mp3", "", "", 3461442776, 342480721, Spawn)
 AddConversationOption(conversation, "I'll be on my way.")
 StartConversation(conversation, NPC, Spawn, "You're daft from the fumes down here, you are.  This is a letter of affection, you twit.  What's this talk of Serpents and Lairs?  Go on now!  Either buy something or be on your way.")
 end


function respawn(NPC)

end

