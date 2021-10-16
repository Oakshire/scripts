--[[
    Script Name    : SpawnScripts/CryptBetrayal/CryptkeeperMaglus.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 08:10:01
    Script Purpose : 
                   : 
--]]

local ForgottenPotion = 5372
local ForgottenPotionIntoTheHive = 5373

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	if not HasCompletedQuest(Spawn, ForgottenPotion) then
	PlayFlavor(NPC, "", "Two ... no, no ... five more.  Wait, seven more ... I keep losing track!", "", 1689589577, 4560189, Spawn)
	elseif HasCompletedQuest(Spawn, ForgottenPotion) and not HasCompletedQuest(Spawn, ForgottenPotionIntoTheHive) then
	PlayFlavor(NPC, "", "Oh, no! Now I need something else for this potion!", "", 1689589577, 4560189, Spawn)
end
	end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if  not HasQuest(Spawn, ForgottenPotion) and not HasCompletedQuest(Spawn, ForgottenPotion) then
    first_quest(NPC, Spawn)
	elseif HasQuest(Spawn, ForgottenPotion) then
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, ForgottenPotion) == 2 then
	AddConversationOption(conversation, "Yes, I have them right here.", "Option4")
	end
	AddConversationOption(conversation, "No, not yet.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Good to see you again! Did you get those wings?")
	elseif HasCompletedQuest(Spawn, ForgottenPotion) and not HasQuest(Spawn, ForgottenPotionIntoTheHive) and not HasCompletedQuest(Spawn, ForgottenPotionIntoTheHive) then
    second_quest(NPC, Spawn)
    elseif HasQuest(Spawn, ForgottenPotionIntoTheHive) and GetQuestStep(Spawn, ForgottenPotionIntoTheHive) <= 2 then
    local conversation = CreateConversation()    
    if GetQuestStep(Spawn, ForgottenPotionIntoTheHive) == 2 then
	AddConversationOption(conversation, "Yes, I have them right here.", "Option8")
	end
	AddConversationOption(conversation, "No, not yet.", "Option7")
	StartConversation(conversation, NPC, Spawn, "Breathe slowly, carefully now ...  Ah, hello again! Have you got the deathly scarab antennae?")
	elseif GetQuestStep(Spawn, ForgottenPotionIntoTheHive) == 3 or GetQuestStep(Spawn, ForgottenPotionIntoTheHive) == 4  or GetQuestStep(Spawn, ForgottenPotionIntoTheHive) == 5 then
    second_quest_progress(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, ForgottenPotion) and HasCompletedQuest(Spawn, ForgottenPotionIntoTheHive) then
    PlayFlavor(NPC, "", "This potion is great! Thank you for helping me!", "", 1689589577, 4560189, Spawn)
	end
end

function first_quest(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What are you doing?", "Option1")
	AddConversationOption(conversation, "Good luck finding them.")
	StartConversation(conversation, NPC, Spawn, "Ah, how convenient for me!  Give me a moment to think.  Yes, I definitely need five more sets of wings.")
end


function second_quest(NPC, Spawn)
	local conversation = CreateConversation()    
	AddConversationOption(conversation, "On the ceiling?", "Option5")
	AddConversationOption(conversation, "I'll be on my way, then.")
	StartConversation(conversation, NPC, Spawn, "Your timing is impeccable! You see, this potion I'm concocting is very volatile. It can explode at any minute! Ka-BOOM! And then where would we be, eh?")
end	


function second_quest_progress(NPC, Spawn)
    local conversation = CreateConversation() 
    if GetQuestStep(Spawn, ForgottenPotionIntoTheHive) == 5 then
    	AddConversationOption(conversation, "I have the antennae and I have slain the deathly beetle queen.", "Option14")
    	end
    	AddConversationOption(conversation, "Sorry, I will be back soon.")
	StartConversation(conversation, NPC, Spawn, "What are you doing back here so soon? You better have the antennae, or are you trying to make me go ka-Boom?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Do you need help?", "Option2")
		AddConversationOption(conversation, "Six, eight, ten...I wish you luck.")
	StartConversation(conversation, NPC, Spawn, "I'm preparing the ingredients for a potion, and with all the running around I have to do, I lose track now and then.  Now, where was I? Oh, yes.  Wings.  One, two, four... that can't be right!")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Absolutely.  I will get you the wings you need.", "offer")
	AddConversationOption(conversation, "No, I cannot help you.")
	StartConversation(conversation, NPC, Spawn, "Yes, thanks for offering! I need ten more wings from some of these shrillers.  Can you help me?")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will be back.")
	StartConversation(conversation, NPC, Spawn, "Hurry up! These potions are delicate things, and I need those shriller wings.")
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, ForgottenPotion, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Glad you stumbled across me when you did. I sure need those wings.  These'll come in handy.  Thanks!")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I suppose I can.  What do you need now?", "Option6")
		AddConversationOption(conversation, "Sorry, can't spare the time right now.")
	StartConversation(conversation, NPC, Spawn, "Ha! You find this amusing, do you? If I don't finish this potion soon, the volatility will only increase. If you can spare some time, perhaps you could gather another component for me? Please?")
end


function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Definitely.  I will get you fifteen beetle antennae.", "offer2")
	AddConversationOption(conversation, "No, I cannot help you.")
	StartConversation(conversation, NPC, Spawn, "Splendid! This saves me gobs of time, you have no idea! The recipe calls for fifteen deadly scarab antennae. Disgusting creatures. You can't help but find these scarabs throughout these catacombs. Handy, isn't it?")
end


function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, NPC, Spawn, "The sooner you get back with fifteen of those deathly scarab antennae, the lower the chance of Ka-BOOM!")
end


function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What's wrong?", "Option9")
		AddConversationOption(conversation, "Let me get back to you on this. ")
	StartConversation(conversation, NPC, Spawn, "This is great! Well ... Wait ... No!")
end


function Option9(NPC, Spawn)
    SetStepComplete(Spawn, ForgottenPotionIntoTheHive, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I don't understand.  A deathly scarab is a deathly scarab, right?", "Option10")
	AddConversationOption(conversation, "I remembered something else I have to do right now.  See you around.")
	StartConversation(conversation, NPC, Spawn, "I realized after you walked off, that I made a mistake. And, of course, it's not a small one. You see, these aren't from the right type of deathly scarab, that's why I stopped collecting them myself.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ka-BOOM?", "Option11")
	AddConversationOption(conversation, "I'll be back later.")
	StartConversation(conversation, NPC, Spawn, "Oh ... no. They're not the same at all. There's the common deathly scarab, and then there's another type. Looks almost exactly the same, but its chemical composition is radically different. And that means...")
end


function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Let me guess, you want me to find the nest?", "Option12")
	AddConversationOption(conversation, "This doesn't interest me right now.")
	StartConversation(conversation, NPC, Spawn, "...Ka-BOOM! Exactly! Hmm, you know? There's a reason these other deathly scarabs are showing up more frequently down here. I bet the ones we need are back protecting the Queen in her lair.")
end



function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "(continue)", "Option13")
	StartConversation(conversation, NPC, Spawn, "That would make things much safer around here. I mean, one wrong component in this potion, and well ... it wouldn't be pretty. Since these look-alike deadly scarabs are here in the catacombs, I assume the ones I need are in their nest.")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right, I will find and destroy the deathly scarab queen.")
	StartConversation(conversation, NPC, Spawn, "Every bug nest has its queen. If you destroy their queen, the number of abnormal deadly scarabs will reduce to nothing. Here, take this key and enter the doorway at the top of the staircase. The tunnels will lead to her chambers.")
end


function Option14(NPC, Spawn)
    SetStepComplete(Spawn, ForgottenPotionIntoTheHive, 5)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Great! These antennae are sure to do the trick. Stand back a moment ... a pinch here, a pinch there and ... YES! The potion is stable, excellent work. Here, please take this as a token of my appreciation.")
end




function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ForgottenPotion)
end

function offer2(NPC, Spawn)
 OfferQuest(NPC, Spawn,  ForgottenPotionIntoTheHive)
end



function respawn(NPC)
	spawn(NPC)
end