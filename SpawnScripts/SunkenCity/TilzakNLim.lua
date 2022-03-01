--[[
	Script Name	: SpawnScripts/SunkenCity/TilzakNLim.lua
	Script Purpose	: Tilzak N`Lim 
	Script Author	: Neatz09
	Script Date	: 12/31/2018
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_1 = 386

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, QUEST_1) then
		if HasQuest(Spawn, QUEST_1) then
			if GetQuestStep(Spawn, QUEST_1) == 2 then
				AddConversationOption(conversation, "I have the shark fins you wanted.", "dlg_4_1")
			end
		else
			AddConversationOption(conversation, "I didn't know the Teir'Dal took mundane jobs like fishing.", "dlg_3_1")
		end
		PlayFlavor(NPC, "voiceover/english/optional5/standard_dark_elf_male/fprt_hood05/std_de_male_tilzak_nlim.mp3", "", "", 3205731528, 2249540299, Spawn)
		AddConversationOption(conversation, "Then I'll leave you to your fish.")
		StartConversation(conversation, NPC, Spawn, "These are my fish so you can't have them! Go... go find your own!")
	else
		Say(NPC, "These are my fish so you can't have them! Go... go find your own!", Spawn)
	end
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe I can offer you a hand. What do you need?", "OfferQuest1")
	AddConversationOption(conversation, "Your wants mean nothing to me.")
	StartConversation(conversation, NPC, Spawn, "Only when we have no choice.  I used to be a chef to some of the most important people in Neriak back in the day.  Now I am nothing more than a common fisherman.  This is my lot in life, I guess. If I returned to Neriak with new recipes I might once again regain that prominent position.  If only I had the ingredients to make a new recipe I've come up with.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_4_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/standard_dark_elf_male/fprt_hood05/quests/tilzaknlim/tilzak_x1_finish.mp3", "", "", 1351808605, 3311226361, Spawn)
	AddConversationOption(conversation, "No thanks. I'll leave that to you. Bye.")
	StartConversation(conversation, NPC, Spawn, "Oh, thank you so much, my good friend. These will be wonderful once they're prepared correctly. I need to be careful though, because these shark fins can be highly poisonous if they aren't prepared correctly. Don't worry, though -- I've prepared dishes very similar to this before. If you'd like you can be the first person to try it when I'm done!")
end