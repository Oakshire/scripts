--[[
	Script Name		:	SpawnScripts/FrostfangSea/GilnaGlorysong.lua
	Script Purpose	:	dirge trainer in Halas
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

local DIRGE = 37

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetClass(Spawn) == DIRGE then
		conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
		AddConversationOption(conversation, "What advice do you have for a fellow dirge?", "DirgeChat1")
		AddConversationOption(conversation, "I certainly will. Good bye.")
		StartConversation(conversation, NPC, Spawn, "I thought I heard another dirge singing songs of lamentation. If I can be of any service, let me know.")
	else
		PlayFlavor(NPC, "", "La! La! La!", "hello", 0, 0, Spawn)
	end
end

function DirgeChat1(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's useful to know!", "DirgeChat2")
	StartConversation(conversation, NPC, Spawn, "If you find items that add to your agility or stamina, then take them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end

function DirgeChat2(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "That's interesating.", "DirgeChat3")
	StartConversation(conversation, NPC, Spawn, "Our songs of despair are incredibly valuable to others. They can bolster both fighters and other scouts by increasing their defense and offense.  And the most experienced dirges can even raise a fallen comrade with a song.")
end

function DirgeChat3(NPC, Spawn)
	conversation = CreateConversation()
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "But do not neglect your melee skills.  These are essential to our survival!  Songs of despair can demoralize and weaken your foe, but without a weapon to inflict damage there is no killing blow.")
end