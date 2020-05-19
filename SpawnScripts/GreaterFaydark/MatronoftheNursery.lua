--[[
    Script Name	   : SpawnScripts/GreaterFaydark/MatronoftheNursery.lua
    Script Purpose : Matron of the Nursery 
    Script Author  : John Adams
    Script Date    : 2009.02.05
    Script Notes   : Auto-Generated Conversation from PacketParser Data
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

local QUEST_1 = 83

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 15, "inRange", "leaveRange")
    ProvidesQuest(NPC, QUEST_1)
end

function inRange(NPC, Spawn)
    if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
        PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/quest/quest_matron_of_the_bloom_nursery_help_66ff3ea.mp3", "Please!  We need your help!", "wave", 1753177946, 2265055232, Spawn)
    end
end

function leaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
    
    if HasCompletedQuest(Spawn, QUEST_1) then
    elseif HasQuest(Spawn, QUEST_1) then
        onQuest1(NPC, Spawn)
    else
        beforeQuest1_1(NPC, Spawn)
    end
end

--[[ Quest 1 ]]--

function beforeQuest1_1(NPC, Spawn)
    local conversation = CreateConversation()
    
    FaceTarget(NPC, Spawn)
    AddConversationOption(conversation, "Let me help take care of this. Where are the shrumblers?", "beforeQuest1_2")
    AddConversationOption(conversation, "What is this place?", "beforeQuest1_3")
    AddConversationOption(conversation, "I can't assist right now. I'll return another time.")
    StartConversation(conversation, NPC, Spawn, "I am so pleased that you answered my summons. Look at what has become of the Nursery! These shrumblers appeared suddenly, and have been devouring the roots of our precious flowers! The flowers could all wither and perish!")
end

function beforeQuest1_2(NPC, Spawn)
    local conversation = CreateConversation()
    
    FaceTarget(NPC, Spawn)
    AddConversationOption(conversation, "I will see it done", "offerQuest1")
    AddConversationOption(conversation, "Perhaps another time. Farewell!")
    StartConversation(conversation, NPC, Spawn, "Look around the base of the flowers here in the Nursery. Destroy any of the shrumbler hatchlings you find!")
end

function beforeQuest1_3(NPC, Spawn)
    local conversation = CreateConversation()
    
    FaceTarget(NPC, Spawn)
    AddConversationOption(conversation, "So these are all unborn fae? If the flowers die, what becomes of them?", "beforeQuest1_4")
    AddConversationOption(conversation, "I see. Then it is crucial I take care of these shrumblers.", "beforeQuest1_2")
    AddConversationOption(conversation, "Maybe another time. Farewell.")
    StartConversation(conversation, NPC, Spawn, "These are the budding flowers for newborn fae, and this is the Nursery, in which we tend and care for them. When a fae dies naturally, the come a beautiful delicate flower, housing the spirit of the departed fae.")
end

function beforeQuest1_4(NPC, Spawn)
    local conversation = CreateConversation()
    
    FaceTarget(NPC, Spawn)
    AddConversationOption(conversation, "I will. Where can I find the shrumblers?", "beforeQuest1_2")
    AddConversationOption(conversation, "It seems like too big of a job for me. Farewell.")
    StartConversation(conversation, NPC, Spawn, "The unborn fae will die, and all of the collective knowledge of their spirit will be lost forever. Please, you must help us prevent the lose of any more fae spirits!")
end

function offerQuest1(NPC, Spawn)
    OfferQuest(NPC, Spawn, QUEST_1)
end

function onQuest1(NPC, Spawn)
    local conversation = CreateConversation()
    
    FaceTarget(NPC, Spawn)
    if (GetQuestStep(Spawn, QUEST_1) == 2) then
    else
        StartConversation(conversation, NPC, Spawn, "Please hurry with your task.")
    end
end

--[[

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 20, "inRange", "leaveRange")
    ProvidesQuest(NPC, 133)
    ProvidesQuest(NPC, 134)
    ProvidesQuest(NPC, 135)
    ProvidesQuest(NPC, 136)
    ProvidesQuest(NPC, 137)
end

function respawn(NPC)
    spawn(NPC)
end

function InRange(NPC, Spawn)
    if HasQuest(Spawn, 133) then
        -- she only shouts for help when you have not done her quest line
    elseif HasCompletedQuest(Spawn, 133) then
                -- she only shouts for help when you have not done her quest line
        else
        PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/quest/quest_matron_of_the_bloom_nursery_help_66ff3ea.mp3", "Please!  We need your help!", "wave", 1753177946, 2265055232, Spawn)
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
       FaceTarget(NPC, Spawn)
       conversation = CreateConversation()
       if HasCompletedQuest(Spawn, 133) then
          if HasCompletedQuest(Spawn, 134) then
               if HasCompletedQuest(Spawn, 135) then
                    if HasCompletedQuest(Spawn, 136) then
                         if HasCompletedQuest(Spawn, 137) then
                              QuestsComplete(NPC, Spawn)
                         elseif HasQuest(Spawn, 137) then
                              if GetQuestStep(Spawn, 137) == 1 then
                                   -- quest not complete yet
                                   Say(NPC, "Please finish your task", Spawn)
                              elseif GetQuestStep == 2 then
                                   -- handing in quest
                                   SetStepComplete(Spawn, 137, 2)
                                   Quest5Done(NPC, Spawn)
                              end
                         else
                              -- does not have quest yet
                              MessageFromTheMatron(NPC, Spawn)
                         end
                    elseif HasQuest(Spawn, 136) then
                         if GetQuestStep(Spawn, 136) == 1 then
                              -- quest not complete yet
                              FaceTarget(NPC, Spawn)
                              conversation = CreateConversation()
                              
                              AddConversationOption(conversation, "No, I have not gathered them yet.")
                              StartConversation(conversation, NPC, Spawn, "Welcome back, " .. GetName(Spawn) .. ". Were you able to gather the healing herbs I need?")
                         elseif GetQuestStep(Spawn, 136) == 2 then
                              -- handing in quest
                              SetStepComplete(Spawn, 136, 2)
                              Quest4Done(NPC, Spawn)
                         end
                    else
                         -- does not have quest yet
                         HerbsofHealing(NPC, Spawn)
                    end
               elseif HasQuest(Spawn, 135) then
                    if GetQuestStep(Spawn, 135) == 1 then
                         -- quest not complete yet
                         FaceTarget(NPC, Spawn)
                         conversation = CreateConversation()
                         PlayFavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery009.mp3", "", "", 768214181, 1308439553, Spawn)
                         AddConversationOption(conversation, "No, not yet.")
                         StartConversation(conversation, NPC, Spawn, "Were you able to find out what the grobins at the pond were up to?")
                    elseif GetQuestStep(Spawn, 135) == 2 then
                         -- handing in quest
                         SetStepComplete(Spawn, 135, 2)
                         Quest3Done(NPC, Spawn)
                    end
               else
                    -- does not have quest yet
                    GrobinTroubleAtThePond(NPC, Spawn)
               end
          elseif HasQuest(Spawn, 134) then
               if GetQuestStep(Spawn, 134) == 1 then
                    -- quest not yet complete
                    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery006.mp3", "", "", 3086001028, 2261685856, Spawn)
            AddConversationOption(conversation, "I am not sure yet.")
            StartConversation(conversation, NPC, Spawn, "Are the grobin scouts still out there?")
               elseif GetQuestStep(Spawn, 134) == 2 then
                    -- handing in quest
                    SetStepComplete(Spawn, 134, 2)
                    Quest2Done(NPC, Spawn)
               end
          else
               -- does not have quest
               RunningOffTheGrobinScouts(NPC, Spawn)
          end
       elseif HasQuest(Spawn, 133) then
          if GetQuestStep(Spawn, 133) == 1 then
               -- quest not complete yet
               Say(NPC, "Please! You must get rid of the shrumblers before they eat the spirit blooms!", Spawn)
          elseif GetQuestStep(Spawn, 133) == 2 then
               -- handing in the quest
               SetStepComplete(Spawn, 133, 2)
               Quest1Done(NPC, Spawn)
          end
       else
          -- does not have quest
          Infestation(NPC, Spawn)
       end
end 

-------------------------------------------------------------------------------
----------                  Quest Dialogs                            ----------
-------------------------------------------------------------------------------
function Infestation(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery001.mp3", "", "", 3995853929, 1976845236, Spawn)
    AddConversationOption(conversation, "Yes, I'll get rid of the shrumblers.", "Infestation_dlg2")
    AddConversationOption(conversation, "It's not my problem.")	
    StartConversation(conversation, NPC, Spawn, "Thank Tunare you're here!  There's little time to explain.  An infestation of shrumblers has appeared in the nursery and they're eating the spirit blooms!  Can you help us?")
end

function Infestation_dlg2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_bloom_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery002.mp3", "", "", 1028015490, 2786542994, Spawn)
    AddConversationOption(conversation, "I'll be safe.", "OfferQuest1")
    StartConversation(conversation, NPC, Spawn, "The spirit blooms grow both to the east and west of here.  Please be careful!")
end

function RunningOffTheGrobinScouts(NPC, Spawn)
        FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery004.mp3", "", "", 849551346, 2426315385, Spawn)
    AddConversationOption(conversation, "Sure, I'll check things out.", "OfferQuest2")
    AddConversationOption(conversation, "I already helped you once, goodbye.")
    StartConversation(conversation, NPC, Spawn, "The shrumblers came from the direction of the pond just to the southwest.  Vile grobin scouts were recently seen in that area.  I know it is much to ask, but could you check out the area and get rid of any grobin scouts that you find?")
end

function GrobinTroubleAtThePond(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery007.mp3", "", "", 155606057, 734892147, Spawn)
    AddConversationOption(conversation, "I'll stop them.", "OfferQuest3")
    AddConversationOption(conversation, "I've helped you enough, goodbye.")
    StartConversation(conversation, NPC, Spawn, "You noticed the grobins putting something in the pond's water?  This is most troubling.  The creatures and plants of this area depend on that enchanted water to grow big and strong!  The grobins must be stopped or many things will suffer.")
end

function HerbsofHealing(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery010.mp3", "", "", 2687383899, 130888406, Spawn)
    AddConversationOption(conversation, "What is wrong?", "HerbsofHealing_dlg2")
    StartConversation(conversation, NPC, Spawn, "So the grobin were behind the infestation!  I knew it!  Putting those eggs in the enchanted pond would make the shrumblers grow incredibly quick and strong.  Hmm, I wonder where they were getting all those eggs, though.  That question will have to wait, however.  I've discovered a greater problem.")
end

function HerbsofHealing_dlg2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery011.mp3", "", "", 1314428688, 3908522277, Spawn)
    AddConversationOption(conversation, "I can get what you need.", "HerbsofHealing_dlg3")
    AddConversationOption(conversation, "I've done enough to help, goodbye.")
    StartConversation(conversation, NPC, Spawn, "It seems the shrumblers did more damage to the spirit blooms than I previously thought.  I need to heal the blooms but I don't have the components with me.")
end

function HerbsofHealing_dlg3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery011.mp3", "", "", 1314428688, 3908522277, Spawn)
    AddConversationOption(conversation, "I'll go gather some.", "OfferQuest4")
    StartConversation(conversation, NPC, Spawn, "Thank you, " .. GetName(Spawn) .. ". The herbs can be harvested from the faeicia plants not far from here to the west.")
end

function MessageFromTheMatron(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery014.mp3", "", "", 1963879689, 3046606981, Spawn)
    AddConversationOption(conversation, "You are welcome.", "MessageFromTheMatron_dlg_2")
    StartConversation(conversation, NPC, Spawn, "Very good.  I'll begin the healing of the spirit blooms.  Thank you so much for all you've done.  I don't know what we would've done if you hadn't awoken when you did.")
end

function MessageFromTheMatron_dlg_2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery015.mp3", "", "", 2641012186, 3622995691, Spawn)
    AddConversationOption(conversation, "I can take the message for you.", "MessageFromTheMatron_dlg_3")
    AddConversationOption(conversation, "Forget it, I've helped enough.")
    StartConversation(conversation, NPC, Spawn, "Before you go, can you do one last thing for me?  I fear the grobins will try attacking the spirit blooms again.  I need you to deliver a message to Sentry Trillis and warn him about the grobins.")
end

function MessageFromTheMatron_dlg_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery016.mp3", "", "", 3997346506, 1167918210, Spawn)
    AddConversationOption(conversation, "Goodbye, Matron of the Nursery.", "OfferQuest5")
    StartConversation(conversation, NPC, Spawn, "Thank you, .. GetName(Spawn) .. .  May Tunare bless you for all you have done!  Now I have some spirit blooms to heal.")
end
-------------------------------------------------------------------------------
----------                    Offer Quests                           ----------
-------------------------------------------------------------------------------
function OfferQuest1(NPC, Spawn)
    OfferQuest(NPC, Spawn, 133)
end

function OfferQuest2(NPC, Spawn)
    OfferQuest(NPC, Spawn, 134)
end

function OfferQuest3(NPC, Spawn)
    OfferQuest(NPC, Spawn, 135)
end

function OfferQuest4(NPC, Spawn)
    OfferQuest(NPC, Spawn, 136)
end

function OfferQuest5(NPC, Spawn)
    OfferQuest(NPC, Spawn, 137)
end

-------------------------------------------------------------------------------
----------                    Quest is done                          ----------
-------------------------------------------------------------------------------
function Quest1Done(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_bloom_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery003.mp3", "", "", 3759250787, 3072440842, Spawn)
    AddConversationOption(conversation, "Where did they come from?", "RunningOffTheGrobinScouts")
    AddConversationOption(conversation, "Have a good day, goodbye.")
    StartConversation(conversation, NPC, Spawn, "Thank you so much!  The spirit blooms should be fine now.  It was strange... we've never seen shrumblers that large or in such great numbers.")
end

function Quest2Done(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery006.mp3", "", "", 3086001028, 2261685856, Spawn)
    AddConversationOption(conversation, "I ran a few of them off..  I also saw some grobins putting something in the water of the pond.", "GrobinTroubleAtThePond")
    AddConversationOption(conversation, "I am not sure yet.")
    StartConversation(conversation, NPC, Spawn, "Are the grobin scouts still out there?")
end

function Quest3Done(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery009.mp3", "", "", 768214181, 1308439553, Spawn)
    AddConversationOption(conversation, "Yes.  They had jars of shrumbler eggs that they were pouring into the pond.", "HerbsofHealing")
    AddConversationOption(conversation, "No, not yet.")
    StartConversation(conversation, NPC, Spawn, "Were you able to find out what the grobins at the pond were up to?")
end

function Quest4Done(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery013.mp3", "", "", 793594959, 1637646288, Spawn)
    AddConversationOption(conversation, "Yes, I have them right here.", "MessageFromTheMatron")
    AddConversationOption(conversation, "No, I have not gathered them yet.")
    StartConversation(conversation, NPC, Spawn, "Welcome back, .. GetName(Spawn) .. .  Were you able to gather the healing herbs I need?")
end

--]]