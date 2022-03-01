--[[
	Script Name		:	SpawnScripts/FrostfangSea/TergjerdGoreblade.lua
	Script Purpose	:	paladin trainer
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local PALADIN = 10

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == PALADIN then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a another paladin?", "PalChat1")
		AddConversationOption(conversation, "They do, don't they? Good day.")
		StartConversation(conversation, NPC, Spawn, "I see a familiar fire in your eyes, warrior.  The same flames of righteousness rside within all paladins!")
	else
		PlayFlavor(NPC, "", "I'm here to whup folks like you into shape!", "hello", 0, 0, Spawn)
	end
end

function PalChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "PalChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your strength or stamina, be sure to get them!  Strength increases the amount of damage your attacks can inflict on others and raises your ability to carry heavy weight.  Your stamina affects your health.  This is crucial.")
end

function PalChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	
	AddConversationOption(conversation, "That's reassuring.", "PalChat3")
	StartConversation(conversation, NPC, Spawn, "Know the power you wield.  You have been called into this service, to become a sword of valor, a servant to the divine, smiting oppressors and followers of the dark no matter if they attack one at a time or as a horde.")
end

function PalChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That will be useful!", "PalChat4")
	StartConversation(conversation, NPC, Spawn, "The divine powers can also be used to grant us health in moments of need, as wlel as increase our allies' ability to heal.  It can also be used to lend them some invaluable aid in the form of damage mitigation, reducing the amount of damage they receive.")
end

function PalChat4(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesting.", "PalChat5")
	StartConversation(conversation, NPC, Spawn, "As is oura bility to take the blame for the damage an ally may inflict.  This may sound bad, but when you are battling beside a powerful friend who does not have much protection anything that can keep the foe's attention on you is saving your friend.")
end

function PalChat5(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "And protect yourself with a good set of plate mail, " .. GetName(Spawn) .. ". The armor may be weighty, but you can handle it, and its protective properties will be necessary, as it takes time to beseech our divine powers.")
end