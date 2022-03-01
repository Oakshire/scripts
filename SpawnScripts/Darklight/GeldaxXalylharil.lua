--[[
	Script Name	: SpawnScripts/DarklightWood/GeldaxXalylharil.lua
	Script Purpose	: Geldax Xalylharil 
	Script Author	: fearfx
	Script Date	: 2017.01.26
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheWarpfontSpire = 192
local ComparisonsToTheHarrowglade = 193
local OtherMaterials = 194
local ResonanceCapture = 195

function spawn(NPC)
    ProvidesQuest(NPC, TheWarpfontSpire)
	ProvidesQuest(NPC, ComparisonsToTheHarrowglade)
	ProvidesQuest(NPC, OtherMaterials)
	ProvidesQuest(NPC, ResonanceCapture)
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

	if not HasQuest(Spawn, TheWarpfontSpire) and not HasCompletedQuest(Spawn, TheWarpfontSpire) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am " .. GetName(Spawn) .. ".", "Quest_TheWarpfontSpire")
		StartConversation(conversation, NPC, Spawn, "Greetings. I am Geldax Xalylharil.")
	elseif HasQuest(Spawn, TheWarpfontSpire) and GetQuestStep(Spawn, TheWarpfontSpire) == 2 then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
	    AddConversationOption(conversation, "Yes, here you go.", "Quest_ComparisonsToTheHarrowglade")
    	StartConversation(conversation, NPC, Spawn, "Do you have the dust?")
	elseif not HasQuest(Spawn, ComparisonsToTheHarrowglade) and HasCompletedQuest(Spawn, TheWarpfontSpire) then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
	    AddConversationOption(conversation, "Yes, here you go.", "Quest_ComparisonsToTheHarrowglade")
    	StartConversation(conversation, NPC, Spawn, "Do you have the dust?")
    else
        Say(NPC, "End of Dialog, or error")
	end
end

--------------------------------------------------------------------------------
--      The Warpfont Spire
--------------------------------------------------------------------------------

function Quest_TheWarpfontSpire(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		AddConversationOption(conversation, "What is your work?", "Quest_TheWarpfontSpire_01")
	StartConversation(conversation, NPC, Spawn, "Ah, that name sounds familiar to me for some reason. In any case, welcome to the Wanderlust Fair. Home to many things I have nothing to do with, but also to a bright scientific community. Watching Vornlin work is quite impressive, I must say. I don't know what he is studying, though, as my own work keeps me too busy to question him much.")
end

function Quest_TheWarpfontSpire_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		AddConversationOption(conversation, "And you're trying to figure that out?", "Quest_TheWarpfontSpire_02")
	StartConversation(conversation, NPC, Spawn, "Have you ever heard of Warp Fatigue? I hope not, because I just made it up. But it is what I use to describe the effects of 'something' on certain inhabitants of the Darklight Wood. Near the pass to the Commonlands, southeast of here, you can find the Warpfont Spire. The stone itself has been twisted by some unnatural force. Wisps that spend time near it become twisted themselves, but nobody knows why.")
end

function Quest_TheWarpfontSpire_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		AddConversationOption(conversation, "I could help collect samples.", "Quest_TheWarpfontSpire_03")
	StartConversation(conversation, NPC, Spawn, "Trying, yes, but so far I have not learned very much. Things would go much faster if I could have my samples gathered while I was working, but I'm not as prestigious as Vornlin, and was not provided with an assistant.")
end

function Quest_TheWarpfontSpire_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		AddConversationOption(conversation, "All right, I'll go collect your samples.", "QuestOffer_TheWarpfontSpire")
		AddConversationOption(conversation, "I'm a little busy at the moment.")
	StartConversation(conversation, NPC, Spawn, "That would be perfect. Right now I need the resonant dust from the warped wisplings that coalesce about the Warpfont Spire. If you take the road east out of Wanderlust Fair and then go south at the fork, the Warpfont Spire is south of where the Searing Tendril River splits.")
end

function QuestOffer_TheWarpfontSpire(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

    OfferQuest(NPC, Spawn, TheWarpfontSpire)

		AddConversationOption(conversation, "Great.", "dlg_5_6")
	StartConversation(conversation, NPC, Spawn, "They should be easy to get, the wisps are filled with this dust.")
end

--------------------------------------------------------------------------------
--      Comparisons To The Harrowglade
--------------------------------------------------------------------------------

function Quest_ComparisonsToTheHarrowglade(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

    if GetQuestStep(Spawn, TheWarpfontSpire) == 2 then
        SetStepComplete(Spawn, TheWarpfontSpire, 2)
    end

		AddConversationOption(conversation, "What happened?", "Quest_ComparisonsToTheHarrowglade_01")
	StartConversation(conversation, NPC, Spawn, "My thanks. I can now run some of my first tests to see if--hm. I wasn't exactly expecting this.")
end

function Quest_ComparisonsToTheHarrowglade_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		AddConversationOption(conversation, "So it's affecting everything?", "Quest_ComparisonsToTheHarrowglade_02")
	StartConversation(conversation, NPC, Spawn, "Well, I had always assumed the wisps were affected by the Warpfont Spires because they were somehow naturally attuned to whatever energies the spire is putting out. The magical nature of wisps is why I had assumed only they were being affected. But I've just now come across an impure sample from one of the warped wisplings and it seems that the very soil is also being somehow adjusted by the energies of the Warpfont Spire.")
end

function Quest_ComparisonsToTheHarrowglade_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		AddConversationOption(conversation, "What do you need this time?", "Quest_ComparisonsToTheHarrowglade_03")
	StartConversation(conversation, NPC, Spawn, "I really don't know. Maybe the wisp itself affected this soil, I can't tell without more samples.")
end

function Quest_ComparisonsToTheHarrowglade_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		AddConversationOption(conversation, "I'll go collect the rocks.", "QuestOffer_ComparisonsToTheHarrowglade")
		AddConversationOption(conversation, "I can't, actually.")
	StartConversation(conversation, NPC, Spawn, "Rocks, if you could. Rocks from the Warpfont Spire as well as from the Harrowglade. If this warp is affecting everything then perhaps the spire is not a conduit as I originally imagined and merely a bystander, as these wisps.")
end

function QuestOffer_ComparisonsToTheHarrowglade(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    OfferQuest(NPC, Spawn, ComparisonsToTheHarrowglade)
    
		AddConversationOption(conversation, "I'll be back.", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "Thank you. I will continue my research.")
end

--[[

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, here you go.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Do you have the dust?")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I do.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the samples?")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I do.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the samples?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am Chayne.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Greetings. I am Geldax Xalylharil.")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am Chayne.", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "Greetings. I am Geldax Xalylharil.")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I do.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the samples?")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I do.", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the samples?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes I have.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Have you captured the warp extract?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am Hacaci.", "dlg_14_1")
		StartConversation(conversation, NPC, Spawn, "Greetings. I am Geldax Xalylharil.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am Hacaci.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Greetings. I am Geldax Xalylharil.")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yup. Here you go.", "dlg_20_1")
		StartConversation(conversation, NPC, Spawn, "Have you collected the dust?")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yup. Here you go.", "dlg_21_1")
		StartConversation(conversation, NPC, Spawn, "Have you collected the dust?")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet.", "dlg_24_1")
		StartConversation(conversation, NPC, Spawn, "Have you collected the dust?")
	end

	if convo==29 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yup. Here you go.", "dlg_29_1")
		StartConversation(conversation, NPC, Spawn, "Have you collected the dust?")
	end

	if convo==30 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yup. Here you go.", "dlg_30_1")
		StartConversation(conversation, NPC, Spawn, "Have you collected the dust?")
	end

	if convo==60 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, here you go.", "dlg_60_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the dust?")
	end

	if convo==61 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, here you go.", "dlg_61_1")
		StartConversation(conversation, NPC, Spawn, "Do you have the dust?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What happened?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "My thanks. I can now run some of my first tests to see if--hm. I wasn't exactly expecting this.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So it's affecting everything?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Well, I had always assumed the wisps were affected by the Warpfont Spires because they were somehow naturally attuned to whatever energies the spire is putting out. The magical nature of wisps is why I had assumed only they were being affected. But I've just now come across an impure sample from one of the warped wisplings and it seems that the very soil is also being somehow adjusted by the energies of the Warpfont Spire.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you need this time?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "I really don't know. Maybe the wisp itself affected this soil, I can't tell without more samples.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll go collect the rocks.", "dlg_0_5")
		AddConversationOption(conversation, "I can't, actually.")
	StartConversation(conversation, NPC, Spawn, "Rocks, if you could. Rocks from the Warpfont Spire as well as from the Harrowglade. If this warp is affecting everything then perhaps the spire is not a conduit as I originally imagined and merely a bystander, as these wisps.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be back.", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "Thank you. I will continue my research.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What plan?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Thank you. When I study these further I may be able to figure out what is going on. However, I have another plan to gain more information.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_1_3")
		AddConversationOption(conversation, "Right now I would mind.")
	StartConversation(conversation, NPC, Spawn, "I believe I've found a way to... well... extract the warp from one of the wisplings affected by it. However, using it on the resonant dust from the warped wisplings isn't returning quite the volume I was looking for. However, using it on a living wispling might prove more productive. Would you mind collecting some for me?")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll be back.", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Great. I believe this will help a great deal with my research.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What plan?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Thank you. When I study these further I may be able to figure out what is going on. However, I have another plan to gain more information.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_3_3")
		AddConversationOption(conversation, "Right now I would mind.")
	StartConversation(conversation, NPC, Spawn, "I believe I've found a way to... well... extract the warp from one of the wisplings affected by it. However, using it on the resonant dust from the warped wisplings isn't returning quite the volume I was looking for. However, using it on a living wispling might prove more productive. Would you mind collecting some for me?")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll be back.", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "Great. I believe this will help a great deal with my research.")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is your work?", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Ah, that name sounds familiar to me for some reason. In any case, welcome to the Wanderlust Fair. Home to many things I have nothing to do with, but also to a bright scientific community. Watching Vornlin work is quite impressive, I must say. I don't know what he is studying, though, as my own work keeps me too busy to question him much.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "And you're trying to figure that out?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Have you ever heard of Warp Fatigue? I hope not, because I just made it up. But it is what I use to describe the effects of 'something' on certain inhabitants of the Darklight Wood. Near the pass to the Commonlands, southeast of here, you can find the Warpfont Spire. The stone itself has been twisted by some unnatural force. Wisps that spend time near it become twisted themselves, but nobody knows why.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I could help collect samples.", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "Trying, yes, but so far I have not learned very much. Things would go much faster if I could have my samples gathered while I was working, but I'm not as prestigious as Vornlin, and was not provided with an assistant.")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll go collect your samples.", "dlg_4_5")
		AddConversationOption(conversation, "I'm a little busy at the moment.")
	StartConversation(conversation, NPC, Spawn, "That would be perfect. Right now I need the resonant dust from the warped wisplings that coalesce about the Warpfont Spire. If you take the road east out of Wanderlust Fair and then go south at the fork, the Warpfont Spire is south of where the Searing Tendril River splits.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is your work?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Ah, that name sounds familiar to me for some reason. In any case, welcome to the Wanderlust Fair. Home to many things I have nothing to do with, but also to a bright scientific community. Watching Vornlin work is quite impressive, I must say. I don't know what he is studying, though, as my own work keeps me too busy to question him much.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "And you're trying to figure that out?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Have you ever heard of Warp Fatigue? I hope not, because I just made it up. But it is what I use to describe the effects of 'something' on certain inhabitants of the Darklight Wood. Near the pass to the Commonlands, southeast of here, you can find the Warpfont Spire. The stone itself has been twisted by some unnatural force. Wisps that spend time near it become twisted themselves, but nobody knows why.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I could help collect samples.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "Trying, yes, but so far I have not learned very much. Things would go much faster if I could have my samples gathered while I was working, but I'm not as prestigious as Vornlin, and was not provided with an assistant.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll go collect your samples.", "dlg_5_5")
		AddConversationOption(conversation, "I'm a little busy at the moment.")
	StartConversation(conversation, NPC, Spawn, "That would be perfect. Right now I need the resonant dust from the warped wisplings that coalesce about the Warpfont Spire. If you take the road east out of Wanderlust Fair and then go south at the fork, the Warpfont Spire is south of where the Searing Tendril River splits.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Great.", "dlg_5_6")
	StartConversation(conversation, NPC, Spawn, "They should be easy to get, the wisps are filled with this dust.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What plan?", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Thank you. When I study these further I may be able to figure out what is going on. However, I have another plan to gain more information.")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_6_3")
		AddConversationOption(conversation, "Right now I would mind.")
	StartConversation(conversation, NPC, Spawn, "I believe I've found a way to... well... extract the warp magic from one of the wisplings. However, using it on the resonant dust you recovered from warped wisplings isn't returning quite the volume I was looking for. The magic extracted from a live wispling should prove more voluminous. Would you mind collecting them for me?")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What plan?", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Thank you. When I study these further I may be able to figure out what is going on. However, I have another plan to gain more information.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_7_3")
		AddConversationOption(conversation, "Right now I would mind.")
	StartConversation(conversation, NPC, Spawn, "I believe I've found a way to... well... extract the warp magic from one of the wisplings. However, using it on the resonant dust you recovered from warped wisplings isn't returning quite the volume I was looking for. The magic extracted from a live wispling should prove more voluminous. Would you mind collecting them for me?")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right. I'll be back.", "dlg_7_4")
	StartConversation(conversation, NPC, Spawn, "Splendid. This will help a great deal with my research.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Really begin?", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Perfect. I believe I have all I need now to really begin my research.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "Yes. This is going to take some time. I did preliminary tests to help focus my study, but I've got a long way to go. You helped me up to this point much faster though, thank you.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is your work?", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "Ah, that name sounds familiar to me for some reason. In any case, welcome to the Wanderlust Fair. Home to many things I have nothing to do with, but also to a bright scientific community. Watching Vornlin work is quite impressive, I must say. I don't know what he is studying, though, as my own work keeps me too busy to question him much.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "And you're trying to figure that out?", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "Have you ever heard of Warp Fatigue? I hope not, because I just made it up. But it is what I use to describe the effects of 'something' on certain inhabitants of the Darklight Wood. Near the pass to the Commonlands, southeast of here, you can find the Warpfont Spire. The stone itself has been twisted by some unnatural force. Wisps that spend time near it become twisted themselves, but nobody knows why.")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I could help collect samples.", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "Trying, yes, but so far I have not learned very much. Things would go much faster if I could have my samples gathered while I was working, but I'm not as prestigious as Vornlin, and was not provided with an assistant.")
end

function dlg_14_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll go collect your samples.", "dlg_14_5")
		AddConversationOption(conversation, "I'm a little busy at the moment.")
	StartConversation(conversation, NPC, Spawn, "That would be perfect. Right now I need the resonant dust from the warped wisplings that coalesce about the Warpfont Spire. If you take the road east out of Wanderlust Fair and then go south at the fork, the Warpfont Spire is south of where the Searing Tendril River splits.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is your work?", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "Ah, that name sounds familiar to me for some reason. In any case, welcome to the Wanderlust Fair. Home to many things I have nothing to do with, but also to a bright scientific community. Watching Vornlin work is quite impressive, I must say. I don't know what he is studying, though, as my own work keeps me too busy to question him much.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "And you're trying to figure that out?", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "Have you ever heard of Warp Fatigue? I hope not, because I just made it up. But it is what I use to describe the effects of 'something' on certain inhabitants of the Darklight Wood. Near the pass to the Commonlands, southeast of here, you can find the Warpfont Spire. The stone itself has been twisted by some unnatural force. Wisps that spend time near it become twisted themselves, but nobody knows why.")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I could help collect samples.", "dlg_15_4")
	StartConversation(conversation, NPC, Spawn, "Trying, yes, but so far I have not learned very much. Things would go much faster if I could have my samples gathered while I was working, but I'm not as prestigious as Vornlin, and was not provided with an assistant.")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll go collect your samples.", "dlg_15_5")
		AddConversationOption(conversation, "I'm a little busy at the moment.")
	StartConversation(conversation, NPC, Spawn, "That would be perfect. Right now I need the resonant dust from the warped wisplings that coalesce about the Warpfont Spire. If you take the road east out of Wanderlust Fair and then go south at the fork, the Warpfont Spire is south of where the Searing Tendril River splits.")
end

function dlg_15_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Great.", "dlg_15_6")
	StartConversation(conversation, NPC, Spawn, "They should be easy to get. The wisps are filled with this dust.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I can get more samples.", "dlg_20_2")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Perfect! I appreciate this greatly. This will be quite enough to last me for some while. Hm, do you think you could restock my supplies for the same powder from the wisplings that aren't warped? They are west across the river from the Warpfont Spire, in a small section of the wood known as the Harrowglade.")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I can get more samples.", "dlg_21_2")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Perfect! I appreciate this greatly. This will be quite enough to last me for some while. Hm, do you think you could restock my supplies for the same powder from the wisplings that aren't warped? They are west across the river from the Warpfont Spire, in a small section of the wood known as the Harrowglade.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will return.", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "Good. I will need control samples in my research.")
end

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I can get more samples.", "dlg_29_2")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Perfect! I appreciate this greatly. This will be quite enough to last me for some while. Hm, do you think you could restock my supplies for the same powder from the wisplings that aren't warped? They are west across the river from the Warpfont Spire, in a small section of the wood known as the Harrowglade.")
end

function dlg_30_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I can get more samples.", "dlg_30_2")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Perfect! I appreciate this greatly. This will be quite enough to last me for some while. Hm, do you think you could restock my supplies for the same powder from the wisplings that aren't warped? They are west across the river from the Warpfont Spire, in a small section of the wood known as the Harrowglade.")
end

function dlg_30_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will return.", "dlg_30_3")
	StartConversation(conversation, NPC, Spawn, "Good. I will need control samples in my research.")
end

function dlg_60_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What happened?", "dlg_60_2")
	StartConversation(conversation, NPC, Spawn, "My thanks. I can now run some of my first tests to see if--hm. I wasn't exactly expecting this.")
end

function dlg_60_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So you think the spires might be affecting everything?", "dlg_60_3")
	StartConversation(conversation, NPC, Spawn, "I assumed the wisps were affected by the Warpfont Spires because they are naturally attuned to the arcane energies emitted by the spire, and yet here is an impure sample of soil from one of the wisplings. I wonder if the very earth itself isn't being affected by the energies of the spire.")
end

function dlg_60_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What kinds of samples?", "dlg_60_4")
	StartConversation(conversation, NPC, Spawn, "I'm unsure. Maybe the wisp augmented the soil. I can't be certain without more samples.")
end

function dlg_60_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll go collect the rocks.", "dlg_60_5")
		AddConversationOption(conversation, "I can't, actually.")
	StartConversation(conversation, NPC, Spawn, "Perhaps the spire is not a conduit, as I originally hypothesized. I will require rocks from the Warpfont Spire as well as from the Harrowglade.")
end

function dlg_61_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What happened?", "dlg_61_2")
	StartConversation(conversation, NPC, Spawn, "My thanks. I can now run some of my first tests to see if--hm. I wasn't exactly expecting this.")
end

function dlg_61_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So you think the spires might be affecting everything?", "dlg_61_3")
	StartConversation(conversation, NPC, Spawn, "I assumed the wisps were affected by the Warpfont Spires because they are naturally attuned to the arcane energies emitted by the spire, and yet here is an impure sample of soil from one of the wisplings. I wonder if the very earth itself isn't being affected by the energies of the spire.")
end

function dlg_61_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What kinds of samples?", "dlg_61_4")
	StartConversation(conversation, NPC, Spawn, "I'm unsure. Maybe the wisp augmented the soil. I can't be certain without more samples.")
end

function dlg_61_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll go collect the rocks.", "dlg_61_5")
		AddConversationOption(conversation, "I can't, actually.")
	StartConversation(conversation, NPC, Spawn, "Perhaps the spire is not a conduit, as I originally hypothesized. I will require rocks from the Warpfont Spire as well as from the Harrowglade.")
end

function dlg_61_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be back.", "dlg_61_6")
	StartConversation(conversation, NPC, Spawn, "Waste no time, Hacaci.")
end

]]--