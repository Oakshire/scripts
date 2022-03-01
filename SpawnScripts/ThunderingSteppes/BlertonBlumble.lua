--[[
    Script Name    : SpawnScripts/ThunderingSteppes/BlertonBlumble.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.07 09:07:30
    Script Purpose : 
                   : 
--]]

local WatchYourStepInTheTSPartI = 99
local WatchYourStepInTheTSPartIV = 102
local BlumbleBlunder = 103

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasQuest(Spawn, WatchYourStepInTheTSPartI) and not HasCompletedQuest(Spawn, WatchYourStepInTheTSPartI) then
		PlayFlavor(NPC, "", "Oh, hey. Uh, could you maybe just run along and go bother someone else? Thanks a bunch...", "", 1689589577, 4560189, Spawn)
	elseif HasQuest(Spawn, WatchYourStepInTheTSPartI) and GetQuestStep(Spawn, WatchYourStepInTheTSPartI) == 1 then
		-- On WatchYourStepInTheTSPartI
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1026.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yeah, whatever. I have a letter for you.", "dlg_0_1")
		AddConversationOption(conversation, "I think I'll be going now.")
		StartConversation(conversation, NPC, Spawn, "Oh, hey. Uh, could you maybe just run along and go bother someone else? Thanks a bunch...")
	elseif HasQuest(Spawn, BlumbleBlunder) and GetQuestStep(Spawn, BlumbleBlunder) ~= 2 then	
		PlayFlavor(NPC, "", "Look, I'm not giving you anything until you find Grandpa Blumble. He's probably off searching for pirates again. We've never found out why he does it, but he usually ends up on the beach north of here.", "", 1689589577, 4560189, Spawn)
	elseif HasQuest(Spawn, BlumbleBlunder) and GetQuestStep(Spawn, BlumbleBlunder) == 2 then	
		-- Turn in BlumbleBlunder
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1026.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I've found Grandpa Blumble.", "dlg_1_1")
		AddConversationOption(conversation, "I'm still looking.")
		StartConversation(conversation, NPC, Spawn, "Hello again. How goes the search?")
	elseif not HasQuest(Spawn, WatchYourStepInTheTSPartIV) and not HasCompletedQuest(Spawn, WatchYourStepInTheTSPartIV) and HasCompletedQuest(Spawn, BlumbleBlunder) then
		PlayFlavor(NPC, "", "Hello! Thanks again for finding Grandpa Blumble. Hmm, I wonder if I could get Matsy to tell 'Foot Breath' I didn't mean it...", "", 1689589577, 4560189, Spawn)
	elseif HasQuest(Spawn, WatchYourStepInTheTSPartIV) or HasCompletedQuest(Spawn, WatchYourStepInTheTSPartIV) then
		PlayFlavor(NPC, "", "Gosh, I'm sure glad you stopped working for Jacques. Now that he has someone else working for him the mail comes much faster. You were so slow!", "", 1689589577, 4560189, Spawn)
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What?", "dlg_0_2")
	AddConversationOption(conversation, "Foot breath? I don't think I want to hear any more of this...")
	StartConversation(conversation, NPC, Spawn, "A letter from Matsy? Uh oh, here we go again. Well, I'd guess you won't go bury it somewhere under a rock for me, so I suppose you'd better hand it over. I wonder what hideous banshee she's trying to set me up with now... The last one had a face like a minotaur with a skin condition and her breath smelled like feet! Let's see here...hah, she's given up on that at least. Eww, well that does explain her breath. That's just disgusting. Oh no, not again!")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "dlg_0_3")
	AddConversationOption(conversation, "I think I'd rather not.")
	StartConversation(conversation, NPC, Spawn, "It looks like old Grandpa Blumble has gotten lost again. Crazy old fool! I don't want to go off searching for him now.  Hey, you look like an adventurous sort... Do you think you could find him for me?")
end

function dlg_0_3(NPC, Spawn)
	OfferQuest(NPC, Spawn, BlumbleBlunder)
end

function dlg_1_1(NPC, Spawn)
	SetStepComplete(Spawn, BlumbleBlunder, 2)
	SetStepComplete(Spawn, WatchYourStepInTheTSPartI, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Sure thing.")
	StartConversation(conversation, NPC, Spawn, "Thank you so much for finding old Grandpa Blumble. I was beginning to worry. Hah! He really did find pirates? Wow, maybe he isn't quite as crazy as we thought... No, nevermind. There was still that incident with the badgers. He's a loony alright. Please take this reply for Matsy back to Jacques for me.")
end
