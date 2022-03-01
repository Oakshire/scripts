--[[
	Script Name	: SpawnScripts/GreaterFaydark/aGigglegibberGoblinGamblinGameVendor.lua
	Script Purpose	: a Gigglegibber Goblin Gamblin' Game Vendor 
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_0_1")
	AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
	StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	if convo==1 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_1_1")
		AddConversationOption(conversation, "What do you know about the disappearance of Lord Bowsprite?")
		AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
		StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	end

	if convo==2 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_2_1")
		AddConversationOption(conversation, "What do you know about the disappearance of Lord Bowsprite?")
		AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
		StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	end

	if convo==3 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_3_1")
		AddConversationOption(conversation, "What do you know about the disappearance of Lord Bowsprite?")
		AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
		StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	end

	if convo==8 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_8_1")
		AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
		StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	end

	if convo==9 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_9_1")
		AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
		StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	end

	if convo==10 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_10_1")
		AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
		StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	end

	if convo==16 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_16_1")
		AddConversationOption(conversation, "What do you know about the disappearance of Lord Bowsprite?")
		AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
		StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	end

	if convo==20 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "dlg_20_1")
		AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
		StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Bowsprite... Not Bowspit.")
	AddConversationOption(conversation, "On second thought, I'll be going now.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Lord who? I's never met no one named Bowspit.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who said he was an elf? Fess up or I'll tell everyone the Gigglegibber gambling game is rigged!", "dlg_0_3")
	AddConversationOption(conversation, "Yeah, this is going to be like pulling teeth. Nevermind.")
	StartConversation(conversation, NPC, Spawn, "Oh... Well, um, I's still don't know nothing about that elf.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me where it is. You don't want me to ruin your business do you?", "dlg_0_4")
	AddConversationOption(conversation, "On second thought, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Noes, noes, you can't do that! Fine, I'll tells you everything. We have Bowspit at the super secret hideout, but you can't go there. No way.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You've been helpful, thanks.", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "You gonna gets me in a lot of trouble, you know. I'll tells you, but I don't exactly remember where it is. All I remember is the entrance is at the bottom of the water, under the docks, where the halfies and fairies play. We all haves to take the boat to get there. That's all I'm telling you! Now goes away.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Bowsprite... Not Bowspit.")
	AddConversationOption(conversation, "On second thought, I'll be going now.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Lord who? I's never met no one named Bowspit.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why are potatoes funny?", "dlg_2_2")
	AddConversationOption(conversation, "On second thought, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Gigglegibber goblins not kill people! War no fun at all.  Gigglegibber goblins like shiny coins and funny things! We like frogs, fluffy kittens, potatoes... You have potatoes?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll think about it.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "They tasty! Not funny!... though Gribbik carved funny face in a potato once.  That was funny until he eated it.  Hey! No try to tricks me with talk about potatoes.  You still pays ten shiny coins for ticket!  Buy many tickets! If you buys more maybe you win more than many shiny coins!")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why are potatoes funny?", "dlg_9_2")
	AddConversationOption(conversation, "On second thought, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Gigglegibber goblins not kill people! War no fun at all.  Gigglegibber goblins like shiny coins and funny things! We like frogs, fluffy kittens, potatoes... You have potatoes?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll think about it.", "dlg_9_3")
	StartConversation(conversation, NPC, Spawn, "They tasty! Not funny!... though Gribbik carved funny face in a potato once.  That was funny until he eated it.  Hey! No try to tricks me with talk about potatoes.  You still pays ten shiny coins for ticket!  Buy many tickets! If you buys more maybe you win more than many shiny coins!")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why are potatoes funny?", "dlg_10_2")
	AddConversationOption(conversation, "On second thought, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Gigglegibber goblins not kill people! War no fun at all.  Gigglegibber goblins like shiny coins and funny things! We like frogs, fluffy kittens, potatoes... You have potatoes?")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll think about it.", "dlg_10_3")
	StartConversation(conversation, NPC, Spawn, "They tasty! Not funny!... though Gribbik carved funny face in a potato once.  That was funny until he eated it.  Hey! No try to tricks me with talk about potatoes.  You still pays ten shiny coins for ticket!  Buy many tickets! If you buys more maybe you win more than many shiny coins!")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Bowsprite... Not Bowspit.")
	AddConversationOption(conversation, "On second thought, I'll be going now.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "Lord who? I's never met no one named Bowspit.")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Who said he was an elf? Fess up or I'll tell everyone the gambling game is rigged!", "dlg_16_3")
	AddConversationOption(conversation, "On second thought, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Ohh... Well, um, I's still don't know nothing about that elf.")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me where it is. You don't want me to ruin your business do you?", "dlg_16_4")
	AddConversationOption(conversation, "On second thought, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Noes, noes, you can't do that! Fine, I'll tells you everything. We have Bowspit at the super secret hideout, but you can't go there. No way.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You've been helpful, thanks.", "dlg_16_5")
	StartConversation(conversation, NPC, Spawn, "You gonna gets me in a lot of trouble, you know. I'll tells you, but I don't exactly remember where it is. All I remember is the entrance is at the bottom of the water, under the docks, where the halfies and fairies play. We all haves to take the boat to get there. That's all I'm telling you! Now goes away before no one wants tickets anymore.")
end

