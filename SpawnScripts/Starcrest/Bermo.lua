--[[
	Script Name	: SpawnScripts/Starcrest/Bermo.lua
	Script Purpose	: Bermo <Bartender>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local GATHERING_GLOWMYST = 244 -- was 36

function spawn(NPC)
   ProvidesQuest(NPC, GATHERING_GLOWMYST)
end

function respawn(NPC)
   spawn(NPC)
end

function targeted(NPC, Spawn)
	hailed(NPC, Spawn)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   if HasCompletedQuest(Spawn, GATHERING_GLOWMYST) then
      AllMannerOfFermented(NPC, Spawn)
   elseif HasQuest(Spawn, GATHERING_GLOWMYST) then
      if GetQuestStep(Spawn, GATHERING_GLOWMYST) == 2 then
         AllMannerOfFermentedDone(NPC, Spawn)
      else
         AllMannerOfFermented(NPC, Spawn)
      end
   else
      AllMannerOfFermentedNoQuest(NPC, Spawn)
   end
end

---------------------------------------------------------------------------------------------------------------------
--                     QUEST 1
---------------------------------------------------------------------------------------------------------------------
function AllMannerOfFermentedDone(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/bartender_bermo/qey_village02/bartenderbermo.mp3", "", "", 861640330, 2606733244, Spawn)
   AddConversationOption(conversation, "I've brought back the glowmyst juice you needed!", "GotJuice")
   AddConversationOption(conversation, "No thanks.")
   StartConversation(conversation, NPC, Spawn, "All manner of fermented beverages available here, all with my special Glowmyst juice added!")
end

function AllMannerOfFermentedNoQuest(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/bartender_bermo/qey_village02/bartenderbermo.mp3", "", "", 861640330, 2606733244, Spawn)
   AddConversationOption(conversation, "Glowmyst juice? What's that? ", "dlg_15_1")
   AddConversationOption(conversation, "No thanks.")
   StartConversation(conversation, NPC, Spawn, "All manner of fermented beverages available here, all with my special Glowmyst juice added!")
end

function AllMannerOfFermented(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/bartender_bermo/qey_village02/bartenderbermo.mp3", "", "", 861640330, 2606733244, Spawn)
   AddConversationOption(conversation, "No thanks.")
   StartConversation(conversation, NPC, Spawn, "All manner of fermented beverages available here, all with my special Glowmyst juice added!")
end

function dlg_15_1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/bartender_bermo/qey_village02/bartenderbermo000.mp3", "", "", 2271463066, 2768575441, Spawn)
   AddConversationOption(conversation, "Sure, why not?", "dlg_15_2")
   AddConversationOption(conversation, "I don't think I'm cut out for that.")
   StartConversation(conversation, NPC, Spawn, "It's a special juice I squeeze from the glowmyst beetles and I'm running short on the stuff; my customers love it.  Hey, you're a stout one, would you mind squeezing me some?")
end

function dlg_15_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/bartender_bermo/qey_village02/bartenderbermo001.mp3", "", "", 1349632986, 1200312116, Spawn)
   AddConversationOption(conversation, "I'll get you some.", "OfferQuest1")
   StartConversation(conversation, NPC, Spawn, "You must go to the Oakymyst forest and harvest the beetles. I'll need at least a handful of the beetles -- their juice doesn't add to or take away from the flavor of my drinks, but it gives them a slight, radiant glow.")
end

function GotJuice(NPC, Spawn)
   SetStepComplete(Spawn, GATHERING_GLOWMYST, 2)

   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   AddConversationOption(conversation, "Thanks Bermo!")
   StartConversation(conversation, NPC, Spawn, "Great! This will last at least a week! If you wait just a minute...Ahh, here we are! Take some money for your troubles. I insist!")
end

function OfferQuest1(NPC, Spawn)
   OfferQuest(NPC, Spawn, GATHERING_GLOWMYST)
end