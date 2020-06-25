--[[
	Script Name	: SpawnScripts/GreaterFaydark/TrainerVantanPerikato.lua
	Script Purpose	: Trainer Vantan Perikato <Recognizing Opportunities>
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan001.mp3", "", "", 1775741681, 796680136, Spawn)
	AddConversationOption(conversation, "What are Heroic Opportunities?", "dlg_54_1")
	AddConversationOption(conversation, "I will seek your knowledge another time.")
	StartConversation(conversation, NPC, Spawn, "Hello,  friend! I look at you and see someone eager to defend Kelethin by facing fierce opponents in battle. Well, I have great news! I can teach you about Heroic Opportunities, a way for you and your allies to accomplish great feats of combat prowess!")
end

function dlg_54_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan002.mp3", "", "", 42663805, 3000263371, Spawn)
	AddConversationOption(conversation, "Are Heroic Opportunities complicated?", "dlg_54_2")
	AddConversationOption(conversation, "I need to finish another task.")
	StartConversation(conversation, NPC, Spawn, "Beginning at level 5, Heroic Opportunities can be triggered in combat. They allow both lone adventurers and groups of allies to combine their attacks into a series of spells or combat arts performed in a specific order. When successful, Heroic Opportunities give beneficial effects such as extra attacks against your foes or beneficial magic to heal or enhance your abilities.")
end

function dlg_54_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan003.mp3", "", "", 3602737112, 1910313531, Spawn)
	AddConversationOption(conversation, "So how does a Heroic Opportunity arise?", "dlg_54_3")
	StartConversation(conversation, NPC, Spawn, "Rest assured, someone with battle skills will find them easy! Once you start using them, you'll wonder how you ever got along without them.")
end

function dlg_54_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan004.mp3", "", "", 810984177, 2791021896, Spawn)
	AddConversationOption(conversation, "Okay, that does sound easy. How do I begin a Heroic Opportunity?", "dlg_54_4")
	AddConversationOption(conversation, "I need to finish something else first.")
	StartConversation(conversation, NPC, Spawn, "Let me tell you the short and simple version first so that you can see how easy Heroic Opportunities are to use. All you need to do is use your ability that triggers the Heroic Opportunity, then use the spells or combat arts that are blinking on your hotbar or in your Knowledge Book. Easy, isn't it?")
end

function dlg_54_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan005.mp3", "", "", 3484157799, 4148998383, Spawn)
	AddConversationOption(conversation, "Can I trigger a Starter Chain whenever I want?", "dlg_54_5")
	AddConversationOption(conversation, "I need to finish something else first.")
	StartConversation(conversation, NPC, Spawn, "Heroic Opportunities have two parts called the Starter Chain and the Combat Wheel. At level 5, every adventure class gains an ability that triggers a Starter Chain: Fighting Chance, Divine Providence, Arcane Augur, or Lucky Break. Open your Knowledge book by pressing K and click the Abilities tab to see it. You can drag its icon to your hotbar to use it.")
end

function dlg_54_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan006.mp3", "", "", 2038098568, 3233011247, Spawn)
	AddConversationOption(conversation, "What happens when I trigger a Starter Chain?", "dlg_54_6")
	StartConversation(conversation, NPC, Spawn, "Starter Chains can only be triggered while in battle with an enemy. After all, Heroic Opportunities are all about becoming great in combat! When you or an ally triggers a Starter Chain, you will see it appear in the corner of your screen.")
end

function dlg_54_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan007.mp3", "", "", 4289723720, 1132527077, Spawn)
	AddConversationOption(conversation, "Are Heroic Opportunities only usable in groups?", "dlg_54_7")
	AddConversationOption(conversation, "I'll need to continue this later.")
	StartConversation(conversation, NPC, Spawn, "Once a Starter Chain is initiated, it shows different ability icons flashing on the screen. A Starter Chain will generally display four different icons that indicate which spells or combat arts advance the Heroic Opportunity to the next stage. Icons will be blue, yellow, red, or green, depending on which class has the ability.")
end

function dlg_54_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan008.mp3", "", "", 411831633, 722981254, Spawn)
	AddConversationOption(conversation, "How do I know what I should do to advance the Starter Chain?", "dlg_54_8")
	AddConversationOption(conversation, "I need to finish something else now.")
	StartConversation(conversation, NPC, Spawn, "Heroic Opportunities can be used alone or in groups. If you fight alone you will have a limited number of ways to advance the Starter Chain, but if you are in a group made up of different classes then you will be able to advance the Starter Chain in different ways to unleash a variety of Heroic Opportunities.")
end

function dlg_54_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan009.mp3", "", "", 4143425822, 1952224436, Spawn)
	AddConversationOption(conversation, "Use the spell or art that is blinking. That's all there is to it?", "dlg_54_9")
	AddConversationOption(conversation, "I'll be back later.")
	StartConversation(conversation, NPC, Spawn, "Any spells or combat arts that can advance the Heroic Opportunity will flash on your hotbar and in your Knowledge Book. You have 10 seconds to complete the Starter Chain and advance to the Combat Wheel. See, it's easy: just use the spell or art that blinks!")
end

function dlg_54_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan010.mp3", "", "", 3052449410, 2146152555, Spawn)
	AddConversationOption(conversation, "Why does it trigger one of three?", "dlg_54_10")
	StartConversation(conversation, NPC, Spawn, "It's quite simple. After you've advanced the Starter Chain, the bright and colorful Combat Wheel appears. The Combat Wheel shows a series of icons and displays the name of the Heroic Opportunity you have triggered. A Starter Chain will initiate one of three different Heroic Opportunities.")
end

function dlg_54_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan011.mp3", "", "", 2898004073, 2013528750, Spawn)
	AddConversationOption(conversation, "What does the Combat Wheel tell me?", "dlg_54_11")
	AddConversationOption(conversation, "I'll be back another time.")
	StartConversation(conversation, NPC, Spawn, "There are three potential Heroic Opportunities: common, uncommon and rare. Each provides a different benefit. Though even the common ones are valuable, the rare event can sometimes turn the tide of battle in your favor!")
end

function dlg_54_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan012.mp3", "", "", 3594960522, 2732369829, Spawn)
	AddConversationOption(conversation, "How can I tell the difference?", "dlg_54_12")
	StartConversation(conversation, NPC, Spawn, "As with the Starter Chain, the Combat Wheel indicates which spells or arts must be performed to advance and eventually complete the heroic event. Sometimes these spells or abilities must be performed in a particular order. Other times there is no order.")
end

function dlg_54_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan013.mp3", "", "", 3798550664, 498535596, Spawn)
	AddConversationOption(conversation, "How long do I have to complete the Heroic Opportunity?", "dlg_54_13")
	AddConversationOption(conversation, "I will seek your knowledge another time.")
	StartConversation(conversation, NPC, Spawn, "In the very center of the Wheel, you'll see either a clockwise-pointing arrow or arrows pointing in different directions. The clockwise arrow indicates that the abilities must be completed in order. The other types of arrows mean that the abilities can be completed in any order.")
end

function dlg_54_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan015.mp3", "", "", 1045091019, 199555181, Spawn)
	AddConversationOption(conversation, "Any other tricks I should know?", "dlg_54_14")
	AddConversationOption(conversation, "I must go now.")
	StartConversation(conversation, NPC, Spawn, "It really is! As you become more familiar with using Heroic Opportunities, you can take note of the members of your group and plan out ahead of time which Opportunities will provide you the greatest benefit.")
end

function dlg_54_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/trainer_vantan_perikato/_exp03/exp03_cty_kelethin/tutorials/qst_vantan/qst_vantan016.mp3", "", "", 1785885434, 1190045579, Spawn)
	AddConversationOption(conversation, "Thank you for the information. I'll try Heroic Opportunities as soon as I can!", "dlg_54_15")
	StartConversation(conversation, NPC, Spawn, "Scout classes have a little something extra. By using their Coin icon, the Scout can shift to another Heroic Opportunity. This shift can only happen once per Combat Wheel. This ability must also be used before any other spell or combat art has been used to advance the Wheel.")
end

