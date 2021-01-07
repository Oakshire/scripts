--[[
    Script Name    : SpawnScripts/Commonlands/JPFeterman.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.06 07:01:46
    Script Purpose : 
                   : 
--]]

local ProofIsInThePudding = 417

function spawn(NPC)
ProvidesQuest(NPC, ProofIsInThePudding)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1010.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1010.mp3", "", "", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1010.mp3", "", "", 0, 0, Spawn)
	end
        if not HasQuest(Spawn, ProofIsInThePudding) and not HasCompletedQuest(Spawn,  ProofIsInThePudding)  then
        dlg(NPC, Spawn) 
        elseif GetQuestStep(Spawn, ProofIsInThePudding) == 6 then
        dlg4(NPC, Spawn)
        elseif HasQuest(Spawn, ProofIsInThePudding) and not HasCompletedQuest(Spawn,  ProofIsInThePudding) then
        progress(NPC, Spawn)                 	
end
   end

function respawn(NPC)
spawn(NPC)
end

function dlg(NPC, Spawn)
  FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Um, what are you talking about?", "dlg1")
 AddConversationOption(conversation, "Right, I really don't have time for this.")
 StartConversation(conversation, NPC, Spawn, "Salutations, friend! Ahh, by the look in your eyes I can see that you're in need of my considerable experience. It can be difficult learning the perilous ways of adventure in these harsh, barren lands. Many a poor, naive soul such as yourself has met their end out here.")
end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
  AddConversationOption(conversation, "Well, you aren't full of yourself at all, are you?", "dlg2")
  AddConversationOption(conversation, "That's it, I'm not going to take this.")
  StartConversation(conversation, NPC, Spawn, "Oh, there's no need to pretend otherwise! I understand your fears. Not many are as knowledgeable of these things as I am, and I feel it's my duty to help those who could benefit from my tutelage. Why, even I was once as inexperienced as yourself a long, long time ago... but that is a story for another time.")
end


function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
  AddConversationOption(conversation, "I guess it couldn't hurt...", "dlg3")
  AddConversationOption(conversation, "No way. I'm leaving.")
  StartConversation(conversation, NPC, Spawn, "Ahh, such spirit. It warms my heart to see it. Before I send you into the arms of danger, I'll need you to prove to me that you're ready to follow in my renowned footsteps. Once you've seen a few of the more perilous places of adventure, you should be ready to learn from my experience.")
end


function dlg3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
  AddConversationOption(conversation, "Okay.", "offer")
 StartConversation(conversation, NPC, Spawn, "That's the spirit! Here, let me just jot down a few of the more perilous locations here in The Commonlands in your journal.")
end


function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "I have scouted the areas you asked me to, J.P.", "complete1")
 AddConversationOption(conversation, "That's all the adventure I need for one day.")
 StartConversation(conversation, NPC, Spawn, "Hello again, young adventurer to be!")
end 

function complete1(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, ProofIsInThePudding, 6)
conversation = CreateConversation()
 AddConversationOption(conversation, "Why thank you, J.P.")
 StartConversation(conversation, NPC, Spawn, "Very well done, or at least done... Anyways, I'm not done with you yet.")
end




function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, ProofIsInThePudding)
end

function progress(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Why do I put up with this?")
StartConversation(conversation, NPC, Spawn, "Hurry on now! You've got a lot of work to do, my young friend. Come see me when you're finished.")
end
