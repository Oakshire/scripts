--[[
    Script Name    : SpawnScripts/Commonlands/JPFeterman.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.06 07:01:46
    Script Purpose : 
                   : 
--]]

local ProofIsInThePudding = 417
local AHuntersTool = 418
local BigGameHunting = 419
local GrizzlefangMane = 420

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
  if not HasQuest(Spawn, ProofIsInThePudding) and not HasCompletedQuest(Spawn, ProofIsInThePudding) then
  ProvidesQuest(NPC, ProofIsInThePudding)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, ProofIsInThePudding) then
  ProvidesQuest(NPC, AHuntersTool)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, AHuntersTool) then
  ProvidesQuest(NPC, BigGameHunting)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, BigGameHunting) then
  ProvidesQuest(NPC, GrizzlefangMane)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
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
        elseif GetQuestStep(Spawn, ProofIsInThePudding) == 6 or GetQuestStep(Spawn, AHuntersTool) == 4 or GetQuestStep(Spawn, BigGameHunting) == 6 or GetQuestStep(Spawn, GrizzlefangMane) == 2  then
        dlg4(NPC, Spawn)
        elseif HasQuest(Spawn, ProofIsInThePudding) and not HasCompletedQuest(Spawn,  ProofIsInThePudding) or HasQuest(Spawn, AHuntersTool) and not HasCompletedQuest(Spawn, AHuntersTool) or HasQuest(Spawn, BigGameHunting) and not HasCompletedQuest(Spawn, BigGameHunting) or HasQuest(Spawn, GrizzlefangMane) and not HasCompletedQuest(Spawn, GrizzlefangMane) then
        progress(NPC, Spawn) 
        elseif HasCompletedQuest(Spawn,  ProofIsInThePudding) and not HasCompletedQuest(Spawn, AHuntersTool) then
        dlg5(NPC, Spawn)       
        elseif HasCompletedQuest(Spawn,  ProofIsInThePudding) and HasCompletedQuest(Spawn, AHuntersTool) and not HasCompletedQuest(Spawn, BigGameHunting) then
        dlg9(NPC, Spawn)
        elseif HasCompletedQuest(Spawn,  ProofIsInThePudding) and HasCompletedQuest(Spawn, AHuntersTool) and  HasCompletedQuest(Spawn, BigGameHunting) and not HasCompletedQuest(Spawn, GrizzlefangMane) then
        dlg13(NPC, Spawn)
      elseif HasCompletedQuest(Spawn,  ProofIsInThePudding) and HasCompletedQuest(Spawn, AHuntersTool) and HasCompletedQuest(Spawn, BigGameHunting) and HasCompletedQuest(Spawn, GrizzlefangMane) then
         PlayFlavor(NPC, "", "Good to see you again!", "", 0, 0, Spawn)
end 
   end

function respawn(NPC)
spawn(NPC)
end


-- PROOF IS IN THE PUDDING PART


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
 if HasQuest(Spawn, ProofIsInThePudding) then
 AddConversationOption(conversation, "I have scouted the areas you asked me to, J.P.", "complete1")
 elseif HasQuest(Spawn, AHuntersTool) then
 AddConversationOption(conversation, "I have what you need to make your bow, J.P", "complete2")
 elseif HasQuest(Spawn, BigGameHunting) then
AddConversationOption(conversation, "I have your trophies, J.P.", "complete3")
elseif HasQuest(Spawn, GrizzlefangMane) then
 AddConversationOption(conversation, "Grizzlefang is no more.", "complete4")
 end
 AddConversationOption(conversation, "That's all the adventure I need for one day.")
 StartConversation(conversation, NPC, Spawn, "Hello again, young adventurer to be!")
end 




-- A HUNTER'S TOOL PART


function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Oh, is that what you think you are doing?", "dlg6")
 AddConversationOption(conversation, "You think that you are actually teaching me something? I think I'm done with this.")
 StartConversation(conversation, NPC, Spawn, "Back so soon? My, you are the eager little apprentice aren't you? Well, when I was your age, I too was looking for someone older and wiser to lead me down the road of adventuring.")
end


function dlg6(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "What happened to your bow?", "dlg7")
 AddConversationOption(conversation, "I don't care about your silly bow.")
 StartConversation(conversation, NPC, Spawn, "Oh yes, very much so. Just because you can't see the lessons now doesn't mean that I am any less the mentor. Why, I'd be out there in the field hunting with you, if it weren't for the loss of my favorite bow.")
end

function dlg7(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Fine, I'll help you fix your bow.", "dlg8")
 AddConversationOption(conversation, "I've had enough of this. Fix your own bow.")
 StartConversation(conversation, NPC, Spawn, "It's just worn from overuse. Oh, the beasts I have slain with my mighty bow.  I am simply too busy, with all of my many apprentices, to take the time to gather the components I need to fix my bow. I think it will be a wonderful task for your studies.")
end

function dlg8(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
  AddConversationOption(conversation, "Ok, I'll see what I can do.", "offer2")
  StartConversation(conversation, NPC, Spawn, "I'll need a few sturdy pieces of maple, some tuber strands to make a nice draw, and maybe you could convince a couple dervishes to relinquish a compound cam or two.")
end

-- BIG GAME HUNTING PART


function dlg9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Whatever, I'm ready.", "dlg10")
	AddConversationOption(conversation, "No way. ")
	StartConversation(conversation, NPC, Spawn, "Hello again, my young pupil! I must say that I was quite impressed with your last performance. Your skills are already improving, thanks largely to my expert tutelage, and I think you may even be ready to begin some real adventuring soon. What do you say to that?")
end

function dlg10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Right, right. I'm not as great as you... sure. What do you want me to do?", "dlg11")
	AddConversationOption(conversation, "I think I'm going to leave now.")
	StartConversation(conversation, NPC, Spawn, "I don't know that you're quite ready to take on some of the more fearsome monsters found in this region, so we shall have to come up with a task better suited to your abilities.")
end


function dlg11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "A safari sounds fun.", "dlg12")
	AddConversationOption(conversation, "I think you'll have to complete your own collection.")
	StartConversation(conversation, NPC, Spawn, "Well, I'd say your skills should be sufficient now to go on a modest hunt across the vast plains of the Commonlands. A safari should be perfect for you, and it will help me complete my renowned trophy collection!")
end

function dlg12(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "But you haven't actually taught me anything...", "offer3")
	StartConversation(conversation, NPC, Spawn, "Great! Now to complete my collection, I'll need a skull from a fierce carrion hound, a Bloodskull mason's pick, a plains elephant tusk, a bull rhino horn, and a stinger from one of the rather vicious sentry wasps found out here. Now, run along and put all those skills I've taught you to work!")
end

-- GRIZZLEFANG MANE PART

function dlg13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, I'll find and slay the lion. Sounds like fun!", "dlg14")
	AddConversationOption(conversation, "You want me to do your dirty work? You are on your own on this one.")
	StartConversation(conversation, NPC, Spawn, "This bow reminds me of the one great beast that escaped me: the mighty lion, Grizzlefang. You could surely prove your prowess as a hunter were you to bring me the mane of the beast. It would prove a more than adequate last stage in your training.")
end
    
    
function dlg14(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright, I'm off.", "offer4")
	StartConversation(conversation, NPC, Spawn, "Excellent. You can find Grizzlefang near the old druid rings. Or, at least, the last time I ran fro... er saw him, he was near the old druid rings. If you head that way, I'm sure he'll find you.")
end




function complete1(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, ProofIsInThePudding, 6)
conversation = CreateConversation()
 AddConversationOption(conversation, "Why thank you, J.P.")
 StartConversation(conversation, NPC, Spawn, "Very well done, or at least done... Anyways, I'm not done with you yet.")
end


    
function complete2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, AHuntersTool, 4)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I guess I will take that as a compliment.")
 StartConversation(conversation, NPC, Spawn, "Well done, but since you took so long, I repaired it myself. No matter. You show spunk, and I like that.")
end

function complete3(NPC, Spawn)
    SetStepComplete(Spawn, BigGameHunting, 6)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Umm, sure J.P.")
	StartConversation(conversation, NPC, Spawn, "Excellent, under my expert tutelage anyone can become a great adventurer!")
end


function complete4(NPC, Spawn)
    SetStepComplete(Spawn, GrizzlefangMane, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will, J.P. Thank you for your guidance.")
	StartConversation(conversation, NPC, Spawn, "Amazing! I didn't think you had it in you! Well done indeed. It appears I have nothing left to teach you. The rest, you must discover on your own.")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ProofIsInThePudding)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, AHuntersTool)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, BigGameHunting)
end

function offer4(NPC, Spawn)
OfferQuest(NPC, Spawn, GrizzlefangMane)
end


function progress(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Why do I put up with this?")
StartConversation(conversation, NPC, Spawn, "Hurry on now! You've got a lot of work to do, my young friend. Come see me when you're finished.")
end
