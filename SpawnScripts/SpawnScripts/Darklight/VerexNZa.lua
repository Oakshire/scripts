--[[
	Script Name	: SpawnScripts/DarklightWood/VerexNZa.lua
	Script Purpose	: Verex N'Za 
	Script Author	: Cynnar
	Script Date	: 2015.07.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ASolidifiedFront = 120
local AStrangeFind = 187

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	ProvidesQuest(NPC, ASolidifiedFront)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if not HasCompletedQuest(Spawn, ASolidifiedFront) then
		PlayFlavor(NPC, "", "You there, come here at once! We haven't a second to spare!", "beckon", 0, 0, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if not HasCompletedQuest(Spawn, ASolidifiedFront) then
    	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", "", "", 0, 0, Spawn)
    	AddConversationOption(conversation, "How am I to do that?", "dlg_0_1")
    	AddConversationOption(conversation, "Wait, where is this place?", "dlg_1_1")
    	StartConversation(conversation, NPC, Spawn, "Excellent, you've finally arrived. So, you're one of Cristanos' chosen ones, hmm? The Queen must see some great potential in you, " .. GetName(Spawn) .. ". Let's not waste any more time and see what you're made of.")
    end
    if HasQuest(Spawn, AStrangeFind) then
        Say(NPC, "Strange Find")
        --
    end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What is it you would have me do?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy has fallen under attack by an army of Sablevein elementals! We need your help in stopping them before they burn down the entire town! ")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will speak with them at once!", "QuestOffer")
	AddConversationOption(conversation, "I'll decide who I speak to!", "PlayerEmote")
	StartConversation(conversation, NPC, Spawn, "The Sablevein elementals have collapsed a section of the southern wall and now threaten to swarm inside the town. I need you to meet up with Udiyitas and Pellandra, two of the guards tasked with repelling this attack. Go, speak to them at once!")
end

function PlayerEmote(NPC, Spawn)
	PlayFlavor(Spawn, "", "", "brandish", 0, 0, Player)
end

function QuestOffer(NPC, Spawn)
	if not HasQuest(Spawn, ASolidifiedFront) then
		OfferQuest(NPC, Spawn, ASolidifiedFront)
	else
		dlg_0_4(NPC, Spawn)
	end
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	StartConversation(conversation, NPC, Spawn, "May Innoruuk guide your blade, young one!")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What do you mean?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "This is Hate's Envy Outpost; the pride of Sselnyl Do'Zyth herself. She's managed to work out a nice deal with the elite of Neriak and runs Hate's Envy as an entity apart from the city itself.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "So you aren't tied to Neriak?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Hate's Envy is a bit more accepting of outsiders than Neriak. We need all the help we can get, as you may have noticed. The attacking elementals are proof enough of that. But, we like it this way.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Hate's Envy was built by the Thexians?", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "When Neriak was unearthed, the Queen immediately ordered the Dread Guard to claim this Hate's Envy. It was originally built by the Thexians during their search for Neriak. Once it was ours, however,  Sselnyl was given control of the outpost's politics. We work closely with the Dread Guard and the Indigo Brotherhood, and our mining operation provides much needed ore to Neriak.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Interesting. What was it you were talking about before?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "That's correct. When Lucan and the Thexians barged into Darklight and dug up K'Rais tunnel, the Thexians had already been searching for Neriak. Although Hate's Envy was theirs, we quickly took over once Neriak and Darklight were connected. Part of our pact with Freeport involves one of their ambassadors present at all times--but they don't seem to take much interest in the day to day affairs of Hate's Envy. Sselnyl runs the show, that's the bottom line.")
end