--[[
	Script Name	: SpawnScripts/Generic/GenericTradeskillTutor.lua
	Script Purpose	: <Tradeskill Tutorial>
	Script Author	: theFoof
	Script Date	: 2013.09.28
	Script Notes	: Generic script for tradeskill tutors
--]]

local HarvestTutorial = 11

local HadAHammer = 12

local ForgingAhead = 91

local CounteringProblems = 92

local TutorialCook = 93

local TutorialWeapons = 94

local TutorialScrolls = 95

local TutorialExperiments = 96

local TutorialOutfitting = 97

function spawn(NPC)
	ProvidesTutorials(NPC)
end

function ProvidesTutorials(NPC)
	ProvidesQuest(NPC, HarvestTutorial)
	ProvidesQuest(NPC, ForgingAhead)
	ProvidesQuest(NPC, CounteringProblems)
	ProvidesQuest(NPC, TutorialCook)
	ProvidesQuest(NPC, TutorialWeapons)
	ProvidesQuest(NPC, TutorialScrolls)
	ProvidesQuest(NPC, TutorialExperiments)
	ProvidesQuest(NPC, TutorialOutfitting)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	CraftingTutorHail(NPC, Spawn)
end

function CraftingTutorHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
			
	if GetQuestStep(Spawn, HadAHammer) == 5 then
		SetStepComplete(Spawn, HadAHammer, 5)
		if not HasCompletedQuest(Spawn, ForgingAhead) then
			TutChat1(NPC, Spawn)
		end
	elseif not HasCompletedQuest(Spawn, HarvestTutorial) and not HasQuest(Spawn, HarvestTutorial) then
		AddConversationOption(conversation, "Yes please, I don't know much about that stuff.", "OfferHarvestTutorial")
		AddConversationOption(conversation, "Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.", "OfferHarvestTutorial")
		AddConversationOption(conversation, "No thanks, I have other things to do right now.")
		StartConversation(conversation, NPC, Spawn, "Hello friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	elseif LastStepHarvestTutorial(Spawn) then
		SetStepComplete(Spawn, HarvestTutorial, 8)		
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thank you.")
		StartConversation(conversation, NPC, Spawn, "Excellent work learning about harvesting!  As a reward, allow me to offer you this box for storing harvested items.  It's quite heavy, so I suggest you put it in your bank rather than carrying it, but it has plenty of storage room for harvests.")
	elseif CanReceiveQuest(Spawn, ForgingAhead) then
		TutChat1(NPC, Spawn)
	elseif GetQuestStep(Spawn, ForgingAhead) == 1 then
		PlayFlavor(NPC, "", "Take your time. There's no rush!", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, ForgingAhead) == 2 then
		Tut2Chat1(NPC, Spawn)
	elseif CanReceiveQuest(Spawn, CounteringProblems) then
		Tut2Chat1(NPC, Spawn)
	elseif GetQuestStep(Spawn, CounteringProblems) == 1 then
		PlayFlavor(NPC, "", "You'll get the hang of it.  And don't forget, other crafters are often a valuable source of advice and tips.", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, CounteringProblems) == 2 then
		SetStepComplete(Spawn, CounteringProblems, 2)
		Tut3Chat1(NPC, Spawn)
	elseif CanReceiveQuest(Spawn, TutorialCook) then
		Tut3Chat1(NPC, Spawn)
	elseif GetQuestStep(Spawn, TutorialCook) == 1 then
		PlayFlavor(NPC, "", "Remember, you can buy essential provisioning ingredients such as liquid and dough from the fuel vendor.", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, TutorialCook) == 2 then
		SetStepComplete(Spawn, TutorialCook, 2)
		Tut4Chat1(NPC, Spawn)
	elseif CanReceiveQuest(Spawn, TutorialWeapons) then
		Tut4Chat1(NPC, Spawn)
	elseif HasQuest(Spawn, TutorialWeapons) and (not QuestStepIsComplete(Spawn, TutorialWeapons, 1) or not QuestStepIsComplete(Spawn, TutorialWeapons, 2)) then
		PlayFlavor(NPC, "", "Remember to be careful when working with weapons. You wouldn't want to accidentally impale your fellow crafters.", "", 0, 0, Spawn)
	elseif HasQuest(Spawn, TutorialWeapons) and QuestStepIsComplete(Spawn, TutorialWeapons, 1) and QuestStepIsComplete(Spawn, TutorialWeapons, 2) then
		SetStepComplete(Spawn, TutorialWeapons, 3)
		Tut5Chat1(NPC, Spawn)
	elseif CanReceiveQuest(Spawn, TutorialScrolls) then
		Tut5Chat1(NPC, Spawn)
	elseif GetQuestStep(Spawn, TutorialScrolls) == 1 then
		PlayFlavor(NPC, "", "Ah, covered liberally with ink, I see. Good job. Keep at it!", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, TutorialScrolls) == 2 then
		SetStepComplete(Spawn, TutorialScrolls, 2)
		Tut6Chat1(NPC, Spawn)
	elseif CanReceiveQuest(Spawn, TutorialExperiments) then
		Tut6Chat1(NPC, Spawn)
	elseif GetQuestStep(Spawn, TutorialExperiments) == 1 then
		PlayFlavor(NPC, "", "Be particularly careful at the chemistry table. More explosions originate in that area than anywhere else in the city...", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, TutorialExperiments) == 2 then
		SetStepComplete(Spawn, TutorialExperiments, 2)
		Tut7Chat1(NPC, Spawn)
	elseif CanReceiveQuest(Spawn, TutorialOutfitting) then
		Tut7Chat1(NPC, Spawn)
	elseif HasQuest(Spawn, TutorialOutfitting) and (not QuestStepIsComplete(Spawn, TutorialOutfitting, 1) or not QuestStepIsComplete(Spawn, TutorialOutfitting, 2)) then
		PlayFlavor(NPC, "", "Take your time. It's dangerous to rush at the forge!", "", 0, 0, Spawn)
	elseif HasQuest(Spawn, TutorialOutfitting) and QuestStepIsComplete(Spawn, TutorialOutfitting, 1) and QuestStepIsComplete(Spawn, 97, 2) then
		SetStepComplete(Spawn, TutorialOutfitting, 3)
		FinishedChat(NPC, Spawn)
	else
		FinishedChat2(NPC, Spawn)
	end
end

function TutChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "tradeskill_tutorial_master/tradeskill/tutorial/tradeskill_tutorial014.mp3", "", "", 423248729, 3231742282, Spawn)
	AddConversationOption(conversation, "Yes please.", "TutChat2")
	AddConversationOption(conversation, "Not now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You have learned how to gather harvests, and whether or not you decide to learn a tradeskill profession, you'll find harvesting can be a useful and profitable pastime.  Are you interested in reviewing the crafting process?")
end

function TutChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Elm, tin, roots ... check.  And I'd like to learn more before I start, yes.", "TutChat3")
	AddConversationOption(conversation, "No thanks, spare me the details, just tell me where to go.", "OfferForgingAhead")
	AddConversationOption(conversation, "Actually ... I'll be right back!")
	StartConversation(conversation, NPC, Spawn, "All right, let's learn about the crafting process itself.  You'll need to have some harvested elm, tin, and roots in your bags.  Shall I tell you a bit more about the crafting stations and your tradeskill arts, or do you want to just get going?")
end

function TutChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "And what skills will I need?", "TutChat4")
	StartConversation(conversation, NPC, Spawn, "There are a number of different crafting stations that can be used to make different items.  For example, you would use a forge to make metal armor, and a chemistry table to make potions.  The other crafting stations are:  the sewing table, the woodworking table, the sage's engraved desk, the stove & keg, and the jeweler's workbench.")
end

function TutChat4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial011.mp3", "", "", 1844695369, 4279963855, Spawn)
	AddConversationOption(conversation, "So I need to use these tradeskill arts while crafting?", "TutChat5")
	StartConversation(conversation, NPC, Spawn, "Each of the 9 tradeskill professions has its own 6 tradeskill arts, and there are also a couple of special arts that are used for recipes not related directly to one tradeskill specialty. The appropriate arts will appear as buttons at the bottom of the crafting window when you start to make an item.")
end

function TutChat5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "So what happens next?", "TutChat6")
	StartConversation(conversation, NPC, Spawn, "That's right. If you mouse-over or examine the arts in your book, you should see what each of them do.  Three will add progress, and three will add durability.  When you're crafting you will want to be sure you know which ones add progress and which ones add durability. If you're having trouble maintaining durability, use all your durability arts all the time!  Or to speed up progress, use the progress arts nonstop.")
end

function TutChat6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Once I find the recipe I want to make, what then?", "TutChat7")
	StartConversation(conversation, NPC, Spawn, "The first step in crafting anything is the recipe.  The recipe you select determines what you will create.  Open your recipe book from the main menu, or press N, to see yours.  If you're new to crafting it will be empty, but as you gain more recipes they will be listed here and you can use the Search box at the top of this window to easily find recipe names.  You can also create custom filters using the Edit button.  ")
end

function TutChat7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I think I'm ready to give it a try.", "TutChat8")
	StartConversation(conversation, NPC, Spawn, "In this window you would select the name of the recipe you wish to use and then click Create.  You will need to be near a crafting station of the appropriate type.  If you click on the crafting station directly, your recipe book will automatically filter to show you only the recipes you can make on that station.  Once you click Create, you will move to the Resource Window which shows you the list of ingredients that recipe requires.  If you have all those, you click Begin and crafting starts.")
end

function TutChat8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How do I stop losing durability then?", "TutChat9")
	StartConversation(conversation, NPC, Spawn, "I'd like you to make a candelabra for practice. While you craft it, I'd like you to pay attention to the blue and green bars in the middle area.  This shows you your progress (blue), and the durability (green) of the item you are creating.  The goal is to increase your progress without losing too much durability.  To create the item, you need to fill all four blue progress bars.  If you lose at least one full bar of durability, you will not be able to do this unless you can regain that durability again.   It is safest to keep your durability near maximum just in case of unexpected critical failures.")
end

function TutChat9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It might be easier if I just try it out, can I give it a try now?", "OfferForgingAhead")
	StartConversation(conversation, NPC, Spawn, "That's where the reaction arts I mentioned come in.  You can use these to add progress (blue) or durability (green). Mouse click these or press 1 through 6 on your keyboard.  You can use these skills proactively throughout crafting to influence the outcome - for example, use skills that add durability if your durability is dropping.  Every 4 seconds a crafting 'round' completes and you will see numbers indicating your overall progress and durability loss or gain for that round above the crafting station.  This is generally easier to see in third-person view (use your mouse wheel to scroll out).")
end

function Tut2Chat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasCompletedQuest(Spawn, ForgingAhead) then
		SetStepComplete(Spawn, ForgingAhead, 2)
	end
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial017.mp3", "", "", 1140694758, 2504376154, Spawn)
	AddConversationOption(conversation, "Like what?", "Tut2Chat2")
	StartConversation(conversation, NPC, Spawn, "Moving on to the next lesson, you should be aware that there are some hazards associated with crafting.  Why, back in the old days, it wasn't unusual to see piles of injured bodies beside the forge!  We've managed to build slightly less dangerous forges since then, but no matter what craft you choose, there are still dangers to counter.")
end

function Tut2Chat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I didn't see any of that while making the candelabra...", "OfferCounteringProblems")
	StartConversation(conversation, NPC, Spawn, "During the crafting process, you will sometimes see a warning icon appear in the area below the four progress bars.  The warning icon will match one of your reaction art icons, and will have a name indicating the type of danger. The crafter can correct these problems by ensuring the next reaction art they use matches the icon of the warning.  Successfully doing so will avoid bad things occurring (such as a loss of progress, or durability, or even injury to the crafter) and may also result in unusually good things happening (such as progress or durability gain, a skill bonus, or even the discovery of a rare harvest).")
end

function Tut3Chat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1060.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes please.", "Tut3Chat2")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Well done, I hope you avoided any serious injuries.  So, now you know the basics of crafting, and I hope you understand how to obtain the best quality results while avoiding injury.  Now, would you like to try a few more recipes to learn about the nine types of tradeskill you can specialize in?")
end

function Tut3Chat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "So what next?", "Tut3Chat3")
	StartConversation(conversation, NPC, Spawn, "Well, let's see.  You've made a candelabra using the carpenter skills, and learned that carpenters make items that can be placed in houses.  Carpenters also make strong boxes for storage, and sales containers for selling items to others.  You've also made a bracelet: jewelers make jewelry like this, and they also make combat art upgrades for scout types.  ")
end

function Tut3Chat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be right back with that cider!", "OfferTutorialCook")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Now why don't you try your hand at provisioning, and make some jum jum cider?  Food and drink help an adventurer's power and health to regenerate faster between battles, so a provisioner's goods are always in demand.  You'll need some harvested jum jum, and some liquid, which the fuel merchant will sell (aerated mineral water works just fine, and adds that extra fizz).  ")
end

function Tut4Chat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1060.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll do my best.", "OfferTutorialWeapons")
	AddConversationOption(conversation, "I'll think about it.")
	StartConversation(conversation, NPC, Spawn, "Next we'll look at weapons.  These can be made by both weaponsmiths and woodworkers.  Weaponsmiths are masters of metallic weaponry including swords, axes, daggers, and hammers.  Woodworkers are skilled at working with wood, creating wooden weapons such as staffs, batons, and cudgels, as well as bows and arrows and wooden bucklers and round shields for the defense of their allies.  They also craft powerful totems that possess restorative properties.  Practice both crafts by making a tin hand axe, and an elm greatstaff.")
end

function Tut5Chat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1060.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll start now.", "OfferTutorialScrolls")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Sages possess an unsurpassed knowledge of the arcane.  They apply this knowledge by scribing spells onto scrolls that increase the might of healers and mages.  Create a Scroll of Shackle and bring it to me.")
end

function Tut6Chat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1060.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "On my way.", "OfferTutorialExperiments")
	AddConversationOption(conversation, "Another time perhaps.")
	StartConversation(conversation, NPC, Spawn, "Excellent work.  Now let's look at alchemists; they create deadly poisons and magic potions from almost any material, benign or otherwise.  These concoctions provide benefits in battle, such as healing, resistance, or extra damage against a foe.  Alchemists also make combat art upgrades for fighter types to improve their abilities in battle.  Make me an Essence of Intercept to practice these skills.")
end

function Tut7Chat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1060.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Coat and a backpack coming up.", "OfferTutorialOutfitting")
	AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Now let's look at tailors and armorers.  Armorers focus on heavy plate and chain armor, while tailors specialize in the creation of lighter cloth and leather armor.  Tailors also make backpacks and other items from cloth or leather.  Show me that you can create a tin chainmail coat, and a rawhide backpack.")
end

function FinishedChat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial062.mp3", "", "", 2242637020, 2504678008, Spawn)
	AddConversationOption(conversation, "Thank you.")
	AddConversationOption(conversation, "Let me just ask you a couple more questions...", "FinishedChat2")
	StartConversation(conversation, NPC, Spawn, "Excellent work!  I hope you now have an idea of what each tradeskill class does, and how to do it.  At level 9 you'll need to decide which crafting path you will follow, by speaking to the Crafting Trainer near your local tradeskill area.  The Crafting Trainer also sells your recipe books, so be sure to pick those up!  Come back to me at any time and I'll be happy to give you refreshers on this information.  Should you choose to continue a career as a crafter, I wish you the best of fortune!")
end

function FinishedChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1060.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I have some questions about some of the stuff we already covered.", "RemindChat")
	AddConversationOption(conversation, "I heard something about commission crafting, what's that?", "CommissionChat1")
	AddConversationOption(conversation, "Where do I get recipe books for crafting?", "BookChat1")
	AddConversationOption(conversation, "Tell me about the different crafting classes?", "ClassChat1")
	AddConversationOption(conversation, "How do I choose what type of crafter I will be?", "TypeChat1")
	AddConversationOption(conversation, "How do I sell my stuff to other people?", "SellChat1")
	AddConversationOption(conversation, "I heard something about secondary crafts, tinkering and transmuting.  What are they?", "SecChat1")
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Would you like some more information, or some reminders of what we already talked about?")
end

function CommissionChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial035.mp3", "", "", 2388752041, 1908343081, Spawn)
	AddConversationOption(conversation, "How do I do it?", "CommissionChat2")
	StartConversation(conversation, NPC, Spawn, "The commission crafting system enables a crafter to make an item for a customer without requiring the customer to hand over any ingredients.  It can be used for almost any recipe, but is most often used for crafting rare items when the customer and crafter may not know each other and may not wish to hand over a rare on trust.")
end

function CommissionChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial036.mp3", "", "", 2552516382, 2887530961, Spawn)
	AddConversationOption(conversation, "So instead of targetting the crafting station I target the customer.", "CommissionChat3")
	StartConversation(conversation, NPC, Spawn, "To craft something for a customer using the commission system, have the customer meet you by the appropriate crafting station, bringing with him the components needed by the recipe.  Open your recipe book and select the appropriate recipe, then target the customer, and then click Create.")
end

function CommissionChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial037.mp3", "", "", 691734143, 271413200, Spawn)
	AddConversationOption(conversation, "And when he's provided everything we agree on?", "CommissionChat4")
	StartConversation(conversation, NPC, Spawn, "Correct.  When you target the customer and click Create, a new window will open.  The customer needs to provide the primary component that the recipe requires (the first one listed) in the first slot in this window.  He can provide all the other components also by putting them in this window too, or they can be in your bags, he is only required to provide the primary one.  Also in this window he can add coin for payment, or an item to trade in payment.")
end

function CommissionChat4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial038.mp3", "", "", 4067745103, 1643379768, Spawn)
	AddConversationOption(conversation, "Thank you.", "FinishedChat2")
	StartConversation(converastion, NPC, Spawn, "When you both click to accept the deal, your crafting process will begin just as it normally does.  Complete the item, and the finished product will drop directly into your customer's bags.  Any payment placed in the commission window will go into your own bags.  Easy as that.")
end

function BookChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial039.mp3", "", "", 3191451903, 1275472191, Spawn)
	AddConversationOption(conversation, "And they'll sell all my recipes?", "BookChat2")
	StartConversation(conversation, NPC, Spawn, 'Recipe books can be purchased from vendors with the "Crafting Trainer" label.  Typically these will be found near a crafting area.  In Qeynos and Freeport they are normally standing just outside the tradeskill instances.  In other cities they should be near the crafting stations.')
end

function BookChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial040.mp3", "", "", 2091121926, 301972007, Spawn)
	AddConversationOption(conversation, "That's it? " .. '"Essentials" books from the Crafting Trainer and "Advanced" books found out adventuring?', "BookChat3")
	StartConversation(conversation, NPC, Spawn, 'They will sell your "essentials" books.  These contain the basic recipes you need for making handcrafted items.  "Advanced" books containing recipes for mastercrafted items (using rare harvests) are found by adventurers after level 9, and you' .. "'ll need to trade with your fellow adventurers, or check the broker, or go out hunting to find these.")
end

function BookChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial041.mp3", "", "", 1044382648, 4108876671, Spawn)
	AddConversationOption(conversation, "Thank you.", "FinishedChat2")
	StartConversation(conversation, NPC, Spawn, 'Almost.  There are occasionally other recipes that can be obtained in other ways, such as by adventuring or questing in certain areas.  The majority of your recipes are covered by the "essentials" and "advanced" books however.')
end

function ClassChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial042.mp3", "", "", 1622424773, 1570512432, Spawn)
	AddConversationOption(conversation, "What are craftsmen?", "ClassChat2")
	AddConversationOption(conversation, "What are outfitters?", "ClassChat3")
	AddConversationOption(conversation, "What are scholars?", "ClassChat4")
	AddConversationOption(conversation, "I was wondering about something else.", "FinishedChat2")
	StartConversation(conversation, NPC, Spawn, "There are nine primary tradeskill classes, plus two secondary crafts.  I'll focus on the primary nine right now.  These are divided into three archetypes:  craftsman, outfitter, and scholar.")
end

function ClassChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial043.mp3", "", "", 4227555374, 506326062, Spawn)
	AddConversationOption(conversation, "I see.", "ClassChat1")
	StartConversation(conversation, NPC, Spawn, "The three classes of craftsmen are:  carpenter, provisioner, and woodworker  Carpenters make furniture for decorating your home, strong boxes for bank storage, altars, and sales containers for use on the broker.  Provisioners make food and drink to keep adventurers fighting in top form.  And woodworkers make wooden weapons and shields, bows and arrows, magical totems, and harvesting tools.")
end

function ClassChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial044.mp3", "", "", 2305144148, 2262225750, Spawn)
	AddConversationOption(conversation, "I see.", "ClassChat1")
	StartConversation(conversation, NPC, Spawn, "Outfitters are armorers, tailors, and weaponsmiths.  Armorers specialize in plate and chainmail armor, and metal shields.  Tailors make cloth and leather armor, fancy dress clothing, hex dolls, backpacks, and containers for thrown ammo.  Weaponsmiths specialize in metal weapons of all types.")
end

function ClassChat4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial045.mp3", "", "", 147861749, 3375095704, Spawn)
	AddConversationOption(conversation, "I see.", "ClassChat1")
	StartConversation(conversation, NPC, Spawn, "Scholars are alchemists, jewelers, and sages.  Alchemists specialize in potions and poisons, and also make combat art upgrades for fighter types.  Jewelers make items of jewelry, and also combat art upgrades for scout types.  And sages make spell upgrades for mages and healers.")
end

function TypeChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial046.mp3", "", "", 152150944, 1842039471, Spawn)
	AddConversationOption(conversation, "Then what?", "TypeChat2")
	StartConversation(conversation, NPC, Spawn, "When you reach level 9, you will need to decide which of the three main archetypes you will become:  craftsman, outfitter, or scholar.  When you have decided, speak to the Crafting Trainer near your local tradeskill area to register for that line of work.  Typically these will be found near a crafting area.  In Qeynos and Freeport they are normally standing just outside the tradeskill instances.  In other cities they should be near the crafting stations.")
end

function TypeChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial047.mp3", "", "", 2169201999, 3543807969, Spawn)
	AddConversationOption(conversation, "What if I change my mind?", "TypeChat3")
	StartConversation(conversation, NPC, Spawn, "That's all you have to do to choose your archetype.  Later, at level 19, you will need to choose your final profession.  Simply return to the same crafting trainer to select.")
end

function TypeChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial048.mp3", "", "", 2654967587, 4062785753, Spawn)
	AddConversationOption(conversation, "Thank you.", "FinishedChat2")
	StartConversation(conversation, NPC, Spawn, "There are a number of tradeskill career counsellors who can assist you in changing your crafting profession if you wish to do so.  This will reset your crafting level to 9 and remove any recipes you can no longer use.")
end

function SellChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial049.mp3", "", "", 2757229171, 476797749, Spawn)
	AddConversationOption(conversation, "What are the specialized containers for?", "SellChat2")
	StartConversation(conversation, NPC, Spawn, "Many crafters build up personal relationships with customers and deal directly with interested parties.  However, you also have the option of listing your goods for sale on the broker.  Brokers are located in all major cities, just ask a guard if you need help finding one.  You can use any container such as a box or backpack to sell items from, or carpenters can make specialized sales containers from level 20 upward.")
end

function SellChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial050.mp3", "", "", 3628788902, 1698576976, Spawn)
	AddConversationOption(conversation, "How do I get my money?", "SellChat3")
	StartConversation(conversation, NPC, Spawn, "Specialized sales containers can only be used on the broker, nowhere else.  They are much larger than normal boxes or bags, and an image of these containers can be placed in your house so that customers can visit in person to buy from you, rather than purchasing through the broker.  The broker charges a markup fee. so allowing your customers to buy directly and bypass this fee is generally good for business, once you start selling pricier items.  These specialized containers require a rare wood to make; your local carpenter can give you more details.")
end

function SellChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial051.mp3", "", "", 2662949569, 2327521387, Spawn)
	AddConversationOption(conversation, "Thank you.", "FinishedChat2")
	StartConversation(conversation, NPC, Spawn, 'Place the items to sell in a container on the "sell" tab of the broker and set the prices you wish to sell them for.  If they sell, you will be able to collect the coin from the same container that the item was in.The broker will continue to sell your goods for you, for the next couple of days even if you are not around at the time.')
end

function SecChat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial052.mp3", "", "", 3509946126, 2374520501, Spawn)
	AddConversationOption(conversation, "What's tinkering?", "SecChat2")
	AddConversationOption(conversation, "What's adorning?", "SecChat3")
	AddConversationOption(conversation, "How do I learn to be a tinkerer or adorner?", "SecChat4")
	AddConversationOption(conversation, "I was wondering about something else.", "FinishedChat2")
	StartConversation(conversation, NPC, Spawn, "In addition to the nine primary tradeskills there are two secondary skills that can be learned.  These are tinkering, and adorning.  They can be learned by either adventurers or crafters, but your level in tinkering or adorning can never be higher than your primary tradeskill or your adventure level, whichever is higher.")
end

function SecChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial053.mp3", "", "", 2218048793, 640438305, Spawn)
	AddConversationOption(conversation, "I see.", "SecChat1")
	StartConversation(conversation, NPC, Spawn, "Tinkering is the process created by gnomes many centuries ago.  It is the art of making mechanical gadgets and gizmos to make life a little easier. You can create devices that will enhance your own abilities in combat; most of these can only be safely operated by yourself and other tinkers, however, as the mechanisms are far too complex for non-tinkerers to understand.  Since many tinkered items are adventuring-related, it can be a useful secondary craft to augment an adventurer's abilities.")
end

function SecChat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial054.mp3", "", "", 2713361023, 2617196209, Spawn)
	AddConversationOption(conversation, "I see.", "SecChat1")
	StartConversation(conversation, NPC, Spawn, "Adorning is the art of making Adornments: items that can be applied to your equipment to permanently enhance the equipment's stats.  To make these, you will need components created by breaking down unused items into raw components using the Transmuting skill.  Everybody has the Transmuting skill, but only those who have studied as adorners can make adornments.")
end

function SecChat4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial055.mp3", "", "", 1159059080, 4034407978, Spawn)
	AddConversationOption(conversation, "I see.", "SecChat1")
	StartConversation(conversation, NPC, Spawn, "You can only learn tinkering and adorning in Faydwer, where the skills originate.  You will find trainers at the docks in Butcherblock Mountains, as well as in Kelethin.  You can be both a tinkerer and an adorner if you wish.  Everybody already has the transmuting skill which is used to make components that adorners use, and you can learn to use this even if you choose not to be an adorner.")
end

function RemindChat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial063.mp3", "", "", 979701411, 1286564366, Spawn)
	AddConversationOption(conversation, "Tell me again where I can find harvests to craft with?", "HarvestChat")
	AddConversationOption(conversation, "Tell me again about my tradeskill reaction arts and how to use them?", "ReactionChat")
	AddConversationOption(conversation, "Tell me again about the recipe window?", "WindowChat")
	AddConversationOption(conversation, "Tell me again about the crafting (or process) window, where the crafting itself takes place?", "CraftChat")
	AddConversationOption(conversation, 'Tell me again what happens during a "round" of crafting, and when?', "RoundChat")
	AddConversationOption(conversation, "Thanks for the reminders.", "FinishedChat2")
	StartConversation(conversation, NPC, Spawn, "What would you like to review?")
end

function HarvestChat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial032.mp3", "", "", 1760845253, 634861670, Spawn)
	AddConversationOption(conversation, "Thanks.", "RemindChat")
	StartConversation(conversation, NPC, Spawn, "Harvesting resources tend to be segregated by areas - for example, you'll find harvests for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.")
end

function ReactionChat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial055.mp3", "", "", 1159059080, 4034407978, Spawn)
	AddConversationOption(conversation, "And how do they work?", "ReactionChat2")
	StartConversation(conversation, NPC, Spawn, "You can only learn tinkering and adorning in Faydwer, where the skills originate.  You will find trainers at the docks in Butcherblock Mountains, as well as in Kelethin.  You can be both a tinkerer and an adorner if you wish.  Everybody already has the transmuting skill which is used to make components that adorners use, and you can learn to use this even if you choose not to be an adorner.")
end

function ReactionChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thank you.", "RemindChat")
	StartConversation(conversation, NPC, Spawn, "For any recipe, you will have six tradeskill arts that you can use if you want.  If you mouse-over or examine the arts in your book, you should see what each of them do.  Three will add progress, and three will add durability.  There is also a cost associated with each.  When you open up the crafting window, the correct skills you need will automatically appear at the bottom.  Or, if you prefer, you can drag the ones you want onto a custom hotbar.  Either way, when you're crafting you can click on these arts to add progress or durability to the item you are creating.")
end

function WindowChat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Ok, I see the recipe list, what's next?", "WindowChat2")
	StartConversation(conversation, NPC, Spawn, "The first step in crafting anything is the recipe.  The recipe you select determines what you will create.  Open your recipe book from the main menu, or press N, to see yours.  If you're new to crafting it will be empty, but as you gain more recipes they will be listed here and you can use the Search box at the top of this window to easily find recipe names.  You can also create custom filters using the Edit button.")
end

function WindowChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial031.mp3", "", "", 298839722, 3210850444, Spawn)
	AddConversationOption(conversation, "Thank you.", "RemindChat")
	StartConversation(conversation, NPC, Spawn, "In the recipe list you would select the name of the recipe you wish to use, and then click Create.  You will need to be at a crafting station of the appropriate type.  Once you click Create, you will move to the Resource Window which shows you the list of ingredients that recipe requires.  If you have all those, you click Begin and crafting starts.")
end

function CraftChat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "And what then?", "CraftChat2")
	StartConversation(conversation, NPC, Spawn, "While you craft an item, pay attention to the four blue and green horizontal bars in the middle area.  This shows you your progress (blue), and the durability (green) of the item you are creating.  The reaction arts you'll need are found at the bottom of this window.")
end

function CraftChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thank you.", "RemindChat")
	StartConversation(conversation, NPC, Spawn, "The goal is to increase your progress without losing too much durability.  To create the item, you need to fill all four blue progress bars.  If you lose too much durability (green), you will not be able to do this.  Use your reaction arts to add durability if you lose too much.  If you have plenty of durability, you can use your arts to add progress so you get a finished product faster.")
end

function RoundChat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial033.mp3", "", "", 3851565796, 3556907959, Spawn)
	AddConversationOption(conversation, "Okay, let's assume I do that, or there was no warning ... then what?", "RoundChat2")
	StartConversation(conversation, NPC, Spawn, 'A "crafting round" lasts for 4 seconds.  At the start of the 4 seconds, there is a chance that a warning icon will appear in your crafting window.  If this happens, you have the remainder of the round to counter it: the first reaction art you use must match the icon of the warning.')
end

function RoundChat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial034.mp3", "", "", 1493508972, 307622314, Spawn)
	AddConversationOption(conversation, "Thank you.", "RemindChat")
	StartConversation(conversation, NPC, Spawn, "You then have the remainder of the round to use any other reaction arts you wish to... or do nothing if you prefer.  At the end of the round, your total progress and durability gain/loss will be adjusted, and you will see the appropriate numbers floating up from the crafting station.")
end

function LastStepHarvestTutorial(Spawn)
    --Return if all 7 steps before the final step are completed
	if HasQuest(Spawn, HarvestTutorial) then
		return (QuestStepIsComplete(Spawn, HarvestTutorial, 1) and QuestStepIsComplete(Spawn, HarvestTutorial, 2) and QuestStepIsComplete(Spawn, HarvestTutorial, 3) and QuestStepIsComplete(Spawn, HarvestTutorial, 4) and QuestStepIsComplete(Spawn, HarvestTutorial, 5) and QuestStepIsComplete(Spawn, HarvestTutorial, 6) and QuestStepIsComplete(Spawn, HarvestTutorial, 7))
	else
		return false
	end
end

function OfferHarvestTutorial(NPC, Spawn)
	OfferQuest(NPC, Spawn, HarvestTutorial)
end

function OfferForgingAhead(NPC, Spawn)
	OfferQuest(NPC, Spawn, ForgingAhead)
end

function OfferCounteringProblems(NPC, Spawn)
	OfferQuest(NPC, Spawn, CounteringProblems)
end

function OfferTutorialCook(NPC, Spawn)
	OfferQuest(NPC, Spawn, TutorialCook)
end

function OfferTutorialWeapons(NPC, Spawn)
	OfferQuest(NPC, Spawn, TutorialWeapons)
end

function OfferTutorialScrolls(NPC, Spawn)
	OfferQuest(NPC, Spawn, TutorialScrolls)
end

function OfferTutorialExperiments(NPC, Spawn)
	OfferQuest(NPC, Spawn, TutorialExperiments)
end

function OfferTutorialOutfitting(NPC, Spawn)
	OfferQuest(NPC, Spawn, TutorialOutfitting)
end