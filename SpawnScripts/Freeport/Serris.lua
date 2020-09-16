--[[
    Script Name    : SpawnScripts/Freeport/Serris.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:57
    Script Purpose : 
                   : 
--]]

QUEST1 = 581

function spawn(NPC)
 ProvidesQuest(NPC, QUEST1)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, QUEST1) and not HasCompletedQuest(Spawn, QUEST1) then
    conversation = CreateConversation()
    PlayFlavor(NPC, "serris/freeport_combined/quest/serris/serris_001.mp3", "", "", 3753219011, 3113331860, Spawn)
    AddConversationOption(conversation, "What?  I didn't do anything!", "dlg1")
    AddConversationOption(conversation, "Is there something I can help you with?", "dlg1")
    StartConversation(conversation, NPC, Spawn, "Sstop right there, citizen!  I would have wordss with you.")  
    elseif HasQuest(Spawn, QUEST1) and GetQuestStep(Spawn, QUEST1) < 5 then
    PlayFlavor(NPC, "", "There'ss no time for idle chatter.  Ssee to the armss dealerss.", "", "no", 1689589577, 4560189, Spawn) 
    else
    PlayFlavor(NPC, "", "Come ssee me when you've matured a bit, sscrappling.", "", 1689589577, 4560189, Spawn)
end
   end

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "serris/freeport_combined/quest/serris/serris_002.mp3", "", "", 381106923, 1675388434, Spawn)
  AddConversationOption(conversation, "I see.  What is it you need?", "dlg2")
  AddConversationOption(conversation, "Find someone else to do your dirty work.  Goodbye.")
  StartConversation(conversation, NPC, Spawn, "Not to worry, citizen.  This iss an opportunity to sserve the city and one that only a fool would passs up.  There are benefitss to working with the Militia.  You would be on the right sside of the law and at the right hand of Lucan.")
end

function dlg2(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "serris/freeport_combined/quest/serris/serris_003.mp3", "", "", 165900414, 3947077681, Spawn)
  AddConversationOption(conversation, "Very well.  Tell me more.", "dlg6")
  AddConversationOption(conversation, "You mean like the civil war that erupted when Lucan disappeared?", "dlg5")
  AddConversationOption(conversation, "That speech impediment is really annoying.", "dlg4")
  AddConversationOption(conversation, "I'm not interested.  Goodbye.") 
  StartConversation(conversation, NPC, Spawn, "The city guard hass cracked down on weapon ssaless to unqualified citizens, but this hasn't stopped the illegal transsfer of blades in our city.  The lasst thing Freeport needss iss another bloody civil war.  Through some... perssuasion, I've uncovered the names of vendors who have been sselling to those who are not authorized to carry armss.")
end

function dlg4(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "serris/freeport_combined/quest/serris/serris_004.mp3", "", "", 3293364734, 3845341563, Spawn)
  AddConversationOption(conversation, "I suppose that's true.  Well, I'm interested in your task. Tell me more.", "dlg6")
  AddConversationOption(conversation, "How could I sssstop to think with your obnoxious hissing voice ringing in my ears?  Goodbye.")
  StartConversation(conversation, NPC, Spawn, "Did you sstop to think that you ssound sstrange to me too?")
end




function dlg6(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "serris/freeport_combined/quest/serris/serris_006.mp3", "", "", 106334123, 3748233325, Spawn)
  AddConversationOption(conversation, "I can handle myself in a fight.", "offer")
  AddConversationOption(conversation, "See you after I've handled the vendors.", "offer")
  AddConversationOption(conversation, "On second thought, I'm not interested.  Goodbye.")
  StartConversation(conversation, NPC, Spawn, "I can't confront all of the vendors at once.  As ssoon as the firsst one is aware of our questioning, the rest will amend their bookss or make themselvess sscarce.  We're going to need to ssplit up.  I'll speak to Ikthar Icehammer and my old friend Skaznik, while you sspeak to Sleeth and Jan MacGetz.  Get their ledgerss to find out who they've been sselling to.  And "..GetName(Spawn).."... expect a fight.")
end

function dlg5(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "serris/freeport_combined/quest/serris/serris_005.mp3", "", "", 696334721, 2455797975, Spawn)
  AddConversationOption(conversation, "Everyone knows that the city descended into chaos when Lucan left.  So, how can I help?", "dlg6")
  AddConversationOption(conversation, "Yes, without order there is anarchy and all that.  What was it you needed from me?", "dlg6")
  AddConversationOption(conversation, "I was with you until you started speaking in metaphor.  Goodbye.")
  StartConversation(conversation, NPC, Spawn, "Precissely.  Hisstory has consisstently shown that the shadow of a government is necessary to maintain order.  Without it, the insectss of the city will devour each other.  You ssurprise me with your knowledge of politicss, friend.")
end

function offer(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, QUEST1)
end





function respawn(NPC)


end

