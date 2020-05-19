--[[
    Script Name    : SpawnScripts/Nektropos1/CaptainGavinBook.lua
    Script Author  : smash
    Script Date    : 2016.09.11 12:09:11
    Script Purpose : 
                   : 
--]]

function casted_on(NPC, Spawn, Message)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Read the book.", "ReadBook1")
	AddConversationOption(conversation, "Leave the book alone.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "As you pick up the book several pages fall out and crumble to dust. You flip through the book, but very few pages are legible.")
end

function ReadBook1(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Turn the page carefully.", "ReadBook2")
	AddConversationOption(conversation, "Flip through the book.", "FinishReading")
	StartDialogConversation(conversation, 1, NPC, Spawn, "Droplets of water appear to mar what little writing is left on this page.....beloved sons Ollix and Maltus have passed beyond my grasp. For all my wealth I could not save them from.....")
end

function ReadBook2(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Keep reading.", "ReadBook3")
	AddConversationOption(conversation, "Stop reading.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "3145 Firstchill..........with the death of our sons, Alana's heart was broken. I buried her this morning..........")
end

function ReadBook3(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Turn the page.", "ReadBook4")
	AddConversationOption(conversation, "Stop reading.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "...entry 3151 Busheldown, Burnday the 15th, I have sent my daughters guardians away at my daughters requests. I did not want to do this, but I love my daughters too much to deny their....")
end

function ReadBook4(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Continue reading.", "ReadBook5")
	AddConversationOption(conversation, "Stop reading.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "...entry 3174 Lastleaf, Feastday the 27th, .......guardians to watch over my daughters they have become more reckless, especially Elise. Twice now we have caught her out walking the ramparts............")
end

function ReadBook5(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Keep reading.", "ReadBook6")
	AddConversationOption(conversation, "Stop reading.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "...I was forced to watch the horror.....my own children....before my eyes......I live now only to avenge them........")
end

function ReadBook6(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "The last few pages are all but illegible.", "FinishReading")
	StartDialogConversation(conversation, 1, NPC, Spawn, "3397....fathers work shall not go unfinished....descendants of the guardians.......")
end

function FinishReading(NPC, Spawn)
	CloseConversation(NPC, Spawn)
	SendMessage(Spawn, "The pages of the book deteriorate into dust.")
	if GetTempVariable(NPC, "CaptainSpawned") ~= "true" then
		SpawnByLocationID(GetZone(NPC), 616620)
		SetTempVariable(NPC, "CaptainSpawned", "true")
	end
end