--[[
    Script Name    : SpawnScripts/Blumbles/GrandpaBlumble.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.07 11:07:58
    Script Purpose : Grandpa Blumble (4490008)
                   : 
--]]

local SearchForGrandmaBlumble = 104

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, SearchForGrandmaBlumble) then
		PlayFlavor(NPC, "", "So did you find Grandma yet?", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1026.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Are you Grandpa Blumble?", "dlg_0_1")
		StartConversation(conversation, NPC, Spawn, "Why, hello there!  Found the hole I dug, did ya?   You see, I had this map, and it said there was treasure here. I have yet to see any, though.")
	end
end

-- All the below dialog was taken from a text log
function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Ok, so what happened to Grandma?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Yes yes, you haven't seen Grandma around have you? I figured she always liked shiny things and I would find her with the pirate treasure, but I guess not.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Go on.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Oh, well, you see we set out on a grand fishing adventure, I tell ya. We decided to fish up one of those giant fish near the dock in Nektulos, so we got in our boat, the one I made, and set sail for Nektulos.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Wow, that's amazing! What happened next?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Well Ol'Grandma there, she brought along... I would say about half a dozen pies, hot from the oven, she did. Using her skills, she even kept them warm as we sailed across the sea. But it seems that the smell drifted out to the nose of a great pirate captain and he sailed his ship towards us.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What happened after that?", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "To be honest, I finally got a hook up on the biggest fish you ever did see... right as we saw the pirate ship coming through the fog. I guess the sudden jerk from the fish knocked the pies right out of the boat. Then, the pirate ship crashed right smack into us.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What a shame.", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "Well that's about it. I washed up on shore, searched for Grandma, and after a few days of searching I decided to head home, because she would never leave her oven for that long. I hoped she would be back in the Baubbleshire, but sadly, she wasn't. ")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay, thanks.", "OfferSearchForGrandma")
	StartConversation(conversation, NPC, Spawn, "Well I got to thinking, and a pirate would have picked up a cute halfling like her for sure. So if she ended up becoming a pirate, she would be with the treasure. So that's why I am out hunting down pirate treasure, you see. Do you think you could help me find Grandma?  You can keep any of the treasure you find, just let one of the family know as soon as you find her.")
end

function OfferSearchForGrandma(NPC, Spawn)
	OfferQuest(NPC, Spawn, SearchForGrandmaBlumble)
end