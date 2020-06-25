--[[
	Script Name	: ItemScripts/PrankPreparednessKit.lua
	Script Purpose	: Prank Preparedness Kit
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

-- Quest ID's
local HELPING_SOME_FRIENDS = 325 -- was 72

function examined(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Read instructions.", "ReadInstructions")
	StartDialogConversation(conversation, 2, Item, Player, "Inside the Prank Preparedness Kit there are a couple of pies, a note written and signed by Remmy Tumbum, and some instructions from Rondo Roundstew.")
end

function ReadInstructions(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Read the next page.", "NextPage")
	StartDialogConversation(conversation, 2, Item, Player, "Greetings Pranked Preparedness Kit user. If you are reading this you have no doubt offered to help me in one of my amazing prank endeavors. Let me first give you my appreciation for helping me in such an effort. As you no doubt know I am a prankster of some infamy. Because of this, I am unable to perform pranks myself, as anyone I talk to suspects I'm pulling a prank on them (except you, and thank goodness for that).\nThe following pages have your targets and your instructions. The kit itself should hold all its materials.")
end

function NextPage(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Read about the next target.", "NextTarget")
	StartDialogConversation(conversation, 2, Item, Player, "Target: Drundo Parn\n\nSuspected Locations: Tavern\n\nReason for Prank: Drundo stole my pint! He stole my pint and replaced it with some other brew that turned my lips purple for a WEEK! He's a good trickster, he is. I've learned that he's horrible allergic to nuts, however!\n\nPrank: A non-spiced walnut pie could easily be injected with cream and topped with berry frosting and thus disguised. Drundo won't know what hit him, his face will be fatter than a lush's gut on payday!")
end

function NextTarget(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Read about the next target.", "NextTarget2")
	StartDialogConversation(conversation, 2, Item, Player, "Target: Jayla Midhop\n\nSuspected Location: Outside Armorer's Shop\n\nReason for Prank: Tricked me out of twenty silver pieces by using her charm on me! She may have beaten my wit face to face, but when backs are turned I'm betting she won't expect my comback!\n\nPrank: Jayla Midhop - I know she has a thing for Remmy Tumbum. I also know she has a thing for Marybelle's Meadowberry Pie. I ALSO know she does not welcome the advances of Bolo Brassharp. With a little help from Remmy--I know he'd be willing to write a fake note for me--I can set her up for a very uncomfortable situation.")
end

function NextTarget2(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Read the last page.", "LastPage")
	StartDialogConversation(conversation, 2, Item, Player, "Target: Bolo Brassharp\n\nSuspected Location: Outside the Inn\n\nReason for Prank: This guy doesn't know how little everyone thinks of him. A prank won't change his opinion of himself, but if I'm lucky he'll want revenge and he'll be a fellow prankster for a time to come. At the very least everyone will get to laugh at him, which he most certainly deserves.\n\nPrank: Bolo Brassharp - I won't need to trick him into seeing Jayla. But her rejection alone isn't enough. Being rejected after both have had their fill of a Busselberry Bloat Pie will be MOST uncomfortable, however. Properly disguised, the bloat pie will loook just like a meadowberry pie.")
end

function LastPage(Item, Player)
	if HasQuest(Player, HELPING_SOME_FRIENDS) and GetQuestStep(Player, HELPING_SOME_FRIENDS) == 1 then
		SetStepComplete(Player, HELPING_SOME_FRIENDS, 1)
	end
	
	conversation = CreateConversation()
	AddConversationOption(conversation, "Put the Prank Preparedness Kit away.", "CloseItemConversation")
	StartDialogConversation(conversation, 2, Item, Player, "So there are the targets. Remember, do not let them suspect anything, and do not mention my name!\nGood luck,\nThe Prankster - R.R.")
end