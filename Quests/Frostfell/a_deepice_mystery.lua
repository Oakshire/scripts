--[[
	Script Name       :    a_deepice_mystery.lua
	Script Purpose    :    Handles the quest, "A Deepice Mystery"
	Script Author     :    vo1d
	Script Date       :    10/29/2019
	Script Notes      :	

	Zone              :    World Event
	Quest Giver       :    Jingle
	Preceded by       :    None
	Followed by       :    The Giftgiver's Dilemma
--]]

-- **********************************************************************
--                            Known Issues
-- Rewards:
-- Order of rewards is wrong
-- Reward items missing from DB (Petamorph Wand: Frost Fae Drake) and (Frost Fae Drake Plushie). I used other rewards in the mean time.
-- Only receive one E'ci token even though the quantity is set to 5. (I think this might be related to it being a selectable item?)
--
-- Spawns:
-- Encounters within the Frostfell Wonderland only have single spawns/locations. Need to setup proximity and multiple spawn locations.
-- Jarok needs to be added to the Frostbite encounter along with a three headed ice wolf beast that you kill before fighting frostbite & jarok.
-- **********************************************************************

function Init(Quest)
	Step1(Quest)
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Step1(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Defeat a living blaze for burning embers", 1, 100, "Jingle believes she can make a lasting thaw potion from living embers and ice crystals.", 2522, 1710369) -- a living blaze
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "")

	AddQuestStepKill(Quest, 2, "Defeat a living snow flurry for ice crystals", 1, 100, "Jingle believes she can make a lasting thaw potion from living embers and ice crystals.", 1135, 410267) -- a living snow flurry
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I obtained the living embers and ice crystals for Jingle's lasting thaw potion.")

	AddQuestStepChat(Quest, 3, "Return to Jingle", 1, "I must return to Jingle in Frostfell Wonderland Village with the embers and ice crystals.", 11, 4120178) -- Jingle
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	GiveQuestItem(Quest, Player, "Here is your quest item", 3080)
	UpdateQuestStepDescription(Quest, 3, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "Jingle made a lasting thaw potion for me to use on each of the deep freeze victims.")

	AddQuestStepSpell(Quest, 4, "Cast lasting thaw potion on Candice Cheriweth on Candy Isle", 1, 100, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 1177, 4120025) -- Candice
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "")

	AddQuestStepChat(Quest, 5, "Speak with Candice Cheriweth", 1, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 11, 4120025) -- Candice
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "")

	AddQuestStepSpell(Quest, 6, "Cast lasting thaw potion on Gardy Ex-Giftgiver on the Isle of Great Gifts", 1, 100, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 1177, 4120018) -- Gardy
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "")

	AddQuestStepChat(Quest, 7, "Speak with Gardy Ex-Giftgiver", 1, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 11, 4120018) -- Gardy
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "")

	AddQuestStepSpell(Quest, 8, "Cast lasting thaw potion on Mr. McScroogle on McScroogle Isle", 1, 100, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 1177, 4120037) -- Scroogle
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "")

	AddQuestStepChat(Quest, 9, "Speak with Mr. McScroogle", 1, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 11, 4120037) -- Scroogle
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "")

	AddQuestStepSpell(Quest, 10, "Cast lasting thaw potion on Queen Bunny on the Isle of Great Gifts", 1, 100, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 1177, 4120022) -- Queen
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "")

	AddQuestStepChat(Quest, 11, "Speak with Queen Bunny", 1, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 11, 4120022) -- Queen
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "")

	AddQuestStepSpell(Quest, 12, "Cast lasting thaw potion on Snarf Frostfoot on Frostfoot Isle", 1, 100, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 1177, 4120179) -- Snarf
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "")

	AddQuestStepChat(Quest, 13, "Speak with Snarf Frostfoot", 1, "I must use Jingle's lasting thaw potion on the deep freeze victims in Frostfell Wonderland Village. Hopefully, they can shed some light on who or what was behind this attack.", 11, 4120179) -- Snarf
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "")
	UpdateQuestTaskGroupDescription(Quest, 3, "The victims of the deep freeze had different theories as to who was behind the attack, but I was able to get a few clues.")

	AddQuestStepChat(Quest, 14, "Speak with Jingle", 1, "I must return to Jingle in Frostfell Wonderland Village.", 11, 4120178) -- Jingle
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
end

function Step14Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 14, "")
	UpdateQuestTaskGroupDescription(Quest, 4, "Jingle and I suspect that the deep freeze culprit is still somewhere within the Frostfell Wonderland Village.")

	AddQuestStepKill(Quest, 15, "Search the northern islands for a mysterious ice creature", 1, 100, "I should search Frostfell Wonderland Village for the mysterious ice animals connected to this mystery.", 11, 6870000) -- a hoarfrost attacker
	AddQuestStepCompleteAction(Quest, 15, "Step15Complete")
end

function Step15Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 15, "The hoarfrost attacker teleported away!")

	AddQuestStepKill(Quest, 16, "Hunt for the mysterious ice creature in the north-western islands", 1, 100, "I should search Frostfell Wonderland Village for the mysterious ice animals connected to this mystery.", 11, 6870000) -- a hoarfrost attacker
	AddQuestStepCompleteAction(Quest, 16, "Step16Complete")
end

function Step16Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 16, "The iceclaw scrapper teleported away!")

	AddQuestStepKill(Quest, 17, "Hunt for the mysterious ice creature in the southern islands", 1, 100, "I should search Frostfell Wonderland Village for the mysterious ice animals connected to this mystery.", 11, 6870001) -- a frostbite scrapper
	AddQuestStepCompleteAction(Quest, 17, "Step17Complete")
end

function Step17Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 17, "The ice creature was revealed to be some sort of frost fae!")

	AddQuestStepKill(Quest, 18, "Battle Jarok Frostpetal and Frostbite", 1, 100, "I should search Frostfell Wonderland Village for the mysterious ice animals connected to this mystery.", 11, 6870002) -- Frostbite
	AddQuestStepCompleteAction(Quest, 18, "Step18Complete")
end

function Step18Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 18, "")
	UpdateQuestTaskGroupDescription(Quest, 5, "Attacking the mysterious ice creatures forced the culprit, Jarok Frostpetal, to reveal himself!")

	AddQuestStepChat(Quest, 19, "Speak with Jarok Frostpetal", 1, "I must confront Jarok Frostpetal. He couldn't have gotten far within Frostfell Wonderland Village. He's likely still on the southernmost island.", 11, 6870003) -- Jarok Frostpetal
	AddQuestStepCompleteAction(Quest, 19, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 19, "")
	UpdateQuestTaskGroupDescription(Quest, 6, "I spoke with Jarok Frostpetal.")

	UpdateQuestDescription(Quest, "Jarok Frostpetal, a frost fae dedicated to E'ci, was behind the deep freeze spell that had taken hold of Frostfell Wonderland Village. His intentions may have been well intended, but his execution left a little to be desired, especially since it would have involved some chilling ramifications. He was satisfied that the village will remain a sanctuary for those that wish to be close to the magic of E'ci.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		Step10Complete(Quest, QuestGiver, Player)
	elseif Step == 11 then
		Step11Complete(Quest, QuestGiver, Player)
	elseif Step == 12 then
		Step12Complete(Quest, QuestGiver, Player)
	elseif Step == 13 then
		Step13Complete(Quest, QuestGiver, Player)
	elseif Step == 14 then
		Step14Complete(Quest, QuestGiver, Player)
	elseif Step == 15 then
		Step15Complete(Quest, QuestGiver, Player)
	elseif Step == 16 then
		Step16Complete(Quest, QuestGiver, Player)
	elseif Step == 17 then
		Step17Complete(Quest, QuestGiver, Player)
	elseif Step == 18 then
		Step18Complete(Quest, QuestGiver, Player)
	elseif Step == 19 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
