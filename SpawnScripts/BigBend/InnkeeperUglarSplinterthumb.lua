--[[
	Script Name		: SpawnScripts/BigBend/InnkeeperUglarSplinterthumb.lua
	Script Purpose	: Innkeeper Uglar Splinterthumb
	Script Author	: torsten
	Script Date		: 2022.07.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog7(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
	Dialog.AddVoiceover("innkeeper_uglar_splinterthumb/fprt_hood01/innkeeper007.mp3", 165358524, 606709445)
	Dialog.AddOption("Anything else?")
	Dialog.AddOption("How can I place an item in my house?")
	Dialog.AddOption("What kind of housing is available to me?")
	Dialog.AddOption("What is the marketboard for?", "Dialog6")
	Dialog.AddOption("Thatâ€™s enough for now, thanks.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello XXXXXXXXXXX, I am the Innkeeper for this district. We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
	Dialog.AddVoiceover("innkeeper_uglar_splinterthumb/fprt_hood01/innkeeper010.mp3", 509145626, 3189630299)
	Dialog.AddOption("Yes.", "Dialog7")
	Dialog.AddOption("No, thanks.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Many different kinds of housing are available in the city of Freeport.  In reward for your services, the Overlord has awarded you a one bedroom house for free at this time.")
	Dialog.AddVoiceover("innkeeper_uglar_splinterthumb/fprt_hood01/innkeeper003.mp3", 3914812209, 3311263507)
	Dialog.AddOption("Is any other housing available?", "Dialog5")
	Dialog.AddOption("How can I place an item in my house?", "Dialog4")
	Dialog.AddOption("What is the marketboard for?")
	Dialog.AddOption("What is my house for?")
	Dialog.AddOption("That's enough for now, thanks.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the â€˜placeâ€™ option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
	Dialog.AddVoiceover("innkeeper_uglar_splinterthumb/fprt_hood01/innkeeper002.mp3", 69025377, 62732733)
	Dialog.AddOption("What kind of housing is available to me?", "Dialog3")
	Dialog.AddOption("What is the marketboard for?")
	Dialog.AddOption("What is my house for?")
	Dialog.AddOption("That's enough for now, thanks.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, the grand city of Freeport has houses ranging from the basic one bedroom model on up to 5 bedroom apartments, although the most ostentatious of these are only available to the most prestigious citizens of the city.")
	Dialog.AddVoiceover("innkeeper_uglar_splinterthumb/fprt_hood01/innkeeper004.mp3", 6221364, 3117243418)
	Dialog.AddOption("How can I place an item in my house?")
	Dialog.AddOption("What is the marketboard for?")
	Dialog.AddOption("What is my house for?")
	Dialog.AddOption("Thatâ€™s enough for now, thanks.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The marketboard is a house item, similar to books, beds, pets and other such items.  What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Freeport.  These items can be purchased by your fellow citizens at a Broker.  Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
	Dialog.AddVoiceover("innkeeper_uglar_splinterthumb/fprt_hood01/innkeeper005.mp3", 1914262799, 3417655076)
	Dialog.AddOption("How do I sell items using my marketboard?")
	Dialog.AddOption("How can I place an item in my house?")
	Dialog.AddOption("What kind of housing is available to me?", "Dialog3")
	Dialog.AddOption("What is my house for?")
	Dialog.AddOption("Thatâ€™s enough for now, thanks.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What would you like to know?")
	Dialog.AddVoiceover("innkeeper_uglar_splinterthumb/fprt_hood01/innkeeper001.mp3", 1390147787, 2337688028)
	Dialog.AddOption("How can I place an item in my house?")
	Dialog.AddOption("What kind of housing is available to me?")
	Dialog.AddOption("What is the marketboard for?")
	Dialog.AddOption("What is my house for?", "Dialog1")
	Dialog.AddOption("Nothing right now.")
	Dialog.Start()
end

