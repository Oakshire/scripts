--[[
	Script Name	: SpawnScripts/TimorousDeep/TrainerByrkuriMyliLok.lua
	Script Purpose	: Trainer Byrkuri Myli'Lok <Recognizing Opportunities>
	Script Author	: John Adams
	Script Date	: 2009.03.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are Heroic Opportunities?", "dlg_11_1")
	AddConversationOption(conversation, "I will seek your knowledge another time.")
	StartConversation(conversation, NPC, Spawn, "I look at you and see someone eager to face fierce opponents in battle. Well, I can teach you about Heroic Opportunities, a way for you and your allies to accomplish great feats of combat prowess.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are Heroic Opportunities complicated?", "dlg_11_2")
	AddConversationOption(conversation, "I need to finish another task.")
	StartConversation(conversation, NPC, Spawn, "Beginning at level 5, Heroic Opportunities can be triggered in combat. They allow both lone adventurers and groups of allies to combine their attacks into a series of spells or combat arts performed in a specific order. When successful, Heroic Opportunities give beneficial effects such as extra attacks against your foes or beneficial magic to heal or enhance your abilities.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So how does a Heroic Opportunity arise?", "dlg_11_3")
	StartConversation(conversation, NPC, Spawn, "Rest assured, someone with battle skills will find them easy! Once you start using them, you'll wonder how you ever got along without them.")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Okay, that does sound easy. How do I begin a Heroic Opportunity?", "dlg_11_4")
	AddConversationOption(conversation, "I need to finish something else first.")
	StartConversation(conversation, NPC, Spawn, "Let me tell you the short and simple version first so that you can see how easy Heroic Opportunities are to use. All you need to do is use your ability that triggers the Heroic Opportunity, then use the spells or combat arts that are blinking on your hotbar or in your Knowledge Book. Easy, isn't it?")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Can I trigger a Starter Chain whenever I want?", "dlg_11_5")
	AddConversationOption(conversation, "I need to finish something else first.")
	StartConversation(conversation, NPC, Spawn, "Heroic Opportunities have two parts called the Starter Chain and the Combat Wheel. At level 5, every adventure class gains an ability that triggers a Starter Chain: Fighting Chance, Divine Providence, Arcane Augur, or Lucky Break. Open your Knowledge book by pressing K and click the Abilities tab to see it. You can drag its icon to your hotbar to use it.")
end

function dlg_11_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happens when I trigger a Starter Chain?", "dlg_11_6")
	StartConversation(conversation, NPC, Spawn, "Starter Chains can only be triggered while in battle with an enemy. After all, Heroic Opportunities are all about becoming great in combat! When you or an ally triggers a Starter Chain, you will see it appear in the corner of your screen.")
end

function dlg_11_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are Heroic Opportunities only usable in groups?", "dlg_11_7")
	AddConversationOption(conversation, "I'll need to continue this later.")
	StartConversation(conversation, NPC, Spawn, "Once a Starter Chain is initiated, it shows different ability icons flashing on the screen. A Starter Chain will generally display four different icons that indicate which spells or combat arts advance the Heroic Opportunity to the next stage. Icons will be blue, yellow, red, or green, depending on which class has the ability.")
end

function dlg_11_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I know what I should do to advance the Starter Chain?", "dlg_11_8")
	AddConversationOption(conversation, "I need to finish something else now.")
	StartConversation(conversation, NPC, Spawn, "Heroic Opportunities can be used alone or in groups. If you fight alone you will have a limited number of ways to advance the Starter Chain, but if you are in a group made up of different classes then you will be able to advance the Starter Chain in different ways to unleash a variety of Heroic Opportunities.")
end

function dlg_11_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Use the spell or art that is blinking. That's all there is to it?", "dlg_11_9")
	AddConversationOption(conversation, "I'll be back later.")
	StartConversation(conversation, NPC, Spawn, "Any spells or combat arts that can advance the Heroic Opportunity will flash on your hotbar and in your Knowledge Book. You have 10 seconds to complete the Starter Chain and advance to the Combat Wheel. See, it's easy: just use the spell or art that blinks!")
end

