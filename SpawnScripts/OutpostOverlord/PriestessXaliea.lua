--[[
    Script Name    : SpawnScripts/OutpostOverlord/PriestessXaliea.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.25 06:10:47
    Script Purpose : 
                   : 
--]]

local xalieas_request = 484

function spawn(NPC)
    ProvidesQuest(NPC, xalieas_request)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, xalieas_request) == false and HasCompletedQuest(Spawn, xalieas_request) == false then
        FaceTarget(NPC, Spawn)
        Conversation = CreateConversation()

        PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_01.mp3", "", "", 1619628529, 3389802510, Spawn)
        AddConversationOption(Conversation, "You aren't?", "dlg_2")
        StartConversation(Conversation, NPC, Spawn, "The life of a priestess isn't all posies and butterflies, you know? We aren't just here to heal and give you blessings.")
    elseif HasQuest(Spawn, xalieas_request) == true and GetQuestStep(Spawn, xalieas_request) == 2 then
        SetStepComplete(Spawn, xalieas_request, 2)
        
        FaceTarget(NPC, Spawn)
        Conversation = CreateConversation()

        PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_finaltalk_01.mp3", "", "", 3450984862, 1970143622, Spawn)
        AddConversationOption(Conversation, "You're welcome.", "dlg_6")
        StartConversation(Conversation, NPC, Spawn, "Ah, the sweet smell of death! They're so dry and brittle, just like I remembered. Thank you.")
    elseif HasCompletedQuest(Spawn, xalieas_request) == true then
        PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island02_fvo_hail1.mp3", "Yeah, yeah. Heal this, cure that. Keep moving.", "", 3735315332, 426916800, Spawn)
    end
end

function dlg_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_02.mp3", "", "", 2464873714, 2323246094, Spawn)
    AddConversationOption(Conversation, "Why don't you let out some steam and go take down some skeletons or something?", "dlg_3")
    StartConversation(Conversation, NPC, Spawn, "No! There's so much more to our way of life. We constantly battle against the ever rising ranks of the undead. If it wasn't for us, you'd all have your brains sucked out by a legion of zombies!")
end

function dlg_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_04.mp3", "", "", 585972363, 27232816, Spawn)
    AddConversationOption(Conversation, "Sorry to hear that.", "dlg_4")
    StartConversation(Conversation, NPC, Spawn, "I can't leave my post.")
end

function dlg_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_05.mp3", "", "", 2300229103, 3393998851, Spawn)
    AddConversationOption(Conversation, "How do you propose I do that?", "dlg_5")
    AddConversationOption(Conversation, "Not today, sorry.")
    StartConversation(Conversation, NPC, Spawn, "Hmm, but you can get around freely, can't you? Maybe you could help an old priestess relive her glory days?")
end

function dlg_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_firsttalk_06.mp3", "", "", 3310184043, 4007538840, Spawn)
    AddConversationOption(Conversation, "I'll do it.", "OfferQuest1")
    AddConversationOption(Conversation, "Not right now.")
    StartConversation(Conversation, NPC, Spawn, "Go find these skeletons and slay them. If you bring me three bone chips from them, I'll make this all worth your while.")
end

function dlg_6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_finaltalk_02.mp3", "", "", 1023024209, 1047449217, Spawn)
    AddConversationOption(Conversation, "Thank you.")
    StartConversation(Conversation, NPC, Spawn, "Here, take these coins. This should be more than what the merchant would give you for these beauties.")
end

function OfferQuest1(NPC, Spawn)
    OfferQuest(NPC, Spawn, xalieas_request)
end