--[[
	Script Name		:	SpawnScripts/Stonestair/VessAlIshni.lua
	Script Purpose	:	Vess Al'Ishni <Erudite Mentor>
	Script Author	:	Jabantiz
	Script Date		:	6/22/2018
	Script Notes	:	<special-instructions>
--]]

-- Quest ID's
local ERUDITE_ALCHEMY = 355
local TWEEZING_KERRA = 356
local INCANTATION_ORATION = 357
local ABOLISHING_CURIOUSITY = 358
local ERUDITE_ADVENTURES = 359

function spawn(NPC)
	ProvidesQuest(NPC, ERUDITE_ALCHEMY)
	ProvidesQuest(NPC, TWEEZING_KERRA)
	ProvidesQuest(NPC, ABOLISHING_CURIOUSITY)
	ProvidesQuest(NPC, ERUDITE_ADVENTURES)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	
	local result = false;
	
	local race = GetRace(Spawn)
    if race == 3 then --Erudite
	    result = HandleQuest1Dialog(NPC, Spawn, conversation)
	    if not result then
		    result = HandleQuest2Dialog(NPC, Spawn, conversation)
	    end
	
	    if not result then
		    result = HandleQuest3Dialog(NPC, Spawn, conversation)
	    end
	
	    if not result then
		    result = HandleQuest4Dialog(NPC, Spawn, conversation)
	    end
	
	    if not result then
		    result = HandleQuest5Dialog(NPC, Spawn, conversation)
	    end
	end
	
	if not result then
		Say(NPC, "Sorry. Have a good day.")
	end
end

function HandleQuest1Dialog(NPC, Spawn, conversation)
	local ret = false
	
	if CanReceiveQuest(Spawn, ERUDITE_ALCHEMY) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni001.mp3", "", "", 2148572556, 2411402347, Spawn)
		AddConversationOption(conversation, "Very well, Vess. My name is " .. GetName(Spawn) .. ", but it seems as though you already know that.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. ". So we finally meet. Please, allow me to introduce myself. I am Vess Al'Ishi, and I am pleased to make your acquaintence.")
		ret = true
	elseif HasQuest(Spawn, ERUDITE_ALCHEMY) and GetQuestStep(Spawn, ERUDITE_ALCHEMY) >= 1 and GetQuestStep(Spawn, ERUDITE_ALCHEMY) <= 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/quest_newbie_erudite_vesh_stage_not_completed_6755a304.mp3", "Please return after you've completed what I asked.", "", 1425288537, 3156699857, Spawn)
		ret = true
	elseif HasQuest(Spawn, ERUDITE_ALCHEMY) and GetQuestStep(Spawn, ERUDITE_ALCHEMY) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni014.mp3", "", "", 245696213, 2128891193, Spawn)
		AddConversationOption(conversation, "It wasn't exactly the most arduous of tasks.", "dlg_27_1")
		StartConversation(conversation, NPC, Spawn, "Ahh, I can smell the ground herbs on you! Well done indeed!")
		ret = true
	end
	
	return ret
end

function HandleQuest2Dialog(NPC, Spawn, conversation)
	local ret = false
	
	if CanReceiveQuest(Spawn, TWEEZING_KERRA) then
		dlg_27_2(NPC, Spawn)
		ret = true
	elseif HasQuest(Spawn, TWEEZING_KERRA) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/quest_newbie_erudite_vesh_stage_not_completed_6755a304.mp3", "Please return after you've completed what I asked.", "", 1425288537, 3156699857, Spawn)
		ret = true
	end
	
	return ret
end

function HandleQuest3Dialog(NPC, Spawn, conversation)
	local ret = false
	
	if HasQuest(Spawn, INCANTATION_ORATION) and GetQuestStep(Spawn, INCANTATION_ORATION) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni018.mp3", "", "", 356564578, 3157391878, Spawn)
		AddConversationOption(conversation, "Yes, I did. She asked me to speak with you again.", "dlg_31_1")
		StartConversation(conversation, NPC, Spawn, "So you spoke to Sevri, did you?")
		ret = true
	elseif HasQuest(Spawn, INCANTATION_ORATION) and GetQuestStep(Spawn, INCANTATION_ORATION) == 2 then
		dlg_35_7(NPC, Spawn)
		ret = true
	elseif HasQuest(Spawn, INCANTATION_ORATION) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/quest_newbie_erudite_vesh_stage_not_completed_6755a304.mp3", "Please return after you've completed what I asked.", "", 1425288537, 3156699857, Spawn)
		ret = true
	end
	
	return ret
end

function HandleQuest4Dialog(NPC, Spawn, conversation)
	local ret = false
	
	if CanReceiveQuest(Spawn, ABOLISHING_CURIOUSITY) then
		dlg_35_46(NPC, Spawn)
		ret = true
	elseif HasQuest(Spawn, ABOLISHING_CURIOUSITY) and GetQuestStep(Spawn, ABOLISHING_CURIOUSITY) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni046.mp3", "", "", 3328863454, 1820625790, Spawn)
		AddConversationOption(conversation, "It is.", "dlg_39_1")
		StartConversation(conversation, NPC, Spawn, "So, is the barrier enacted?")
		ret = true
	elseif HasQuest(Spawn, ABOLISHING_CURIOUSITY) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/quest_newbie_erudite_vesh_stage_not_completed_6755a304.mp3", "Please return after you've completed what I asked.", "", 1425288537, 3156699857, Spawn)
		ret = true
	end
	
	return ret
end

function HandleQuest5Dialog(NPC, Spawn, conversation)
	local ret = false
	
	if CanReceiveQuest(Spawn, ERUDITE_ADVENTURES) then
		dlg_39_3(NPC, Spawn)
		ret = true
	end
	
	return ret
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------    Quest 1    -------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni002.mp3", "", "", 1610952532, 2061201835, Spawn)
	AddConversationOption(conversation, "Look, I'm not sure I really need a job.", "dlg_4_2")
	AddConversationOption(conversation, "Help you out? But what would you want me to do?", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "Indeed. I've had the opportunity to look in on your latest adventures, and I could appreciate your obvious talent. In fact, you may just be able to help me out.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni003.mp3", "", "", 1196062600, 3691795630, Spawn)
	AddConversationOption(conversation, "So you don't think much of the kerra, then?", "dlg_4_3")
	AddConversationOption(conversation, "So tell me about this bit of work.", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "Oh, I wouldn't think of offering one of your caliber something so banal as a job. You didn't come here to wash the floor of my house, or sweep up the streets. No, that's what we have the kerra for.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni004.mp3", "", "", 641685572, 3641147429, Spawn)
	AddConversationOption(conversation, "Like that not-a-job, no doubt, yes? Why don't you tell me what you have in mind.", "dlg_4_4")
	AddConversationOption(conversation, "I don't think I'm interested in other matters.")
	StartConversation(conversation, NPC, Spawn, "None of us do, no. They are pets, trained house animals, not much better than the ratonga. In fact, they have fewer uses. But we should speak of more important matters.")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni005.mp3", "", "", 891412912, 134486760, Spawn)
	AddConversationOption(conversation, "Do go on. I wouldn't expect you to open your house, as it were, to a stranger.", "dlg_4_5")
	AddConversationOption(conversation, "Stop. I think I've heard this before. You want to get to 'trust' me first, by giving me a few things to do. Then you'll 'let' me become a member of your little gang so I can do the dangerous things.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "We have something of an... organization... here in the Byway. I will not go into details until I am certain of your... character, shall we say?")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni006.mp3", "", "", 1098533707, 3355873785, Spawn)
	AddConversationOption(conversation, "Perhaps.")
	StartConversation(conversation, NPC, Spawn, "No. That's not what I mean at all. I'm sorry to hear you feel that way. Perhaps we can speak again later?")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni007.mp3", "", "", 1149376265, 3106062319, Spawn)
	AddConversationOption(conversation, "Then I shall listen.", "dlg_6_6")
	AddConversationOption(conversation, "I'm not sure I need the history lesson. What would you like me to accomplish?", "dlg_6_11")
	StartConversation(conversation, NPC, Spawn, "Let me begin with a short story. I shall not be so long as to spend your time with foolishness, nor so short as to diminish its importance.")
end

function dlg_6_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni008.mp3", "", "", 1313191928, 12500296, Spawn)
	AddConversationOption(conversation, "It makes sense. There aren't too many civilized places left.", "dlg_6_7")
	StartConversation(conversation, NPC, Spawn, "Not long after the world was rent asunder, those of us remaining here on what is now D'Lere folded ourselves into the city of Freeport.")
end

function dlg_6_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni009.mp3", "", "", 4080582303, 2099986849, Spawn)
	AddConversationOption(conversation, "If I were in his position, I might have considered dividing the erudites.", "dlg_6_8")
	StartConversation(conversation, NPC, Spawn, "Lucan feared our gathered power. With our combined magical power and a firm footing inside the academy, we would have been a thorn in his side, and a force with which he would have to contend.")
end

function dlg_6_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni010.mp3", "", "", 1279930131, 1784422627, Spawn)
	AddConversationOption(conversation, "No, I suspect that Lucan had more in store...", "dlg_6_9")
	StartConversation(conversation, NPC, Spawn, "And indeed, that's what he did. A series of 'tests' were conducted, and those determined to be 'qualified' remained within the city. Those who were not were relocated here. However, there is more.")
end

function dlg_6_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni011.mp3", "", "", 3778512067, 3228444190, Spawn)
	AddConversationOption(conversation, "Or what was left of them after Luclin.", "dlg_6_10")
	StartConversation(conversation, NPC, Spawn, "Indeed. You will go far if you keep these lessons of leadership in mind in the future. Not only did he divide and humiliate those relegated to life here, but he foisted another abuse on us - the kerra.")
end

function dlg_6_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni012.mp3", "", "", 2014393836, 3746123557, Spawn)
	AddConversationOption(conversation, "So what does the brotherhood wish from me?", "dlg_6_11")
	StartConversation(conversation, NPC, Spawn, "Enough, let me tell you. They get into everything. And that brings us to now. We are not allowed to directly fight while under the protection of Freeport, so we must find a way to keep those curious beasts away from our experiments.")
end

function dlg_6_11(NPC, Spawn)
	OfferQuest(NPC, Spawn, ERUDITE_ALCHEMY)
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, ERUDITE_ALCHEMY, 3)
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni015.mp3", "", "", 743790253, 3747651989, Spawn)
	AddConversationOption(conversation, "Pleased to be of assistance.", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "Nevertheless, it was very helpful.")
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------    Quest 2    -------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vesh_al_ishni/fprt_hood02/vesh_alishni016.mp3", "", "", 2815059884, 70268562, Spawn)
	AddConversationOption(conversation, "Where would I find her?", "dlg_28_1")
	StartConversation(conversation, NPC, Spawn, "If you wouldn't mind, I'd like you to take this mixture to Sevri Il'Bethod. She can tell you what to do next.")
end

function dlg_28_1(NPC, Spawn)
	OfferQuest(NPC, Spawn, TWEEZING_KERRA)
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------    Quest 3    -------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, INCANTATION_ORATION, 1)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni019.mp3", "", "", 1648130503, 3545369186, Spawn)
	AddConversationOption(conversation, "I'm not sure why I'm important in this.", "dlg_31_2")
	AddConversationOption(conversation, "I'm glad I could lend my talent to the cause.")
	StartConversation(conversation, NPC, Spawn, "I'd presumed she would. She and I have been working together for the Abbatoirs for some time now on a little project. You've allowed us to speed up the process quite a bit.")
end

function dlg_31_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni020.mp3", "", "", 373760716, 2646229513, Spawn)
	AddConversationOption(conversation, "Pardon. Did you say 'the Divergence'?", "dlg_32_3")
	StartConversation(conversation, NPC, Spawn, "We've been reluctant to perform a few rites ourselves. While we've always been proficient with magic use, ever since the Divergence, we've been much more adept with its use since, but Sevri and I each possess slight... deficiencies.")
end

function dlg_32_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni021.mp3", "", "", 2388767305, 3216040786, Spawn)
	AddConversationOption(conversation, "What caused it?", "dlg_32_4")
	AddConversationOption(conversation, "What did we look like before?", "dlg_32_5")
	AddConversationOption(conversation, "Ahh, I don't need the details. Please continue.", "dlg_33_8")
	StartConversation(conversation, NPC, Spawn, "Yes. Long ago, we looked much more like our human ancestors. Well before the world was wrent asunder, our appearance... nay, our state of being, changed. A sudden jump in evolution, if you will.")
end

function dlg_32_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni022.mp3", "", "", 3684053157, 267543321, Spawn)
	AddConversationOption(conversation, "What did it look like before?", "dlg_32_5")
	AddConversationOption(conversation, "That's too bad, but please continue with what you were saying.", "dlg_33_8")
	StartConversation(conversation, NPC, Spawn, "We do not speak of such things. In fact, much of that knowledge was lost with the seperation we've had with our home continent of Odus.")
end

function dlg_32_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni023.mp3", "", "", 729095109, 2371703495, Spawn)
	AddConversationOption(conversation, "What caused this?", "dlg_32_4")
	AddConversationOption(conversation, "Interesting. Well, please continue with what you were going to say.", "dlg_33_8")
	StartConversation(conversation, NPC, Spawn, "Much more human; dark-skinned with elongated skulls. We did not possess the runes on our skin, nor the ashen and exotic skin tones that we now have.")
end

function dlg_33_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni022.mp3", "", "", 3684053157, 267543321, Spawn)
	AddConversationOption(conversation, "What did it look like before?", "dlg_33_6")
	AddConversationOption(conversation, "That's too bad, but please continue with what you were saying.", "dlg_33_8")
	StartConversation(conversation, NPC, Spawn, "We do not speak of such things. In fact, much of that knowledge was lost with the seperation we've had with our home continent of Odus.")
end

function dlg_33_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni024.mp3", "", "", 2742571672, 2630960239, Spawn)
	AddConversationOption(conversation, "So you need someone who is suited to both?", "dlg_35_6")
	StartConversation(conversation, NPC, Spawn, "Yes, where was I? Oh, yes, Sevri and I. She tends to be strong in the use of alchemical formulas and their creation, while I am more suited to incantations.")
end

function dlg_35_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni025.mp3", "", "", 2121710260, 4126884347, Spawn)
	AddConversationOption(conversation, "And this incantation will do?", "dlg_35_7")
	StartConversation(conversation, NPC, Spawn, "Yes. You needn't be a spell caster yourself, merely one strong in the use of magic. We do not wish the incantation to fail, so neither of us has tried it.")
end

function dlg_35_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni026.mp3", "", "", 2627797590, 2555516399, Spawn)
	AddConversationOption(conversation, "Yes, I am.", "dlg_35_8")
	AddConversationOption(conversation, "In a bit. Let me get my bearings first.")
	StartConversation(conversation, NPC, Spawn, "We are sealing a small area against intrusion by the kerra. Are you ready to learn the chant?")
end

function dlg_35_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni027.mp3", "", "", 3505819146, 188763690, Spawn)
	AddConversationOption(conversation, "...", "dlg_35_9")
	StartConversation(conversation, NPC, Spawn, "Alright. Repeat after me:")
end

function dlg_35_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni028.mp3", "", "", 2919007431, 1124579757, Spawn)
	AddConversationOption(conversation, "Kah!", "dlg_35_10")
	AddConversationOption(conversation, "Rah!", "dlg_35_11")
	AddConversationOption(conversation, "Ort!", "dlg_35_11")
	StartConversation(conversation, NPC, Spawn, "Kah!")
end

function dlg_35_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni029.mp3", "", "", 1143070588, 873896090, Spawn)
	AddConversationOption(conversation, "Shee-jo!", "dlg_35_11")
	AddConversationOption(conversation, "Shee-jah!", "dlg_35_23")
	AddConversationOption(conversation, "Bless you!", "dlg_35_15")
	StartConversation(conversation, NPC, Spawn, "Shee-jah!")
end

function dlg_35_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni033.mp3", "", "", 3771835852, 356880814, Spawn)
	AddConversationOption(conversation, "Alright.", "dlg_35_8")
	StartConversation(conversation, NPC, Spawn, "No, that was incorrect. Again!")
end

function dlg_35_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni034.mp3", "", "", 700726847, 2196280393, Spawn)
	AddConversationOption(conversation, "Fine.", "dlg_35_8")
	StartConversation(conversation, NPC, Spawn, "Are you trying to be funny? This is serious. Again! From the beginning!")
end

function dlg_35_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni030.mp3", "", "", 3795991524, 1404953024, Spawn)
	AddConversationOption(conversation, "Barakah!", "dlg_35_11")
	AddConversationOption(conversation, "Veratu!", "dlg_35_11")
	AddConversationOption(conversation, "Ver-ata!", "dlg_35_32")
	StartConversation(conversation, NPC, Spawn, "Ver-ata!")
end

function dlg_35_32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni031.mp3", "", "", 133768448, 277366466, Spawn)
	AddConversationOption(conversation, "Nik-su!", "dlg_35_38")
	AddConversationOption(conversation, "Hi-yah!", "dlg_35_11")
	AddConversationOption(conversation, "Ninjitsu!", "dlg_35_15")
	StartConversation(conversation, NPC, Spawn, "Nik-su!")
end

function dlg_35_38(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni032.mp3", "", "", 3316158990, 3680571955, Spawn)
	AddConversationOption(conversation, "Jeg-raz!", "dlg_35_11")
	AddConversationOption(conversation, "Gej-soont-hite!", "dlg_35_15")
	AddConversationOption(conversation, "Gej-raz!", "dlg_35_39")
	StartConversation(conversation, NPC, Spawn, "Gej-raz!")
end

function dlg_35_39(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni035.mp3", "", "", 402169577, 2150827734, Spawn)
	AddConversationOption(conversation, "Very well. Shall we begin?", "dlg_35_40")
	StartConversation(conversation, NPC, Spawn, "Good. Now, repeat it back to me.")
end

function dlg_35_40(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni036.mp3", "", "", 3555302534, 1640323835, Spawn)
	AddConversationOption(conversation, "Rah!", "dlg_35_47")
	AddConversationOption(conversation, "Kah!", "dlg_35_41")
	AddConversationOption(conversation, "Shish-boom-bah!", "dlg_35_47")
	StartConversation(conversation, NPC, Spawn, "What is the first word of the incantation?")
end

function dlg_35_41(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni037.mp3", "", "", 2778449782, 209782941, Spawn)
	AddConversationOption(conversation, "Shee-jah!", "dlg_35_42")
	AddConversationOption(conversation, "Shee-joh!", "dlg_35_47")
	AddConversationOption(conversation, "Skee-ball!", "dlg_35_47")
	StartConversation(conversation, NPC, Spawn, "Good. The second?")
end

function dlg_35_42(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni038.mp3", "", "", 365802047, 3239329702, Spawn)
	AddConversationOption(conversation, "Vis-a-vis!", "dlg_35_47")
	AddConversationOption(conversation, "Ver-ata!", "dlg_35_43")
	AddConversationOption(conversation, "Vol-ume!", "dlg_35_47")
	StartConversation(conversation, NPC, Spawn, "Well done. The third?")
end

function dlg_35_43(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni039.mp3", "", "", 2799862347, 3798966954, Spawn)
	AddConversationOption(conversation, "Nin-dn-toh!", "dlg_35_47")
	AddConversationOption(conversation, "Na-ni!", "dlg_35_47")
	AddConversationOption(conversation, "Nik-su!", "dlg_35_44")
	StartConversation(conversation, NPC, Spawn, "I'm impressed. The fourth?")
end

function dlg_35_44(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni040.mp3", "", "", 1907508477, 1925947266, Spawn)
	AddConversationOption(conversation, "Gej-raz!", "dlg_35_45")
	AddConversationOption(conversation, "Jur-gal!", "dlg_35_47")
	AddConversationOption(conversation, "Gej-who!", "dlg_35_47")
	StartConversation(conversation, NPC, Spawn, "Most wonderful! And the last?")
end

function dlg_35_45(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, INCANTATION_ORATION, 2)
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni041.mp3", "", "", 2217231699, 1707419277, Spawn)
	AddConversationOption(conversation, "I am ready.", "dlg_35_46")
	AddConversationOption(conversation, "I could use some more time. I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Amazing! I must say, I am very impressed with your ability. Now for the last step.")
end

function dlg_35_47(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni033.mp3", "", "", 3771835852, 356880814, Spawn)
	AddConversationOption(conversation, "Alright.", "dlg_35_40")
	StartConversation(conversation, NPC, Spawn, "No, that was incorrect. Again!")
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------    Quest 4    -------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

function dlg_35_46(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni044.mp3", "", "", 2882848596, 2336130534, Spawn)
	AddConversationOption(conversation, "So, pick up the components, then enact the warding?", "dlg_36_1")
	StartConversation(conversation, NPC, Spawn, "You will seal our meeting place. I'll mark it's location in your journal. But first, return to Sevri to pick up the components of the warding spell.")
end


function dlg_36_1(NPC, Spawn)
	OfferQuest(NPC, Spawn, ABOLISHING_CURIOUSITY)
end

function dlg_39_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni047.mp3", "", "", 2997417489, 3570075977, Spawn)
	AddConversationOption(conversation, "If this will keep the kerra out of our... business, then I am pleased.", "dlg_39_2")
	StartConversation(conversation, NPC, Spawn, "Then we are indebted to you. I am pleased that my choice to trust in your abilities was met with such astounding success.")
end

function dlg_39_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, ABOLISHING_CURIOUSITY, 3)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni048.mp3", "", "", 1980771348, 214982557, Spawn)
	AddConversationOption(conversation, "Thank you, Vess.", "dlg_39_3")
	StartConversation(conversation, NPC, Spawn, "Take this as a token of our gratitude. ")
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------    Quest 5    -------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

function dlg_39_3(NPC, Spawn)
	
	-- Offer Quest 5
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vess_al_ishni/fprt_hood02/vesh_alishni049.mp3", "", "", 3874372203, 2541548907, Spawn)
	AddConversationOption(conversation, "I'll do that.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "Also, you may wish to speak with Custodian Zaddar in the Graveyard when you get a chance.")
end

function OfferQuest5(NPC, Spawn)
	OfferQuest(NPC, Spawn, ERUDITE_ADVENTURES)
end