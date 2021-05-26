--[[
    Script Name    : SpawnScripts/Commonlands/Marcus.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.25 06:05:36
    Script Purpose : 
                   : 
--]]

local TheSecretValley = 5234

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, TheSecretValley) == 1 then
	AddConversationOption(conversation, "Are you the Merchant Marcus who put up the wanted poster in the Crossroads?", "Option1")
	elseif GetQuestStep(Spawn, TheSecretValley) == 2 or GetQuestStep(Spawn, TheSecretValley) == 3 or GetQuestStep(Spawn, TheSecretValley) == 4 then
	AddConversationOption(conversation, "Hello again Marcus.", "QuestProgress")
	elseif  GetQuestStep(Spawn, TheSecretValley) == 5 then
	AddConversationOption(conversation, "I have gathered the ingredients you asked for.", "Option9")
	end    
    AddConversationOption(conversation, "Just browsing your wares...")
	StartConversation(conversation, NPC, Spawn, "Hello theres, hows can I helps you today?")
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What offer?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Why yes, indeed, that poster is mine.  Yous are interested in the offer then?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Antonica?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Wells you see, just a short time ago a group of Rogue Magi came by here.  From the continent of Antonica they were...")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Secrets?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Yes, Antonica.  Theys seemed to be fleeing something, banishments perhaps.  No matter though, you sees that rockpile over there?  It is actually the entrance to an ancient valley, one which holds a great many secrets...")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Your assistance?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Yes, that valley is where the magi have gone.  With my helps of course.  They had devised a potion that would allows them to pass through the rock unharmed....a Potion of Earthwalking if yous will.  In so doing theys required my assistance of course, for I am Marcus.")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
		AddConversationOption(conversation, "So you put the sign up so you could sell others the potion to let them into the valley?", "Option7")
	AddConversationOption(conversation, "Why don't you go into the valley yourself?", "Option6")
	StartConversation(conversation, NPC, Spawn, "The potion that they had devised required certain ingredients....some of which they did not have in their possession.  Not knowing the area well they contracted me to assist them in gathering these items, for a fee, of course.  In the course of gathering their ingredients I was able to discern the secrets to creating this potion myself.")
end


function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Of course Marcus, you were saying?", "Option7")
	StartConversation(conversation, NPC, Spawn, "Marcus, I ams a merchant see?  Yous, you are the brave adventurer.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Very well, I've come this far, what do you need me to get?", "Option8")
	AddConversationOption(conversation, "No, I'm not interested")
	StartConversation(conversation, NPC, Spawn, "The magi, they depleted my stores you see, and I am out of a few key ingredients at this time.  If you were to gather them for me I would give you a potion, free of charge.")
end


function Option8(NPC, Spawn)
    SetStepComplete(Spawn,  TheSecretValley, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "That's a nice book you have there, let me see it.  Yes, I'll jot down for you now the items I wills be needing.  Come see me again when you have them all.")
end


function Option9(NPC, Spawn)
    SetStepComplete(Spawn, TheSecretValley, 5)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're not really making a potion out of what I gave you are you?", "Option10")
	StartConversation(conversation, NPC, Spawn, "Excellent, yous have gathered whats I need!  Gives them here...and yes, heres is your potion as I promised.  Marcus always stays true to his word, he does.")
end


function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you for the warning, I'm sure I can handle myself.", "Option11")
	AddConversationOption(conversation, "That does sound dangerous, maybe i'd better not go in", "Option11")
	StartConversation(conversation, NPC, Spawn, "Yes, but it's a special potion.  Anyway, before you goes in theres, a words of warning for yous.  That valley is very dangerous and very old.  I know not whats has happened since the Magi have entered but terrible sounds have come from the valley in recent nights, howling, wretched sounds they are.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Well thank you again for the warning, good day to you.", "Option12")
	StartConversation(conversation, NPC, Spawn, "Ahh yess, but the treasures there, I am sure that they are amazing.  These are not the first magi to enter that valley you know, no's, they are not.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes Marcus, I'm sure you would be more than eager to sell me more of these potions.")
	StartConversation(conversation, NPC, Spawn, "Oh yes, one last thing.  The potion, there is enough to cover three in a bottle but once opened it will only work once.  If you needs to go back for some reason, you know who to talk to.")
end



function QuestProgress(NPC, Spawn)
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Fine.")
	StartConversation(conversation, NPC, Spawn, "I can't helps you if yous don't bring me whats I need.  Come back to Marcus when you have everythings that I asked for.")
end

   
    


function respawn(NPC)
	spawn(NPC)
end