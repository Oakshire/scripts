--[[
    Script Name    : SpawnScripts/Commonlands/Mooshga.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.06 02:09:46
    Script Purpose : 
                   : 
--]]

HyenaJerky = 429

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasQuest(Spawn, HyenaJerky) and not HasCompletedQuest(Spawn, HyenaJerky) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1055.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Captain Arellius said you could use a hand. You are a cook?", "dlg1")
    AddConversationOption(conversation, "I don't think I'm hungry right now.")
    StartConversation(conversation, NPC, Spawn, "So, you be adventurer sent by Militia to help Mooshga? You look like you hungry! Mooshga feed you good!")
    elseif GetQuestStep(Spawn, HyenaJerky) == 1 then
    quest1progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, HyenaJerky) == 2 then
    dlg3(NPC, Spawn)
end   
    end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Come to think of it, I am hungry. What are you going to make?", "dlg2")
 AddConversationOption(conversation, "An ogre baker? I'll be on my way.")
 StartConversation(conversation, NPC, Spawn, "Mooshga is greatest baker in all Commonlands! You want Mooshga make somethin' for you?")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Jerky sounds good. I'll do it.", "offer")
 AddConversationOption(conversation, "Ogre cooking sounds scary to me. Bye!")
 StartConversation(conversation, NPC, Spawn, "Mooshga hungry for jerky. Plus Mooshga try to make old secret recipe of famous ancestor chef. You go collect pieces for jerky so Mooshga can figure out recipe! It made from hyena meat. Get carrion hound ears for Mooshga.")
end

function dlg3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1055.mp3", "", "", 0, 0, Spawn)
 AddConversationOption(conversation, "I have brought you the ears that you asked for.", "quest1complete")
 AddConversationOption(conversation, "Nothing right now.")
 StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")
end

function quest1complete(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, HyenaJerky, 2)
 conversation = CreateConversation()
 AddConversationOption(conversation, "You're welcome.")
 StartConversation(conversation, NPC, Spawn, "Oh, thanks you! You make Mooshga happy Ogre.")
end

function offer(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, HyenaJerky)
end

function quest1progress(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Okay, I'll be right back.")
StartConversation(conversation, NPC, Spawn, "Good...Yes, Mooshga make Hyena Jerky for you.")
end


function respawn(NPC)

end

