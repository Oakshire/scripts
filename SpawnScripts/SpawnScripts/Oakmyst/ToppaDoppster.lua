--[[
	Script Name	: SpawnScripts/Oakmyst/ToppaDoppster.lua
	Script Purpose	: Toppa Doppster
	Script Author	: Scatman
	Script Date	: 2009.09.19
	Updated by   :ememjr
	Updated Date  :2017.05.04
	Update NOtes  : updated quest number
	Script Notes	:
--]]

function spawn(NPC)
   ProvidesQuest(NPC, 231)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   RandomGreeting(NPC, Spawn)

   if HasCompletedQuest(Spawn, 231) then
      Say(NPC, "You'll be a hero among my friends!")
   elseif HasQuest(Spawn, 231) then
      if GetQuestStep(Spawn, 231) == 1 then
         AddConversationOption(conversation, "Not yet.")
      elseif GetQuestStep(Spawn, 231) == 2 then
         AddConversationOption(conversation, "Yes, here it is.", "YesHereItIs")
      end

      StartConversation(conversation, NPC, Spawn, "Did you get the glowmyst juice?")
   else
      AddConversationOption(conversation, "What do you need?", "WhatDoYouNeed")
      AddConversationOption(conversation, "Sorry, not now.")
      StartConversation(conversation, NPC, Spawn, "You there! Do you think you can help me?")
   end
end

function RandomGreeting(NPC, Spawn)
   choice = math.random(1, 3)
   if choice == 1 then
      PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
   elseif choice == 2 then
      PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
   elseif choice == 3 then
      PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
   end
end

function respawn(NPC)
   spawn(NPC)
end

------------------------------------------------------------------------------------------------------------
--                           QUEST 1
------------------------------------------------------------------------------------------------------------

function WhatDoYouNeed(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "But what?", "ButWhat")
   StartConversation(conversation, NPC, Spawn, "My friends sent me out to collect some glowmyst juice from the beetles here in Oakmyst. You see, we're trying to start our own tavern and we're working on our craft. I was sent out here to collect some glowmyst juice, but...")
end

function ButWhat(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "I could get the juice for you.", "ICouldGetJuice")
   AddConversationOption(conversation, "Good luck figuring it out.")
   StartConversation(conversation, NPC, Spawn, "These bugs are so disgusting! I can't stand touching them. Don't even get me started on extracting their fluid sacs.")
end

function ICouldGetJuice(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "I'll be right back with them.", "OfferQuest1")
   StartConversation(conversation, NPC, Spawn, "Would you? That would be wonderful! I need ten glowmyst fluid sacs.")
end

function YesHereItIs(NPC, Spawn)
   SetStepComplete(Spawn, 231, 2)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Glad to hear it!")
   StartConversation(conversation, NPC, Spawn, "Wonderful! Thank you so much! My friends will be pleased!")
end

function OfferQuest1(NPC, Spawn)
   OfferQuest(NPC, Spawn, 231)
end
