--[[
	Script Name	: SpawnScripts/OutpostOverlord/ChefGorga.lua
	Script Purpose	: Chef Gorga 
	Script Author	: Scatman (Updated by Cynnar)
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local seaside_stew = 364

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   if HasQuest(Spawn, 54) and GetQuestStep(Spawn, 54) == 5 then
      AddConversationOption(conversation, "What do you know about Charles Arker?", "CharlesArker")
   end
   
   if HasCompletedQuest(Spawn, seaside_stew) then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga008.mp3", "", "", 1246021503, 146092815, Spawn)
      AddConversationOption(conversation, "Uh yeah, livers!")
      StartConversation(conversation, NPC, Spawn, "Mmm, this stew is yums. Livers!")
   elseif HasQuest(Spawn, seaside_stew) then
      if GetQuestStep(Spawn, seaside_stew) == 1 then
         PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga001.mp3", "", "", 1172658624, 839529863, Spawn)
         AddConversationOption(conversation, "I was actually sent here to see if you needed any help.", "NeededHelp")
         AddConversationOption(conversation, "I'll come back.")
         StartConversation(conversation, NPC, Spawn, "Need to wait for stew to be done, no firsties! Many Militia to feed, your mouth no bigger than the rest.")
      elseif GetQuestStep(Spawn, seaside_stew) == 2 then
         AddConversationOption(conversation, "Very well, I'll be back.")
         StartConversation(conversation, NPC, Spawn, "Slice 'em, bash 'em, poke 'em! Gorga doesn't care how, just get me those bees for the stew! They're right over there, just past the barricades!")
      elseif GetQuestStep(Spawn, seaside_stew) == 3 then
         SetStepComplete(Spawn, seaside_stew, 3)
         PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga005.mp3", "", "", 2763280533, 3085926405, Spawn)         AddConversationOption(conversation, "Mmm, livers!")
         StartConversation(conversation, NPC, Spawn, "Heeheehee! Toss 'em in the pot. The next yummies are the main pot filler, livers! Those elks are eatin' up all the eatin' plants anyways, so we kill two halflings with one stone. Bring back the elk livers when you're done.")
      elseif GetQuestStep(Spawn, seaside_stew) == 4 then
         PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga006.mp3", "", "", 915023636, 1332699148, Spawn)
         AddConversationOption(conversation, "Okay, livers!")
         StartConversation(conversation, NPC, Spawn, "Livers! Kill the elk and take 'em for the pot. They eatin' up all the plants here in Seaside Glade, out past the barricades. Return when you get 'em.")
      elseif GetQuestStep(Spawn, seaside_stew) == 5 then
         SetStepComplete(Spawn, seaside_stew, 5)
         PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga007.mp3", "", "", 96491852, 3557455520, Spawn)
         AddConversationOption(conversation, "Back to Tayil!")
         StartConversation(conversation, NPC, Spawn, "Heeheehee! Toss 'em in and smell the Gorga magic. The stew is done now! Head back to Tayil, she's waitin for ya.")
      else
         PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga008.mp3", "", "", 1246021503, 146092815, Spawn)
         AddConversationOption(conversation, "Uh yeah, livers!")
         StartConversation(conversation, NPC, Spawn, "Mmm, this stew is yums. Livers!")
      end
   else
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga001.mp3", "", "", 1172658624, 839529863, Spawn)
      AddConversationOption(conversation, "I'll come back.")
      StartConversation(conversation, NPC, Spawn, "Need to wait for stew to be done, no firsties! Many Militia to feed, your mouth no bigger than the rest.")
   end
end

function NeededHelp(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga002.mp3", "", "", 3263091723, 2988730562, Spawn)
   AddConversationOption(conversation, "So what are we making here?", "WhatAreWeMaking")
   StartConversation(conversation, NPC, Spawn, "Ahh yes, " .. GetName(Spawn) .. ", Tayil said you were comin'. Good then, Gorga can stir the pot while you goes to collect more ingredients! Heeheehee!")
end

function WhatAreWeMaking(NPC, Spawn)
   SetStepComplete(Spawn, seaside_stew, 1)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/chef_gorga/tutorial_island02_evil_revamp/quests/citizenship/chefgorga/chefgorga003.mp3", "", "", 3487347185, 3172564119, Spawn)
   AddConversationOption(conversation, "I'll get some bees.")
   StartConversation(conversation, NPC, Spawn, "Seaside stew! Only a couple things we still needs to get. First is the buzzers, buggin' Gorga they are. Not sure how they taste, but less of 'em is better. Be sure to pluck out the wings slowly, the last buzz is the best buzz.")
end

function CharlesArker(NPC, Spawn)
	SetStepComplete(Spawn, 54, 5)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thank you. Good luck with your meal.")
	StartConversation(conversation, NPC, Spawn, "Gorga not cook someone by that name. Not yet.")
end

