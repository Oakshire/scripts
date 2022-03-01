--[[
	Script Name	: SpawnScripts/EnchantedLands/LeelavYekl.lua
	Script Purpose	: Leelav Yekl 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Oh no, no, no!  He's going to get me! I just know it!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Have you found him yet?  No, no, of course not!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Maybe you can help me ... no ... he's too strong, he'd just kill you, too!", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl001.mp3", "", "", 203402242, 3544872625, Spawn)
		AddConversationOption(conversation, "I didn't ask who, but do tell me anyway.", "dlg_4_1")
		AddConversationOption(conversation, "I'm not sure I can help. ")
	StartConversation(conversation, NPC, Spawn, "Who?  Who you ask?  HIM!  He's the worst!  There's no one more likely to kill me!")
	if convo==51 then
		PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl001.mp3", "", "", 203402242, 3544872625, Spawn)
		AddConversationOption(conversation, "I didn't ask who, but do tell me anyway.", "dlg_51_1")
		AddConversationOption(conversation, "I'm not sure I can help. ")
		StartConversation(conversation, NPC, Spawn, "Who?  Who you ask?  HIM!  He's the worst!  There's no one more likely to kill me!")
	end

	if convo==52 then
		PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl001.mp3", "", "", 203402242, 3544872625, Spawn)
		AddConversationOption(conversation, "I didn't ask who, but do tell me anyway.", "dlg_52_1")
		AddConversationOption(conversation, "I'm not sure I can help. ")
		StartConversation(conversation, NPC, Spawn, "Who?  Who you ask?  HIM!  He's the worst!  There's no one more likely to kill me!")
	end

	if convo==53 then
		PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl001.mp3", "", "", 203402242, 3544872625, Spawn)
		AddConversationOption(conversation, "I didn't ask who, but do tell me anyway.", "dlg_53_1")
		AddConversationOption(conversation, "I'm not sure I can help. ")
		StartConversation(conversation, NPC, Spawn, "Who?  Who you ask?  HIM!  He's the worst!  There's no one more likely to kill me!")
	end

	if convo==54 then
		PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl001.mp3", "", "", 203402242, 3544872625, Spawn)
		AddConversationOption(conversation, "I didn't ask who, but do tell me anyway.", "dlg_54_1")
		AddConversationOption(conversation, "I'm not sure I can help. ")
		StartConversation(conversation, NPC, Spawn, "Who?  Who you ask?  HIM!  He's the worst!  There's no one more likely to kill me!")
	end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl002.mp3", "", "", 548189434, 2599124808, Spawn)
		AddConversationOption(conversation, "Sounds like a fairly normal day in Freeport.", "dlg_4_2")
		AddConversationOption(conversation, "I'm not interested in your tale of woe.")
	StartConversation(conversation, NPC, Spawn, "I can't tell you everything!  It's so awful!  One day, I'm at home in Freeport, minding my tinkering shop, and the next, some crazed maniac is leaping over the counter of my workshop swinging a vicious dagger at me!")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl003.mp3", "", "", 1926338048, 2692781404, Spawn)
		AddConversationOption(conversation, "Can you describe him?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "No, see that's the thing!  I would normally expect it, but not from this one!  Oh, he was wily, let me tell you!")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl004.mp3", "", "", 118861580, 1571095553, Spawn)
		AddConversationOption(conversation, "All right, I can help you.", "dlg_4_4")
		AddConversationOption(conversation, "I think you're on your own for this one.")
	StartConversation(conversation, NPC, Spawn, "Kind of short, brutish, brown hair, seemed to be an unstoppable foe.  Really quite a menace, let me tell you!")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/leelav_yekl/enchanted/leelav_yekl005.mp3", "", "", 4114866306, 3213172070, Spawn)
		AddConversationOption(conversation, "I'll see what I can find.", "dlg_4_5")
	StartConversation(conversation, NPC, Spawn, "I would recommend starting at the Blood Haze in Freeport.  I think I heard he was staying there.  I only managed to escape death at his skilled hands through the luckiest of chances.  Please find him. I'll reward you handsomely if you do!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Oh no, no, no!  He's going to get me! I just know it!", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Have you found him yet?  No, no, of course not!", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Maybe you can help me ... no ... he's too strong, he'd just kill you, too!", "", 1689589577, 4560189, Spawn)
--]]

