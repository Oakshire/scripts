--[[
	Script Name		:	IlmtarDviervs.lua
	Script Purpose	:	Ilmtar D'Viervs
	Script Author	:	ParserGenerated (Replace this)
	Script Date		:	06/24/2018
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

-- Quest ID's
local WHATS_IN_DEMAND = 142
local ONE_MANS_WASTE = 143
local USEFUL_MATERIALS = 144
local SORCEROUS_NECESSITIES = 145
local TIPPING_THE_SCALES_OF_POWER = 146
local A_SNAKE_MADE_SERUM = 147
local THE_MOTHER_LODE = 148

function spawn(NPC)
	ProvidesQuest(NPC, WHATS_IN_DEMAND)
	ProvidesQuest(NPC, ONE_MANS_WASTE)
	ProvidesQuest(NPC, USEFUL_MATERIALS)
	ProvidesQuest(NPC, SORCEROUS_NECESSITIES)
	ProvidesQuest(NPC, TIPPING_THE_SCALES_OF_POWER)
	ProvidesQuest(NPC, A_SNAKE_MADE_SERUM)
	ProvidesQuest(NPC, THE_MOTHER_LODE)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	if CanReceiveQuest(Spawn, WHATS_IN_DEMAND) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(con, "Others like myself.", "dlg_2")
		StartConversation(con, NPC, Spawn, "Greetings. I am Ilmtar D'Viervs, Quartermaster for the Dread Guard. Ever since the recent Thexian attacks on Hate's Envy, I've been at my wit's end finding adequate supplies for those stationed here at T'Vatar Outpost. My chief responsibility is supplying general goods, or paying others to find them for me.")
	elseif HasQuest(Spawn, WHATS_IN_DEMAND) and GetQuestStep(Spawn, WHATS_IN_DEMAND) >= 1 and GetQuestStep(Spawn, WHATS_IN_DEMAND) <= 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		if HasQuest(Spawn, WHATS_IN_DEMAND) and GetQuestStep(Spawn, WHATS_IN_DEMAND) == 2 then
			AddConversationOption(con, "Yes, here you are.", "dlg_6")
		end
		if HasQuest(Spawn, WHATS_IN_DEMAND) and GetQuestStep(Spawn, WHATS_IN_DEMAND) == 1 then
			AddConversationOption(con, "Not yet.")
		end
		StartConversation(con, NPC, Spawn, "Do you have the bone fragments?")
	elseif HasCompletedQuest(Spawn, WHATS_IN_DEMAND) and CanReceiveQuest(Spawn, ONE_MANS_WASTE) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(con, "Yes, here you are.", "dlg_6")
		StartConversation(con, NPC, Spawn, "Do you have the bone fragments?")
	elseif HasQuest(Spawn, ONE_MANS_WASTE) and GetQuestStep(Spawn, ONE_MANS_WASTE) >= 1 and GetQuestStep(Spawn, ONE_MANS_WASTE) <= 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", "", "", 0, 0, Spawn)
		if HasQuest(Spawn, ONE_MANS_WASTE) and GetQuestStep(Spawn, ONE_MANS_WASTE) == 2 then
			AddConversationOption(con, "Yes, I have them.", "dlg_10")
		end
		if HasQuest(Spawn, ONE_MANS_WASTE) and GetQuestStep(Spawn, ONE_MANS_WASTE) == 1 then
			AddConversationOption(con, "Not yet.")
		end
		StartConversation(con, NPC, Spawn, "Have you the weapons?")
	elseif HasCompletedQuest(Spawn, ONE_MANS_WASTE) and CanReceiveQuest(Spawn, USEFUL_MATERIALS) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		if HasQuest(Spawn, USEFUL_MATERIALS) and GetQuestStep(Spawn, USEFUL_MATERIALS) == 2 then
			AddConversationOption(con, "I did. Here you go.", "dlg_14")
		end
		if HasQuest(Spawn, USEFUL_MATERIALS) and GetQuestStep(Spawn, USEFUL_MATERIALS) == 1 then
			AddConversationOption(con, "I haven't yet.")
		end
		StartConversation(con, NPC, Spawn, "Did you gather the wood?")
	elseif HasCompletedQuest(Spawn, USEFUL_MATERIALS) and CanReceiveQuest(Spawn, SORCEROUS_NECESSITIES) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", "", "", 0, 0, Spawn)
		if HasQuest(Spawn, SORCEROUS_NECESSITIES) and GetQuestStep(Spawn, SORCEROUS_NECESSITIES) == 2 then
			AddConversationOption(con, "I did.", "dlg_18")
		end
		if HasQuest(Spawn, SORCEROUS_NECESSITIES) and GetQuestStep(Spawn, SORCEROUS_NECESSITIES) == 1 then
			AddConversationOption(con, "I haven't yet.")
		end
		StartConversation(con, NPC, Spawn, "Did you collect the bat wings?")
	elseif HasCompletedQuest(Spawn, SORCEROUS_NECESSITIES) and CanReceiveQuest(Spawn, TIPPING_THE_SCALES_OF_POWER) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", "", "", 0, 0, Spawn)
		if HasQuest(Spawn, TIPPING_THE_SCALES_OF_POWER) and GetQuestStep(Spawn, TIPPING_THE_SCALES_OF_POWER) == 2 then
			AddConversationOption(con, "I did, here you go.", "dlg_21")
		end
		if HasQuest(Spawn, TIPPING_THE_SCALES_OF_POWER) and GetQuestStep(Spawn, TIPPING_THE_SCALES_OF_POWER) == 1 then
			AddConversationOption(con, "Not yet.")
		end
		StartConversation(con, NPC, Spawn, "Did you collect the scales?")
	elseif HasCompletedQuest(Spawn, TIPPING_THE_SCALES_OF_POWER) and CanReceiveQuest(Spawn, A_SNAKE_MADE_SERUM) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
		if HasQuest(Spawn, A_SNAKE_MADE_SERUM) and GetQuestStep(Spawn, A_SNAKE_MADE_SERUM) == 2 then
			AddConversationOption(con, "Yes, I did.", "dlg_27")
		end
		if HasQuest(Spawn, A_SNAKE_MADE_SERUM) and GetQuestStep(Spawn, A_SNAKE_MADE_SERUM) == 1 then
			AddConversationOption(con, "Not yet.")
		end
		StartConversation(con, NPC, Spawn, "Did you bring me back the wurm corpses?")
	elseif HasCompletedQuest(Spawn, A_SNAKE_MADE_SERUM) then
		if HasQuest(Spawn, THE_MOTHER_LODE) and GetQuestStep(Spawn, THE_MOTHER_LODE) == 1 then
			AddConversationOption(con, "Not yet.")
		end
		StartConversation(con, NPC, Spawn, "Did you get her skin?")
	elseif HasCompletedQuest(Spawn, A_SNAKE_MADE_SERUM) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", "", "", 0, 0, Spawn)
		if HasQuest(Spawn, THE_MOTHER_LODE) and GetQuestStep(Spawn, THE_MOTHER_LODE) == 2 then
			AddConversationOption(con, "Yes.", "dlg_34")
		end
		StartConversation(con, NPC, Spawn, "Did you get her?")
	end

	--[[	Say() from this NPC

	Say(NPC, "You've helped me a great deal, and I am thankful.", Spawn)


			Orphaned PlayFlavors

	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)

	--]]

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "Sure.", "dlg_3")
	AddConversationOption(con, "Not right now.")
	StartConversation(con, NPC, Spawn, "Precisely. Would you happen to be looking for work?")
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I'll collect the bone chips.", "OfferQuest1")
	AddConversationOption(con, "Find someone else to do your work.")
	StartConversation(con, NPC, Spawn, "I thought so. Currently I'm collecting bone fragments for the necromancers to use as reagents for their reanimating spells. This field we're in is home to a great number of undead, with fresh numbers rising daily. They're a perfect source for the bone fragments I'm after. So, if you're still willing to help...")
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, WHATS_IN_DEMAND)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	StartConversation(con, NPC, Spawn, "Then I await your return.")
	--]]
end

function dlg_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, WHATS_IN_DEMAND, 2)

	AddConversationOption(con, "Yes.", "dlg_7")
	AddConversationOption(con, "Not right now.")
	StartConversation(con, NPC, Spawn, "Well done, well done. The whisperers were right about you, Sygman. There's more collecting to be done. Are you in?")
end

function dlg_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I'll collect some for you.", "OfferQuest2")
	AddConversationOption(con, "You'll have to collect them yourself.")
	StartConversation(con, NPC, Spawn, "In the same field that these bones came from you'll find a great many weapons that once belonged to the soldiers who fought here. We arm our own legions of undead minions with them, thus saving the higher quality weapons for those of us still breathing.")
end

function OfferQuest2(NPC, Spawn)
	OfferQuest(NPC, Spawn, ONE_MANS_WASTE)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I'll see what can I dig up.")
	StartConversation(con, NPC, Spawn, "Once you've collected a decent number of weapons return them to me.")
	--]]
end

function dlg_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, ONE_MANS_WASTE, 2)

	AddConversationOption(con, "Certainly.", "dlg_11")
	AddConversationOption(con, "Not right now.")
	StartConversation(con, NPC, Spawn, "Again, I am impressed, Sygman. You may be surprised to know how hard it is to find good workers around here. Let's see here... bone fragments, weapons, ah, wood. Care for another job?")
end

function dlg_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I can do that.", "OfferQuest4")
	AddConversationOption(con, "Not right now.")
	StartConversation(con, NPC, Spawn, "North of here are the remnants of recent attempts to construct upon the Field of Ruin. Never mind the fools who thought it was a good idea. Their building materials can be used to construct barricades and strengthen our preexisting dwellings. Specifically, I speak of the wood they've left laying around. I'd like you to retrieve it.")
end

function OfferQuest4(NPC, Spawn)
	OfferQuest(NPC, Spawn, USEFUL_MATERIALS)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	StartConversation(con, NPC, Spawn, "Good.")
	--]]
end

function dlg_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, USEFUL_MATERIALS, 2)

	AddConversationOption(con, "I have no intention of doing that.", "dlg_15")
	AddConversationOption(con, "Sorry, but I am needed elsewhere.")
	StartConversation(con, NPC, Spawn, "Your help is most appreciated, Sygman. Most appreciated. There may yet be hope for this outpost. That is unless... you chose to abandon us now.")
end

function dlg_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I can do that.", "OfferQuest5")
	AddConversationOption(con, "Bat wings? I'm not interested.")
	StartConversation(con, NPC, Spawn, "I thought not. By now I'm sure you've begun to understand the reputation you're garnering back in Neriak. Speaking of which, I've just received a request from a Neriak sorcerer of some repute. He's requesting fresh bat wings. Apparently they're a chief reagent used in a levitation spell he's working on. Would you be willing to bring me some?")
end

function OfferQuest5(NPC, Spawn)
	OfferQuest(NPC, Spawn, SORCEROUS_NECESSITIES)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I'll be back.")
	StartConversation(con, NPC, Spawn, "Good, very good. You can find a colony of bats due west from T'Vatar Outpost.")
	--]]
end

function dlg_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, SORCEROUS_NECESSITIES, 2)

	AddConversationOption(con, "I will bring you snake scales presently.", "OfferQuest6")
	AddConversationOption(con, "This doesn't interest me.")
	StartConversation(con, NPC, Spawn, "Ah, of course you did, Sygman. You've earned me, er.. us quite a bit of favor with the powers that be. But why stop there? If you travel farther west you'll find serpents slithering along the banks of the Searing Tendril River. Their scales are said to heighten the potency of a shadowknight's abilities. Go, bring me their scales.")
end

function OfferQuest6(NPC, Spawn)
	OfferQuest(NPC, Spawn, TIPPING_THE_SCALES_OF_POWER)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I will return when I get the scales.")
	StartConversation(con, NPC, Spawn, "Good, good.")
	--]]
end

function dlg_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, TIPPING_THE_SCALES_OF_POWER, 2)

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "What breakthrough is that?", "dlg_22")
	StartConversation(con, NPC, Spawn, "Yes, these will do nicely. Now then, I have a bit of good news to share with you. It seems we've made a breakthrough in our battle with the Thexian curs.")
end

function dlg_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "Where do the pheromones come from?", "dlg_23")
	StartConversation(con, NPC, Spawn, "A highly valued target has been captured... alive! Thus far he's said little, despite our torturers' best efforts. Queen Cristanos, however, feels that there are other methods of making the truth spill from our captive's lips. If a particular pheromone is harvested, it can, in the right hands, be distilled into a powerful truth serum.")
end

function dlg_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "Of course.", "dlg_24")
	StartConversation(con, NPC, Spawn, "They come from flying snakes, the scar wurms. They glide about in Innoruuk's Scar just east of here. You'll have to hit them with something to catch their attention. Once that happens, though, they're quite aggressive--it's mating season.")
end

function dlg_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I can do that.", "OfferQuest7")
	AddConversationOption(con, "No thanks.")
	StartConversation(con, NPC, Spawn, "Bring me back several of these wurm corpses so I can harvest their pheromone sacs. With any luck we'll have enough to make the truth serum Queen Cristanos has demanded.")
end

function OfferQuest7(NPC, Spawn)
	OfferQuest(NPC, Spawn, A_SNAKE_MADE_SERUM)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	StartConversation(con, NPC, Spawn, "Great. I'll be here preparing the additional ingredients needed for the serum.")
	--]]
end

function dlg_27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, A_SNAKE_MADE_SERUM, 2)

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "What do you have in mind?", "dlg_28")
	StartConversation(con, NPC, Spawn, "Curses, this is not the result that I expected! These pheromones are far too weak to be used in the manner we need. We'll need a much stronger sample to draw from.")
end

function dlg_28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "So that work was for nothing?", "dlg_29")
	StartConversation(con, NPC, Spawn, "The corpses you've brought me are all males. We need the pheromone of a female, the wurm mother.")
end

function dlg_29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "Sure.", "dlg_30")
	AddConversationOption(con, "No.  Definitely not.")
	StartConversation(con, NPC, Spawn, "Absolutely not! We will use their pheromones to attract and ultimately kill the brood mother. With her corpse, we can make a potent version of  the serum. Are you game?")
end

function dlg_30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(con, "I'll return with her corpse.", "OfferQuest8")
	AddConversationOption(con, "Maybe later.")
	StartConversation(con, NPC, Spawn, "Excellent. I've made this small device that will disperse the pheromone. This should call forth the wurm mother. Go back to Innoruuk's Scar and  use it on the bridge. Once the wurm mother comes forth to spawn... kill her.")
end

function OfferQuest8(NPC, Spawn)
	OfferQuest(NPC, Spawn, THE_MOTHER_LODE)

	--[[	Move the following conversation to the Accepted function of the quest script
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	AddConversationOption(con, "That's reassuring.")
	StartConversation(con, NPC, Spawn, "Good luck, Sygman. Be sure you don't spray any of that stuff on yourself, ha!")
	--]]
end

function dlg_34(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local con = CreateConversation()

	SetStepComplete(Spawn, THE_MOTHER_LODE, 2)

	AddConversationOption(con, "Good-bye.")
	StartConversation(con, NPC, Spawn, "Ah, lovely! This is quite impressive, Sygman. I've almost finished the serum. Now I just need to add the essences distilled from the wurm mother's internal organs! Well done, Sygman. With this truth serum, our Queen is that much closer to bringing the Thexians to their knees. On behalf of the Queen, I offer you many thanks. Now, if you'll excuse me, I must concentrate on finishing my work here.")
end