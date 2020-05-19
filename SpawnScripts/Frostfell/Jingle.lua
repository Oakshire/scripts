--[[
    Script Name    : SpawnScripts/Frostfell/Jingle.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.29 10:10:34
    Script Purpose : 
                   : 
--]]

-- **********************************************************************
--                            Known Issues
-- Spawns:
-- Living blazes use the 75228 Dagger of Cinders weapon as an appearance.
-- Living snow flurry model doesn't match live.
-- **********************************************************************

local ADeepiceMystery = 486

function spawn(NPC)
    ProvidesQuest(NPC, ADeepiceMystery)
end

function respawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    if HasCompletedQuest(Spawn, ADeepiceMystery) then
    elseif HasQuest(Spawn, ADeepiceMystery) then
        DebugMe(NPC, Spawn)
        if GetQuestStep(Spawn, ADeepiceMystery) == 3 then
            Step3Complete(NPC, Spawn)
        elseif GetQuestStep(Spawn, ADeepiceMystery) == 14 then
            Step14(NPC, Spawn)
        end
    else -- You haven't completed the quest nor are you on the quest.
        FirstGreetings(NPC, Spawn)
    end
end

-- DEBUG SHIT
function DebugMe(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "Debug", "Debug_Options")
    AddConversationOption(Conversation, "Meh.")
    StartConversation(Conversation, NPC, Spawn, "Hey there, you're on the quest A Deepice Mystery!")
end

-- INITIAL DIALOGUE
function FirstGreetings(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "That's a good question.", "Preamble1") --Proceed
    AddConversationOption(Conversation, "I don't know, nor do I care.")
    StartConversation(Conversation, NPC, Spawn, "Oh, goodness! What has befallen our Frostfell Wonderland!?")
end

-- FIRST DIALOGUE
function Preamble1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "This wasn't a planned transformation?", "Preamble2") --Proceed
    StartConversation(Conversation, NPC, Spawn, "I was late to arrive, having been delayed, only to find that the land has been transformed.... beautifully.")
end

-- SECOND DIALOGUE
function Preamble2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "Maybe we can melt them free.", "Preamble3") --Proceed
    StartConversation(Conversation, NPC, Spawn, "No, not that I am aware of. If it was, well then it went very wrong. So many that were here are now frozen with it! They need to be saved, first and foremost!")
end

-- THIRD DIALOGUE
function Preamble3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "I certainly can.", "Preamble4") --Proceed
    AddConversationOption(Conversation, "Unfortunately, no I am not able to help you.")
    StartConversation(Conversation, NPC, Spawn, "Good thinking, " .. GetName(Spawn).. "! It'll take some potent Frostfell magic to melt the arcane deep freeze that they are gripped by. I'll need some living burning embers and living ice crystals. Can you obtain them for me?")
end

-- FOURTH DIALOGUE
function Preamble4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "I'll be back with the burning embers and ice crystals.", "FirstQuestOffer") --Proceed
    AddConversationOption(Conversation, "Oh, this is not what I had in mind. Goodbye.")
    StartConversation(Conversation, NPC, Spawn, "Great! The burning embers should be found on a living blaze in Lavastorm, and the ice crystals can be obtained from a living snow flurry in Everfrost.")
end

-- She now offers you 'A Deepice Mystery'
function FirstQuestOffer(NPC, Spawn)
    OfferQuest(NPC, Spawn, ADeepiceMystery)
end

-- Player kills a living blaze: Progresses Quest to Step2
-- Player kills a living snow flurry: Progresses Quest to Step3

function Step3Complete(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "Yes! Here they are, " .. GetName(NPC).. ".", "Step3Complete2") --Proceed
    StartConversation(Conversation, NPC, Spawn, "Thank the gods! You've returned, " .. GetName(Spawn).. "! Have you the living burning embers and ice crystals?")
end

function Step3Complete2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "So we won't have to wait long, will we?", "Step3Complete3")
    StartConversation(Conversation, NPC, Spawn, "Perfect! The other components have already been prepared for the lasting thaw potion.")
end

function Step3Complete3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "Maybe then we'll learn who or what is behind this!", "Step3CompleteFinal") -- Proceed And Set Step Complete
    StartConversation(Conversation, NPC, Spawn, "No, Not at all. Which is good, as i fear time is slipping from us. We must prioritize the lasting thaw potion. Cast it to free Candice, Gardy, McScroogle, Queen Bunny, and Snarf of the deep freeze that they've been put under.")
end

function Step3CompleteFinal(NPC, Spawn)
    SetStepComplete(Spawn, ADeepiceMystery, 3)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "Me too, " .. GetName(NPC).. ". Me too.")
    StartConversation(Conversation, NPC, Spawn, "Good thinking, " .. GetName(Spawn).. "! They may have seen something. Yes. I just hope we're not too late!")
end

function Step14(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "That it did, but the victims didn't see a whole lot.", "Step14_2")
    StartConversation(Conversation, NPC, Spawn, "Did the lasting thaw potion work, " .. GetName(Spawn).. "?")
end

function Step14_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "Three of them saw ice animals before being frozen, One of which was some sort of icy fae drake.", "Step14_3")
    StartConversation(Conversation, NPC, Spawn, "No? Well, don't be coy. What did they see?")
end

function Step14_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "If they were trying to change the area for themselves, it would stand to reason that they'd still be here.", "Step14_4")
    StartConversation(Conversation, NPC, Spawn, "That's our only true lead then, I agree. I wonder if they've left Frostfell Wonderland Village?")
end

function Step14_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    if GetQuestStep(Spawn, ADeepiceMystery) == 14 then
        SetStepComplete(Spawn, ADeepiceMystery, 14)
    end

    AddConversationOption(Conversation, "I think I'll need it!")
    StartConversation(Conversation, NPC, Spawn, "You should start your search on the northern most islands, and then work south. Good luck!")
end

function Debug_Options(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "What step am i on?", "WhatStep")
    AddConversationOption(Conversation, "I want to skip a specific step.", "Skips1")
    AddConversationOption(Conversation, "I want to skip the step i'm on.", "SkipCurrentStep")
    StartConversation(Conversation, NPC, Spawn, "Debug Options: ")
end

function Skips1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "Skip Step 1", "SkipStep1")
    AddConversationOption(Conversation, "Skip Step 2", "SkipStep2")
    AddConversationOption(Conversation, "Skip Step 3", "SkipStep3")
    AddConversationOption(Conversation, "Skip Step 4", "SkipStep4")
    AddConversationOption(Conversation, "Skip Step 5", "SkipStep5")
    AddConversationOption(Conversation, "More.", "Skips2")
    StartConversation(Conversation, NPC, Spawn, "Select a step to skip: ")
end

function Skips2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    AddConversationOption(Conversation, "Skip Step 6", "SkipStep6")
    AddConversationOption(Conversation, "Skip Step 7", "SkipStep7")
    AddConversationOption(Conversation, "Skip Step 8", "SkipStep8")
    AddConversationOption(Conversation, "Skip Step 9", "SkipStep9")
    AddConversationOption(Conversation, "Skip Step 10", "SkipStep10")
    StartConversation(Conversation, NPC, Spawn, "Select a step to skip: ")
end

function SkipCurrentStep(NPC, Spawn)
    local CurrentStep = GetQuestStep(Spawn, ADeepiceMystery)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddStepProgress(Spawn, ADeepiceMystery, CurrentStep, 1)
    AddConversationOption(Conversation, "Woot!")
    StartConversation(Conversation, NPC, Spawn, "You're now on step " .. GetQuestStep(Spawn, ADeepiceMystery))
end

function WhatStep(NPC, Spawn)
    Say(NPC, "You are currently on step " .. GetQuestStep(Spawn, ADeepiceMystery))
end
function SkipStep1(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 1, 1)
end
function SkipStep2(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 2, 1)
end
function SkipStep3(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 3, 1)
end
function SkipStep4(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 4, 1)
end
function SkipStep5(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 5, 1)
end
function SkipStep6(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 6, 1)
end
function SkipStep7(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 7, 1)
end
function SkipStep8(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 8, 1)
end
function SkipStep9(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 9, 1)
end
function SkipStep10(NPC, Spawn)
    AddStepProgress(Spawn, ADeepiceMystery, 10, 1)
end