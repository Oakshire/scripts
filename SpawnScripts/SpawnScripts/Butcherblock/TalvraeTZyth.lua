--[[
	Script Name	: SpawnScripts/ButcherblockMountains/TalvraeTZyth.lua
	Script Purpose	: Talvrae T'Zyth 
	Script Author	: jakejp
	Script Date	: 2018.06.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TerratrodderChuck = 45400

local ForTheDogs = 284
local AMindOfMyOwn = 294

function spawn(NPC)
	ProvidesQuest(NPC, ForTheDogs)
	ProvidesQuest(NPC, AMindOfMyOwn)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, SeekingBrultenHiltstill) then
		-- Start first quest (Add if you don't do this quest from start zone)
		-- Add Conversation to complete that side quest
		SetStepComplete(Spawn, SeekingBrultenHiltstill, 1)
		if HasCompletedQuest(Spawn, ForTheDogs) == false and HasQuest(Spawn, ForTheDogs	) == false  and CanReceiveQuest(Spawn, ForTheDogs) then 
			PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_001.mp3", "", "", 4232138815, 4269349384, Spawn)
			AddConversationOption(conversation, "Is that so?  And what would you rather be doing then, given the chance?", "dlg_8_1")
			AddConversationOption(conversation, "Well, this is the job you were given.  Farewell.")
			StartConversation(conversation, NPC, Spawn, "Collecting samples.  A coercer of my talents is sent to Faydwer to collect samples for magical research.  This is work that should be relegated to students or apprentices.  My abilities have far more practical and advantageous applications.")
		end
	elseif HasCompletedQuest(Spawn, ForTheDogs) == false and HasQuest(Spawn, ForTheDogs	) == false  and CanReceiveQuest(Spawn, ForTheDogs) then
		-- Offer For the Dogs if not completed or started 
		PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_001.mp3", "", "", 4232138815, 4269349384, Spawn)
		AddConversationOption(conversation, "Is that so?  And what would you rather be doing then, given the chance?", "dlg_8_1")
		AddConversationOption(conversation, "Well, this is the job you were given.  Farewell.")
		StartConversation(conversation, NPC, Spawn, "Collecting samples.  A coercer of my talents is sent to Faydwer to collect samples for magical research.  This is work that should be relegated to students or apprentices.  My abilities have far more practical and advantageous applications.")
    elseif GetQuestStep(Spawn, ForTheDogs) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have not found it all just yet. I will return.") 
		StartConversation(conversation, NPC, Spawn, "Where is the terratrodder meat I need?")
	elseif GetQuestStep(Spawn, ForTheDogs) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Right here.", "dlg_6_1") 
		StartConversation(conversation, NPC, Spawn, "Where is the terratrodder meat I need?")
	elseif HasCompletedQuest(Spawn, AMindOfMyOwn) == false and HasQuest(Spawn, AMindOfMyOwn) == false  and CanReceiveQuest(Spawn, AMindOfMyOwn) then
		PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_006.mp3", "", "", 2533203842, 1528968842, Spawn)
		AddConversationOption(conversation, "I understand.  What happens once they eat the food?", "dlg_7_1")
		AddConversationOption(conversation, "I have other things to do at the moment.  Farewell.")
		StartConversation(conversation, NPC, Spawn, "There, I have completed my task, and now it is your turn.  You want to take this bowl of food to the Yapsnarl camp, and place it nearby one of the kobolds there.  Do not let him see you, or he will probably just ignore the dish and try to eat you instead... and if that happens, you probably deserve it.  If no kobold comes to eat it, pick it back up and move it somewhere else.  If one of them does not eat the food in here, you cannot run the test.")
	elseif GetQuestStep(Spawn, AMindOfMyOwn) == 1 then
		if HasItem(Spawn, TerratrodderChuck) == false then
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
			AddConversationOption(conversation, "The bait was lost. Might you have another?", "MoreBait")
			AddConversationOption(conversation, "I'm not quite finished yet. I will return soon.")
			StartConversation(conversation, NPC, Spawn, "Tell me how the experiment is going.")
		else
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
			AddConversationOption(conversation, "I'm not quite finished yet. I will return soon.")
			StartConversation(conversation, NPC, Spawn, "Tell me how the experiment is going.")
		end
	end
		
		
		
		--PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		--AddConversationOption(conversation, "Right here.", "dlg_6_1")
--	StartConversation(conversation, NPC, Spawn, "Where is the bear meat I need?")

	if convo==14 then
		PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_006.mp3", "", "", 2533203842, 1528968842, Spawn)
		AddConversationOption(conversation, "I understand.  What happens once they eat the food?", "dlg_14_1")
		AddConversationOption(conversation, "I have other things to do at the moment.  Farewell.")
		StartConversation(conversation, NPC, Spawn, "There, I have completed my task, and now it is your turn.  You want to take this bowl of food to the Yapsnarl camp, and place it nearby one of the kobolds there.  Do not let him see you, or he will probably just ignore the dish and try to eat you instead... and if that happens, you probably deserve it.  If no kobold comes to eat it, pick it back up and move it somewhere else.  If one of them does not eat the food in here, you cannot run the test.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Everything seems to have gone as you predicted.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Tell me how the experiment is going.")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Hulis sent me here.  He said that you might be looking for some help.", "dlg_23_1")
		StartConversation(conversation, NPC, Spawn, "I don’t remember calling for you.  What is it you need?")
	end

end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, ForTheDogs, 2)
	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_005.mp3", "", "", 2314822935, 2368990546, Spawn)
		AddConversationOption(conversation, "As long as there's more pay, I'll be right here.")
	StartConversation(conversation, NPC, Spawn, "Ah, you have done well!  This should be exactly what I need to execute the experiment... well, aside from a little more help from you, that is.  Now, if you will excuse me a moment, I will prepare this for the next step in my plan.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_007.mp3", "", "", 3385211924, 1859135719, Spawn)
		AddConversationOption(conversation, "Okay, so, feed this to a kobold, and it will suddenly follow me around?  Are you sure about this?", "GiveAMindOfMyOwn")
		AddConversationOption(conversation, "I'm not sure I feel like hand-feeding kobolds at the moment.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "The food is enchanted to make the kobolds open to suggestion, and should make them follow your commands without question.  Once a kobold has eaten the food, I want you to try to get him to attack and kill his own packmates.  If he will do that, then I will know that I have complete control over the creature, and I will consider the experiment a success.")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_008.mp3", "", "", 1081612079, 3658293484, Spawn)
		AddConversationOption(conversation, "I see.  Well then, I will return and let you know how things went.", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "While I have no reason to question my own magic craft, I don't know how well the enchantment will work on what is essentially a simple creature.  It might just go primal and attack everything nearby, or might just run off to the hills.  I wouldn't attempt walking too far from the camp this time, as I don't know how long the enchantment will last.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_002.mp3", "", "", 201730222, 3203333132, Spawn)
		AddConversationOption(conversation, "So I take it that you have a plan, then?", "dlg_8_2")
		AddConversationOption(conversation, "That may be true, but that's not your choice to make.  Good luck with your work.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well, I see the need for study.  But why would we be picking flowers and collecting stones when we could be instead learning more about the lesser races and creatures that now inhabit this land.  Who they are, what they live like... what their weaknesses are.  This information would be far more useful to the Teir'Dal than the latent magic properties of flower petals.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_003.mp3", "", "", 1922846233, 313729102, Spawn)
		AddConversationOption(conversation, "Sounds interesting.  I might be willing to help, if there is pay involved.  What is it you are proposing?", "GiveForTheDogs")
		AddConversationOption(conversation, "I'm not here to do your dirty work.  Good day to you.")
	StartConversation(conversation, NPC, Spawn, "Indeed I do, but I will need help to execute it.  You see, I still have my assigned work, and thanks to my... partner here, I can't really abandon my duties.  However, if you could provide me with some assistance, we can together test a theory I have.  I will need several pounds of bear meat to begin with.  The meat needs to be fresh, so I would prefer if the meat came from nearby bears.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_007.mp3", "", "", 3385211924, 1859135719, Spawn)
		AddConversationOption(conversation, "Okay, so, feed this to a kobold, and it will suddenly follow me around?  Are you sure about this?", "dlg_14_2")
		AddConversationOption(conversation, "I'm not sure I feel like hand-feeding kobolds at the moment.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "The food is enchanted to make the kobolds open to suggestion, and should make them follow your commands without question.  Once a kobold has eaten the food, I want you to try to get him to attack and kill his own packmates.  If he will do that, then I will know that I have complete control over the creature, and I will consider the experiment a success.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_008.mp3", "", "", 1081612079, 3658293484, Spawn)
		AddConversationOption(conversation, "I see.  Well then, I will return and let you know how things went.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "While I have no reason to question my own magic craft, I don't know how well the enchantment will work on what is essentially a simple creature.  It might just go primal and attack everything nearby, or might just run off to the hills.  I wouldn't attempt walking too far from the camp this time, as I don't know how long the enchantment will last.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_009.mp3", "", "", 2505068723, 2862902650, Spawn)
		AddConversationOption(conversation, "Err... thanks, I guess.", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "So it worked then?  Not that I had any doubt in my theory, but nonetheless I am glad to hear that it went as I expected.  I will work on enhancing the enchantment further, but I can do that on my own.  In the meantime, you served me well, and you can be proud of yourself for that.  You may go now.")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	StartConversation(conversation, NPC, Spawn, "I see – Hulis is being a good little pet.  Sending me some help when he knows I have no need of it, but just for my own convenience.  Well, I guess since you are here, I can put you to some good.  I’ve had just about enough of all of this menial work anyway.")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_001.mp3", "", "", 4232138815, 4269349384, Spawn)
		AddConversationOption(conversation, "Is that so?  And what would you rather be doing then, given the chance?", "dlg_23_3")
		AddConversationOption(conversation, "Well, this is the job you were given.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Collecting samples.  A coercer of my talents is sent to Faydwer to collect samples for magical research.  This is work that should be relegated to students or apprentices.  My abilities have far more practical and advantageous applications.")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_002.mp3", "", "", 201730222, 3203333132, Spawn)
		AddConversationOption(conversation, "So I take it that you have a plan, then?", "dlg_23_4")
		AddConversationOption(conversation, "That may be true, but that's not your choice to make.  Good luck with your work.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well, I see the need for study.  But why would we be picking flowers and collecting stones when we could be instead learning more about the lesser races and creatures that now inhabit this land.  Who they are, what they live like... what their weaknesses are.  This information would be far more useful to the Teir'Dal than the latent magic properties of flower petals.")
end

function dlg_23_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_003.mp3", "", "", 1922846233, 313729102, Spawn)
		AddConversationOption(conversation, "Sounds interesting.  I might be willing to help, if there is pay involved.  What is it you are proposing?", "dlg_23_5")
		AddConversationOption(conversation, "I'm not here to do your dirty work.  Good day to you.")
	StartConversation(conversation, NPC, Spawn, "Indeed I do, but I will need help to execute it.  You see, I still have my assigned work, and thanks to my... partner here, I can't really abandon my duties.  However, if you could provide me with some assistance, we can together test a theory I have.  I will need several pounds of bear meat to begin with.  The meat needs to be fresh, so I would prefer if the meat came from nearby bears.")
end

function dlg_23_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_004.mp3", "", "", 1310097835, 2111544733, Spawn)
		AddConversationOption(conversation, "I'm sure that I can.  I'll gather the meat and return soon.", "dlg_23_6")
	StartConversation(conversation, NPC, Spawn, "I could not explain the details of exactly what I am doing to the likes of you, for I doubt you would understand it.  The only parts important to you are the task, and the result.  Can you handle that?")
end

function MoreBait(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SummonItem(Spawn, TerratrodderChuck, 1)
	
	AddConversationOption(conversation, "I'll keep that in mind. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I thought you might, so I kept some here with me for that eventuality. Now be more careful with this bowl. I do not have much more.")
end

function GiveForTheDogs(NPC, Spawn)
	OfferQuest(NPC, Spawn, ForTheDogs)
end

function GiveAMindOfMyOwn(NPC, Spawn)
	OfferQuest(NPC, Spawn, AMindOfMyOwn)
end
