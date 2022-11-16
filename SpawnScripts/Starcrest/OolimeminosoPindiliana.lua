--[[
	Script Name	: SpawnScripts/Starcrest/OolimeminosoPindiliana.lua
	Script Purpose	: Oolimeminoso Pindiliana <Alchemist>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Mage1 = 5767

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
    if GetQuestStep(Spawn,Mage1) <=5 and GetQuestStep(Spawn,Mage1) >=3 then	
	AddConversationOption(conversation, "The Magister suggested I asked you about what you use your sorcery for.","MageTraining1")
	end
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Though one sees many things, the unseen are the hardest to find!")
end

function MageTraining1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    CastSpell(NPC,455)
	AddConversationOption(conversation, "I believe I can handle that.","MageTraining1a")
	AddConversationOption(conversation, "Perhaps I should reconsider all of this...")
	StartConversation(conversation, NPC, Spawn, "A sorcerer taps into the mana flow and draws the hidden energies that swirl within that maelstrom of forces.  By taking these energies, sorcerers simplify their lives, and make their opponent's lives a heck of a lot harder. But along with sorcery's incredible power, comes incredible responsibility. Can you handle this?")
end

function MageTraining1a(NPC, Spawn)
    SetStepComplete(Spawn,Mage1,5)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	AddConversationOption(conversation, "Alright. Thank you for the insight.")
	StartConversation(conversation, NPC, Spawn, "Then continue your lessons and prepare for challenges that will test your control. If you should lose control, you may end more than just your life.")
end