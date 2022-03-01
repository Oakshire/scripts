--[[
	Script Name	: SpawnScripts/QueensColony/Deianeira.lua
	Script Purpose	: Deianeira 
	Script Author	: Scatman
	Script Date	: 2008.09.20
	Script Notes	: 
	Modified Date : 2020.04.04
	Modified by   : premierio015
	Notes         : Added animations
--]]

local Tainted = 183
local GhostsAndGoblins = 184

function spawn(NPC)
   ProvidesQuest(NPC, Tainted)
   ProvidesQuest(NPC, GhostsAndGoblins)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)

   if HasCompletedQuest(Spawn, Tainted) then
      if HasCompletedQuest(Spawn, GhostsAndGoblins) or HasQuest(Spawn, GhostsAndGoblins) then
         Quest2RandomSay(NPC, Spawn)
      else
         NotConvinced(NPC, Spawn)
      end
   elseif HasQuest(Spawn, Tainted) then
      if GetQuestStep(Spawn, Tainted) < 9 then
         listenToTheSilence(NPC, Spawn)
      elseif GetQuestStep(Spawn, Tainted) == 9 then
         listenToTheSilence(NPC, Spawn, 2)
      end
   else
      listenToTheSilence(NPC, Spawn, 1)
   end
end

function listenToTheSilence(NPC, Spawn, option)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira001.mp3", "", "ponder", 974807054, 1523157599, Spawn)
    
    if option == 1 then
       AddConversationOption(conversation, "Listen to the silence?", "quest1_before1")
    elseif option == 2 then
       AddConversationOption(conversation, "I found a parchment that hinted Direspike was under the influence of something else.", "FoundParchment")
    end

    AddConversationOption(conversation, "Then I'll leave you in peace.")
    StartConversation(conversation, NPC, Spawn, "Shhh...I'm trying to listen to the silence. Whisper please.")
end

function quest1_before1(npc, spawn)
   conversation = CreateConversation()

   PlayFlavor(npc, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira002.mp3", "", "nod", 1920565588, 3425134667, Spawn)
   AddConversationOption(conversation, "The view's not so clear from here.", "quest1_before2")
   StartConversation(conversation, npc, spawn, "Away from the noise over in the camp. I like standing here. You can see where you've been and where you can go. You know what awaits you if you go further in. If only everything were as simple as that, where all your choices are clear and you can see what awaits.")
end

function quest1_before2(npc, spawn)
   conversation = CreateConversation()

   PlayFlavor(npc, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira003.mp3", "", "shrug", 3746790389, 1573998689, Spawn)
   AddConversationOption(conversation, "What evil do you sense?", "quest1_before3")
   AddConversationOption(conversation, "Then I'll have no more dealings with you.")
   StartConversation(conversation, npc, spawn, "True, but it's clearer than, say, the difference between good and evil. All those around here who are ''good'' avoid me because I was born ''evil''. I grew up in Freeport. Does that make them better than me somehow, that I chose to leave Freeport to work on behalf of the Queen only recently? Who knows? Yet I must be evil; I can sense the evil in others.")
end

function quest1_before3(npc, spawn)
   conversation = CreateConversation()

   PlayFlavor(npc, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira004.mp3", "", "nod", 428169630, 2788724653, Spawn)
   AddConversationOption(conversation, "I'll do what I can.", "quest1_offerQuest")
   AddConversationOption(conversation, "Perhaps some other time.")
   StartConversation(conversation, npc, spawn, "They say that there is a taint rising from an unknown source, polluting this place and corrupting the inhabitants. I feel it is much simpler than that. There are spiders in the Tainted Forest, poisonous ones. With their venom, they can cause untold suffering. The search for ''evil'' sometimes has a mundane cause. We must rid the Colony of these spiders.", spawn)
end

function quest1_offerQuest(npc, spawn)
   OfferQuest(npc, spawn, Tainted)
end

function FoundParchment(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira005.mp3", "", "frustrated", 2666912393, 3640169922, Spawn)
   AddConversationOption(conversation, "The crawlers were being influenced by a hidden totem.", "dlg_17_2")
   AddConversationOption(conversation, "I'm not finished with them yet.")
   StartConversation(conversation, NPC, Spawn, "The influence of something else?  But I've sensed the evil in them. They aren't capable of planning to be evil. It must be their poison. It must!")
end

function dlg_17_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira006.mp3", "", "ponder", 1022748345, 1750032594, Spawn)
   AddConversationOption(conversation, "There is something that runs deeper than spider venom here.", "NotConvinced")
   StartConversation(conversation, NPC, Spawn, "I was so sure... Well, there goes that theory.  Tell me, you may be less biased than someone like me: do you sense anything in the Tainted Forest? Anything at all?")
end

function NotConvinced(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira007.mp3", "", "no", 2498899827, 4165283209, Spawn)
   AddConversationOption(conversation, "So you moved to Qeynos?", "dlg_17_4")
   StartConversation(conversation, NPC, Spawn, "I'm not convinced, but this does throw a gnome wrench into things.  I don't believe that there is such a thing as evil.  Look at me: I was raised to believe Qeynos was a horrible place filled with mindless drones.  Once I came of age I realized that the Overlord's minions were spreading lies.")
end

function dlg_17_4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira008.mp3", "", "orate", 56356150, 3856145142, Spawn)
   AddConversationOption(conversation, "You were wrong about the toxic crawlers' poison.", "dlg_17_5")
   StartConversation(conversation, NPC, Spawn, "'Moved' is such a polite way to say it.  I betrayed Freeport to do what I felt in my heart was right.  And yet...not everyone in Qeynos accepts me or my decision.  So I came here, where I could help remove this island's taint.  The honorable Qeynosians won't work with me, so I've had to devise my own theories.")
end

function dlg_17_5(NPC, Spawn)
   SetStepComplete(Spawn, Tainted, 9)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira009.mp3", "", "shrug", 3026175083, 2234137219, Spawn)
   AddConversationOption(conversation, "Sure.", "dlg_17_6")
   AddConversationOption(conversation, "Not yet.")
   StartConversation(conversation, NPC, Spawn, "We all make mistakes.  Hopefully, this is not a mistake I'll live to regret.  Are you willing to help me test another theory?")
end

function dlg_17_6(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quests/deianeira/deianeira010.mp3", "", "nod", 3135820636, 1299129722, Spawn)
   AddConversationOption(conversation, "I'll check into it.", "OfferQuest2")
   AddConversationOption(conversation, "I'll need to do this later.")
   StartConversation(conversation, NPC, Spawn, "The Tainted Forest is key.  Look for the Forest Keeper, a treant who lives in a nook in the hillside just beyond these trees. It was a guardian of this place and has resisted the taint. It may be willing to speak to you. It chooses not to speak to a betrayer like me.")
end

function OfferQuest2(NPC, Spawn)
   OfferQuest(NPC, Spawn, GhostsAndGoblins)
end

function Quest2RandomSay(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   choice = math.random(1, 5)

   if choice == 1 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quest/qst_deianeira_complete_2d695f47.mp3", "", "", 274789492, 4201420419, Spawn)
      Say(NPC, "There's only so much I can do to earn someone's trust.")
   elseif choice == 2 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quest/qst_deianeira_complete_111dc711.mp3", "", "", 796380527, 3559718915, Spawn)
      Say(NPC, "It's up to us to find the answers; they're never handed to us.")
   elseif choice == 3 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quest/qst_deianeira_complete_3d524ae4.mp3", "", "", 34190012, 2231752517, Spawn)
      Say(NPC, "Evil is not always what it appears to be. That's the danger.")
   elseif choice == 4 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quest/qst_deianeira_complete_8e673792.mp3", "", "", 2025632812, 3072551906, Spawn)
      Say(NPC, "We Ayr'Dal are proud, though others may not appreciate us.")
   elseif choice == 5 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deianeira/tutorial_island02_revamp/quest/qst_deianeira_complete_63f990af.mp3", "", "", 4194069030, 2414670370, Spawn)
      Say(NPC, "Freeport isn't that bad of a place, if you like watching over your shoulder all the time.")
   end
end