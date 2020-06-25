--[[
	Script Name	: SpawnScripts/Sprawl/BrutemasterTarden.lua
	Script Purpose	: Brutemaster Tarden <Dreadnaught>
	Script Author	: Scatman
	Script Date	: 2008.09.29
	Script Notes	: 
--]]

local QUEST_2_FROM_KURDEK = 540

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quest/quest_brutemaster_tarden_callout_1277cb68.mp3", "Don't forget that you all work for me!", "threaten", 938386903, 4034228899, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quest/quest_brutemaster_tarden_callout_372b3277.mp3", "The Giantslayers are the toughest gang around!", "thumbsup", 3470522830, 1311148717, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quest/quest_brutemaster_tarden_callout_d6e87a9e.mp3", "Remember, I'm the boss around here!", "threaten", 3904448873, 572831666, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_2_FROM_KURDEK) or (HasQuest(Spawn, QUEST_2_FROM_KURDEK) and GetQuestStep(Spawn, QUEST_2_FROM_KURDEK) > 1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden010.mp3", "", "", 47575538, 2815062318, Spawn)
		AddConversationOption(conversation, "I better, or else there will be another beating coming your way.")
		StartConversation(conversation, NPC, Spawn, "Hey there, friend! Don't worry, the Giantslayers are gonna make you proud! You'll see!")
	else
		if HasQuest(Spawn, QUEST_2_FROM_KURDEK) and GetQuestStep(Spawn, QUEST_2_FROM_KURDEK) == 1 then
			AddConversationOption(conversation, "Listen here, Tarden. I'm with the Dreadnaughts, and we are none too pleased with the pathetic job you're doing!", "dlg_26_1")
		end
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden001.mp3", "", "", 3342147230, 575383753, Spawn)
		AddConversationOption(conversation, "Fine, I'll leave you alone.")
		StartConversation(conversation, NPC, Spawn, "Don't bother me! I have important work to do!")
	end
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden002.mp3", "", "", 3459020028, 2777845153, Spawn)
	AddConversationOption(conversation, "You're lazy and your thugs do sloppy work. And yes, I am a Dreadnaught.", "dlg_26_2")
	AddConversationOption(conversation, "I don't have time for your excuses.")
	StartConversation(conversation, NPC, Spawn, "Pathetic? How dare you speak to me that way! I lead the Giantslayers, the most powerful gang in Freeport! I know the Dreadnaughts, and you are no Dreadnaught.")
end

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden003.mp3", "", "", 2261902331, 3878598451, Spawn)
	AddConversationOption(conversation, "As a matter of fact, here's some trouble for you!", "dlg_26_3")
	AddConversationOption(conversation, "Fine, I'll go.")
	StartConversation(conversation, NPC, Spawn, "Lazy? Sloppy? Nobody talks to me that way! You better move along, unless you're ready for a whole lot of trouble!")
end

function dlg_26_3(NPC, Spawn)
	SpawnSet(NPC, "visual_state", 11463) -- duck
	SpawnSet(Spawn, "visual_state", 10783) -- attack (punch)
	AddTimer(NPC, 2000, "ResetVisualState", 1, NPC)
	AddTimer(NPC, 2000, "ResetVisualState", 1, Spawn)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden004.mp3", "", "", 3349447803, 1486216725, Spawn)
	AddConversationOption(conversation, "Too bad! You won't be ready for this, either!", "dlg_26_4")
	StartConversation(conversation, NPC, Spawn, "OOOF! Hey, I wasn't ready!")
end

function dlg_26_4(NPC, Spawn)
	SpawnSet(NPC, "visual_state", 11767) -- knockback
	SpawnSet(Spawn, "visual_state", 11761) -- kick

	AddTimer(NPC, 2000, "ResetVisualState", 1, NPC)
	AddTimer(NPC, 2000, "ResetVisualState", 1, Spawn)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden005.mp3", "", "", 187758376, 1637440927, Spawn)
	AddConversationOption(conversation, "Tough luck, Tarden. Have some more!", "dlg_26_5")
	StartConversation(conversation, NPC, Spawn, "ARGH! No fair, gimme a chance to prepare!")
end

function dlg_26_5(NPC, Spawn)
	SpawnSet(NPC, "visual_state", 11256) -- cringe
	SpawnSet(Spawn, "visual_state", 10783) -- attack (punch)

	AddTimer(NPC, 2000, "ResetVisualState", 1, NPC)
	AddTimer(NPC, 2000, "ResetVisualState", 1, Spawn)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden006.mp3", "", "", 1054842300, 2763956088, Spawn)
	AddConversationOption(conversation, "Yeah, I really am. You want more proof?", "dlg_26_6")
	AddConversationOption(conversation, "I guess you've learned your lesson.")
	StartConversation(conversation, NPC, Spawn, "UGH! Okay, okay, I give up. So I guess you really are a Dreadnaught after all.")
end

function dlg_26_6(NPC, Spawn)
--make npc flinch
--make spawn act buff
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden007.mp3", "", "", 3338897580, 3124247652, Spawn)
	AddConversationOption(conversation, "You better, or I'll have to pay you another visit.", "dlg_26_7")
	AddConversationOption(conversation, "Then I guess I can leave.")
	StartConversation(conversation, NPC, Spawn, "No! Uh, I mean I've seen enough, thanks. Okay, I admit I haven't worked as hard to train my Giantslayers as I probably should. I'll get to work on it right away.")
end

function dlg_26_7(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2_FROM_KURDEK, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden008.mp3", "", "", 2489119910, 4279989097, Spawn)
	AddConversationOption(conversation, "Oh, and what was that you said about the Giantslayers being the toughest gang in Freeport?", "dlg_26_8")
	AddConversationOption(conversation, "We'll see.")
	StartConversation(conversation, NPC, Spawn, "No need for that, friend! Tell Enforcer Kurdek that I've turned over a new leaf. The Giantslayers are really gonna buckle down, I promise!")
end

function dlg_26_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brutemaster_tarden/fprt_adv03_sprawl/quests/brutemaster_tarden009.mp3", "", "", 2146655303, 2356834417, Spawn)
	AddConversationOption(conversation, "That's more like it. I'll be keeping an eye on you, Tarden.")
	StartConversation(conversation, NPC, Spawn, "I meant next to the Dreadnaughts, of course! Everyone knows you guys are the toughest around.")
end

function ResetVisualState(ThisSpawn, Spawn)
	SpawnSet(Spawn, "visual_state", 0)
end
