--[[
	Script Name	: SpawnScripts/Butcherblock/TallyTopgallant.lua
	Script Purpose	: Tally Topgallant <The Far Seas Trading Company>
	Script Author	: jakejp
	Script Date	: 2018.06.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local CaptainSays = 267


function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, CaptainSays) and GetQuestStep(Spawn, CaptainSays) == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Orders from the Cap'n, m'lady!", "dlg_8_1")
		AddConversationOption(conversation, "Oh, you caught me! I'll be leaving now.")
		StartConversation(conversation, NPC, Spawn, "Aye, wot do we got 'ere? Some land lubber think they can git the drop on ole Tally Topgallant? Ha ha! I think not!")
	else
		PlayFlavor(NPC, "", "Aye, wot do we got 'ere? Some land lubber think they can git the drop on ole Tally Topgallant? Ha ha! I think not!", "", 1689589577, 4560189, Spawn)
	end
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Cap'n wants you ta lash up an' stow 'afore you batten down the hatches!", "dlg_8_2")
		AddConversationOption(conversation, "Cap'n wants you ta stow the hatches 'afore you batten down the lash!", "WrongChoice")
		AddConversationOption(conversation, "Cap'n wants you ta lash up the batten 'afore you stow the hatches.", "WrongChoice")
		StartConversation(conversation, NPC, Spawn, "Hmph. He best pay me 'afor he can expect me ta take another run aboard that floatin' heap he be callin' a ship. Now then, wot's the Cap'n got ta say ta me?")
end

function dlg_8_2(NPC, Spawn)
	SetStepComplete(Spawn, CaptainSays, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll report back to the Cap'n at once!")
	StartConversation(conversation, NPC, Spawn, "Aye, that's wot he always be tellin' me. Day in an' day out. Tell the Cap'n I'll be there promptly. Blimmey, I'm gettin' too old for this 'ere kinda work.")
end

function WrongChoice(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Wait, let me try that again!", "dlg_8_1")
	StartConversation(conversation, NPC, Spawn, "Is this some sorta joke? Let me guess, one too many hits wit a belay pin got you all scrambled in yer noggin', right? You ain't talk to no Cap'n I work for! Off wit ye!")
end
--[[ raw_conversations
	PlayFlavor(NPC, "", "Aye, wot do we got 'ere? Some land lubber think they can git the drop on ole Tally Topgallant? Ha ha! I think not!", "", 1689589577, 4560189, Spawn)
--]]

