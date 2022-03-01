--[[
	Script Name	: SpawnScripts/GreaterFaydark/SentryTrillis.lua
	Script Purpose	: Sentry Trillis 
	Script Author	: John Adams
	Script Date	: 2009.02.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC, 160)
end

function respawn(NPC)
    Spawn(NPC)
end

function InRange(NPC, Spawn)

end

function LeaveRange(NPC, Spawn)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()


    if HasCompletedQuest(Spawn, 137) then
        if HasQuest(Spawn, 160) then
            if GetQuestStep(Spawn, 160) == 1 then
                -- quest not yet complete
                 Say(NPC, "Quest not complete yet", Spawn)
            end
        else
            -- does not have Sentry Trellis' quest
            SentryTrellisReport_dlg_2(NPC, Spawn)
        end
    else
        -- completing Matron quest
        MessageFromTheMatron(NPC, Spawn)
    end
end

function MessageFromTheMatron(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sentry_trillis/_exp03/exp03_rgn_greater_faydark/sentry_trillis/sentry_trillis000.mp3", "", "", 3549519021, 54059459, Spawn)
    AddConversationOption(conversation, "The Matron of the Nursery has a message for you.", "SentryTrellisReport")
    AddConversationOption(conversation, "Just admiring the view.")
    StartConversation(conversation, NPC, Spawn, "Greetings, young one.  What brings you to my post?")
end

-- PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sentry_trillis/_exp03/exp03_rgn_greater_faydark/quest/sentry_trillis_careful_a49efdc.mp3", "Be careful out there.  The Faydark can be a very dangerous place.", "hello", 1238010868, 445756514, Spawn)

function SentryTrellisReport(NPC, Spawn)
    if HasQuest(Spawn, 137) then
        SetStepComplete(Spawn, 137, 1)
    end
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sentry_trillis/_exp03/exp03_rgn_greater_faydark/sentry_trillis/sentry_trillis001.mp3", "", "", 46388781, 2562325140, Spawn)
    AddConversationOption(conversation, "Where did they go?", "SentryTrellisReport_dlg_2")
    StartConversation(conversation, NPC, Spawn, "She does?  Hmmm... she's worried about the grobins, but she should rest easy.  I spotted where the grobins ran off to when you scared them away from the pond.  I already alerted my friend, Captain Steelforge.")
end

function SentryTrellisReport_dlg_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/sentry_trillis/_exp03/exp03_rgn_greater_faydark/sentry_trillis/sentry_trillis002.mp3", "", "", 1624769357, 1800752258, Spawn)
    AddConversationOption(conversation, "Sure.  I can take the report for you.", "OfferQuest1")
    AddConversationOption(conversation, "No thanks.  I don't want to get involved in any caves.")
    StartConversation(conversation, NPC, Spawn, "If you look west of here you might be able to make out the cave the grobins ran into.  Captain Steelforge has been dispatched to investigate.  If you want to help, you could take my report to him. ")
end

function OfferQuest1(NPC, Spawn)
    OfferQuest(NPC, Spawn, 160)
end


