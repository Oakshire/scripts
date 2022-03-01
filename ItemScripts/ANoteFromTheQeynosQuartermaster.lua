--[[
	Script Name	: ItemScripts/ANoteFromTheQeynosQuartermaster.lua
	Script Purpose	: A Note from the Qeynos Quartermaster - Adventures in Antonica
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local QUEST_1_ANTONICA = 498

function examined(Item, Player)
	if not HasQuest(Player, QUEST_1_ANTONICA) and not HasCompletedQuest(Player, QUEST_1_ANTONICA) then
		OfferQuest(nil, Player, QUEST_1_ANTONICA)
	end
	conversation = CreateConversation()
	AddConversationOption(conversation, "continue.", "Continue")
	AddConversationOption(conversation, "Put note away.")
	StartDialogConversation(conversation, 2, Item, Player, "Greetings,\n\nThe city of Qeynos congratulates you on your recent accomplishments! Though certain amenties are provided to you now that you are a citizen of Qeynos, you may want to educate yourself on the everyday tasks that can provide you a path to other adventures. There are those you will find in Antonica that are loyal to Qeynos and will provide assistance with other things like food and drink if you require sustenance on your adventures.")
end

function Continue(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "continue.", "Continue2")
	AddConversationOption(conversation, "Put note away.")
	StartDialogConversation(conversation, 2, Item, Player, "Masty Rollingpin is a retired cook for the Qeynos Guard and now assists weary travelers on the road with good, wholesome food. She usually only requires some chores around Sayer's Outfitters, which you can find on the road east of our good city. Her Coldwind chowder is known throughout the land and is a favorite of the Qeynos Guard.")
end

function Continue2(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Put note away.")
	StartDialogConversation(conversation, 2, Item, Player, "Haddek Vimki has been providing refreshments for travelers at Sayer's Outfitters for many years now and is always willing to lend a hand. His beer and spirits are legendary. Hopefully you will find this information useful on your path to adventure. Once again, congratulations, and good luck!\n~The Quartermaster")
end