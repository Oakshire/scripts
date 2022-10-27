--[[
    Script Name    : SpawnScripts/WestFreeport/VissaDDbth.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:22
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog8(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "I am very busy right now.  I have no time to carry on in meaningless conversations.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Take your time, there's no rush!", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There are a number of different crafting stations that can be used to make different items.  For example, you would use a forge to make metal armor, and a chemistry table to make potions.  The other crafting stations are:  the sewing table, the woodworking bench, the sage's engraved desk, the stove & keg, and the jeweler's workbench.")
	Dialog.AddOption("And what skills will I need?", "Dialog4")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All right, let's learn about the crafting process itself.  You'll need to have some harvested elm, tin, and roots in your bags.  Shall I tell you a bit more about the crafting stations and your tradeskill arts, or do you want to just get going?")
	Dialog.AddOption("Elm, tin, roots ... check.  And I'd like to learn more before I start, yes.", "Dialog1")
	Dialog.AddOption("No thanks, spare me the details, just tell me where to go.")
	Dialog.AddOption("Actually ... I'll be right back!")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The first step in crafting anything is the recipe.  The recipe you select determines what you will create.  Open your recipe book from the main menu, or press N, to see yours.  If you're new to crafting it will be empty, but as you gain more recipes they will be listed here and you can use the Search box at the top of this window to easily find recipe names.  You can also create custom filters using the Edit button.  ")
	Dialog.AddVoiceover("bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial022.mp3", 1284323756, 2111105998)
	Dialog.AddOption("Once I find the recipe I want to make, what then?", "Dialog7")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You will find your tradeskill arts in your knowledge book (press K, under tradeskills).  You may want to sort these by category, using the sort button at the top right.  You will have 6 tradeskill arts for each of the 9 tradeskill professions, and also a couple of special arts that are used for recipes not related directly to one tradeskill specialty.")
	Dialog.AddVoiceover("bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial011.mp3", 1844695369, 4279963855)
	Dialog.AddOption("This looks a bit complicated ...", "Dialog6")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.  I'd like you to get a few harvests from each type of harvestable item.")
	Dialog.AddOption("I'll get right on it.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It's not really all that complicated once you get the hang of it!  Just remember that for any recipe, you will have six tradeskill arts that you can use if you want.  If you mouse-over or examine the arts in your book, you should see what each of them do.  Three will add progress, and three will add durability.  When you open up the crafting window, the correct skills you need will automatically appear at the bottom.  Or, if you prefer, you can drag the ones you want onto a custom hotbar.  Either way, when you're crafting you will want to be sure you know which ones add progress and which ones add durability.")
	Dialog.AddOption("So what happens next?", "Dialog3")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("In this window you would select the name of the recipe you wish to use and then click Create.  You will need to be near a crafting station of the appropriate type.  If you click on the crafting station directly, your recipe book will automatically filter to show you only the recipes you can make on that station.  Once you click Create, you will move to the Resource Window which shows you the list of ingredients that recipe requires.  If you have all those, you click Begin and crafting starts.")
	Dialog.AddOption("I think I'm ready to give it a try.", "Dialog11")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1001.mp3", 0, 0)
	Dialog.AddOption("Yes please, I don't know much about that stuff.", "Dialog13")
	Dialog.AddOption("Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.")
	Dialog.AddOption("No thanks, I have other things to do right now.")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", 0, 0)
	Dialog.AddOption("Yes please, I don't know much about that stuff.", "Dialog5")
	Dialog.AddOption("Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.", "Dialog13")
	Dialog.AddOption("No thanks, I have other things to do right now.")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Of course, it'll be easier to understand once you can see it in action.  Here's a recipe book, and some fuel.  Scribe the recipe book by finding it in your inventory and right-clicking it.  Check that you have some elm, tin, and roots in your bags, and head over to the forge.  Click on the forge to bring up your recipe list, and select the recipe for the simple candelabra.")
	Dialog.AddOption("Thanks.  Here I go.")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'd like you to make a candelabra for practice. While you craft it, I'd like you to pay attention to the blue and green bars in the middle area.  This shows you your progress (blue), and the durability (green) of the item you are creating.  The goal is to increase your progress without losing too much durability.  To create the item, you need to fill all four blue progress bars.  If you lose at least one full bar of durability, you will not be able to do this unless you can regain that durability again.   It is safest to keep your durability near maximum just in case of unexpected critical failures.")
	Dialog.AddVoiceover("bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial024.mp3", 4153701642, 579729456)
	Dialog.AddOption("How do I stop losing durability then?", "Dialog12")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's where the reaction arts I mentioned come in.  You can use these to add progress (blue) or durability (green). Mouse click these or press 1 through 6 on your keyboard.  You can use these skills proactively throughout crafting to influence the outcome - for example, use skills that add durability if your durability is dropping.  Every 4 seconds a crafting 'round' completes and you will see numbers indicating your overall progress and durability loss or gain for that round above the crafting station.  This is generally easier to see in third-person view (use your mouse wheel to scroll out).")
	Dialog.AddVoiceover("bob_the_crafting_instructor/tradeskill/tutorial/tradeskill_tutorial025.mp3", 3997673614, 576853953)
	Dialog.AddOption("It might be easier if I just try it out, can I give it a try now?", "Dialog10")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Would you like to learn about harvesting, or skip straight to the crafting process?  ")
	Dialog.AddOption("Let's start from the beginning with the harvesting.", "Dialog5")
	Dialog.AddOption("I've already done some harvesting, tell me what I can do with it all.", "Dialog2")
	Dialog.AddOption("Whoops, look at the time, got to go.")
	Dialog.Start()
end

