-- Blackjack script
--[[
Phil NPCID: 2490681
Script Name: SpawnScripts/Generic/Blackjack.lua
Script Purpose: a Blackjack game with bets, payouts, and real shuffling
Script Author: Patrikpatrik
Script Date: August 22 2016
Script Notes: 8th revision on Live the symbols aren't showing up so replaced with letters 
--]]

--52 cards in a deck
local cardtable = {
'As', '2s', '3s','4s','5s','6s','7s',
'8s','9s','10s','Js','Qs','Ks',
'Ah', '2h', '3h','4h','5h','6h','7h',
'8h','9h','10h','Jh','Qh','Kh',
'Ac', '2c', '3c','4c','5c','6c','7c',
'8c','9c','10c','Jc','Qc','Kc',
'Ad', '2d', '3d','4d','5d','6d','7d',
'8d','9d','10d','Jd','Qd','Kd',
}
--This shuffles the deck of cards randomly each pass
function shuffle(NPC, Spawn)
	new = {}
	for i=1, #cardtable do
		table.insert(new, math.random(i), cardtable[i])
	end
end
--Assign values to firstcard
function CardValues1(NPC, Spawn)
	if firstcard == 'As' or firstcard == 'Ah' or firstcard == 'Ac' or firstcard == 'Ad' then
		first = 1
		myace = 10
	elseif firstcard == '2s' or firstcard == '2h' or firstcard == '2c' or firstcard == '2d' then
		first = 2
	elseif firstcard == '3s' or firstcard == '3h' or firstcard == '3c' or firstcard == '3d' then
		first = 3
	elseif firstcard == '4s' or firstcard == '4h' or firstcard == '4c' or firstcard == '4d' then
		first = 4
	elseif firstcard == '5s' or firstcard == '5h' or firstcard == '5c' or firstcard == '5d' then
		first = 5
	elseif firstcard == '6s' or firstcard == '6h' or firstcard == '6c' or firstcard == '6d' then
		first = 6
	elseif firstcard == '7s' or firstcard == '7h' or firstcard == '7c' or firstcard == '7d' then
		first = 7
	elseif firstcard == '8s' or firstcard == '8h' or firstcard == '8c' or firstcard == '8d' then
		first = 8
	elseif firstcard == '9s' or firstcard == '9h' or firstcard == '9c' or firstcard == '9d' then
		first = 9
	elseif firstcard == '10s' or firstcard == '10h' or firstcard == '10c' or firstcard == '10d' then
		first = 10
	elseif firstcard == 'Js' or firstcard == 'Jh' or firstcard == 'Jc' or firstcard == 'Jd' then
		first = 10
	elseif firstcard == 'Qs' or firstcard == 'Qh' or firstcard == 'Qc' or firstcard == 'Qd' then
		first = 10
	elseif firstcard == 'Ks' or firstcard == 'Kh' or firstcard == 'Kc' or firstcard == 'Kd' then
		first = 10
	else
	end
end
--Assign values to secondcard
function CardValues2(NPC, Spawn)
	if secondcard == 'As' or secondcard == 'Ah' or secondcard == 'Ac' or secondcard == 'Ad' then
		second = 1
		dealerace = 10
	elseif secondcard == '2s' or secondcard == '2h' or secondcard == '2c' or secondcard == '2d' then
		second = 2
	elseif secondcard == '3s' or secondcard == '3h' or secondcard == '3c' or secondcard == '3d' then
		second = 3
	elseif secondcard == '4s' or secondcard == '4h' or secondcard == '4c' or secondcard == '4d' then
		second = 4
	elseif secondcard == '5s' or secondcard == '5h' or secondcard == '5c' or secondcard == '5d' then
		second = 5
	elseif secondcard == '6s' or secondcard == '6h' or secondcard == '6c' or secondcard == '6d' then
		second = 6
	elseif secondcard == '7s' or secondcard == '7h' or secondcard == '7c' or secondcard == '7d' then
		second = 7
	elseif secondcard == '8s' or secondcard == '8h' or secondcard == '8c' or secondcard == '8d' then
		second = 8
	elseif secondcard == '9s' or secondcard == '9h' or secondcard == '9c' or secondcard == '9d' then
		second = 9
	elseif secondcard == '10s' or secondcard == '10h' or secondcard == '10c' or secondcard == '10d' then
		second = 10
	elseif secondcard == 'Js' or secondcard == 'Jh' or secondcard == 'Jc' or secondcard == 'Jd' then
		second = 10
	elseif secondcard == 'Qs' or secondcard == 'Qh' or secondcard == 'Qc' or secondcard == 'Qd' then
		second = 10
	elseif secondcard == 'Ks' or secondcard == 'Kh' or secondcard == 'Kc' or secondcard == 'Kd' then
		second = 10
	else
	end
end
--Assign values to thirdcard
function CardValues3(NPC, Spawn)
	if thirdcard == 'As' or thirdcard == 'Ah' or thirdcard == 'Ac' or thirdcard == 'Ad' then
		third = 1
		myace = 10
	elseif thirdcard == '2s' or thirdcard == '2h' or thirdcard == '2c' or thirdcard == '2d' then
		third = 2
	elseif thirdcard == '3s' or thirdcard == '3h' or thirdcard == '3c' or thirdcard == '3d' then
		third = 3
	elseif thirdcard == '4s' or thirdcard == '4h' or thirdcard == '4c' or thirdcard == '4d' then
		third = 4
	elseif thirdcard == '5s' or thirdcard == '5h' or thirdcard == '5c' or thirdcard == '5d' then
		third = 5
	elseif thirdcard == '6s' or thirdcard == '6h' or thirdcard == '6c' or thirdcard == '6d' then
		third = 6
	elseif thirdcard == '7s' or thirdcard == '7h' or thirdcard == '7c' or thirdcard == '7d' then
		third = 7
	elseif thirdcard == '8s' or thirdcard == '8h' or thirdcard == '8c' or thirdcard == '8d' then
		third = 8
	elseif thirdcard == '9s' or thirdcard == '9h' or thirdcard == '9c' or thirdcard == '9d' then
		third = 9
	elseif thirdcard == '10s' or thirdcard == '10h' or thirdcard == '10c' or thirdcard == '10d' then
		third = 10
	elseif thirdcard == 'Js' or thirdcard == 'Jh' or thirdcard == 'Jc' or thirdcard == 'Jd' then
		third = 10
	elseif thirdcard == 'Qs' or thirdcard == 'Qh' or thirdcard == 'Qc' or thirdcard == 'Qd' then
		third = 10
	elseif thirdcard == 'Ks' or thirdcard == 'Kh' or thirdcard == 'Kc' or thirdcard == 'Kd' then
		third = 10
	else
	end
end
--Assign values to fourthcard
function CardValues4(NPC, Spawn)
	if fourthcard == 'As' or fourthcard == 'Ah' or fourthcard == 'Ac' or fourthcard == 'Ad' then
		fourth = 1
		dealerace = 10
	elseif fourthcard == '2s' or fourthcard == '2h' or fourthcard == '2c' or fourthcard == '2d' then
		fourth = 2
	elseif fourthcard == '3s' or fourthcard == '3h' or fourthcard == '3c' or fourthcard == '3d' then
		fourth = 3
	elseif fourthcard == '4s' or fourthcard == '4h' or fourthcard == '4c' or fourthcard == '4d' then
		fourth = 4
	elseif fourthcard == '5s' or fourthcard == '5h' or fourthcard == '5c' or fourthcard == '5d' then
		fourth = 5
	elseif fourthcard == '6s' or fourthcard == '6h' or fourthcard == '6c' or fourthcard == '6d' then
		fourth = 6
	elseif fourthcard == '7s' or fourthcard == '7h' or fourthcard == '7c' or fourthcard == '7d' then
		fourth = 7
	elseif fourthcard == '8s' or fourthcard == '8h' or fourthcard == '8c' or fourthcard == '8d' then
		fourth = 8
	elseif fourthcard == '9s' or fourthcard == '9h' or fourthcard == '9c' or fourthcard == '9d' then
		fourth = 9
	elseif fourthcard == '10s' or fourthcard == '10h' or fourthcard == '10c' or fourthcard == '10d' then
		fourth = 10
	elseif fourthcard == 'Js' or fourthcard == 'Jh' or fourthcard == 'Jc' or fourthcard == 'Jd' then
		fourth = 10
	elseif fourthcard == 'Qs' or fourthcard == 'Qh' or fourthcard == 'Qc' or fourthcard == 'Qd' then
		fourth = 10
	elseif fourthcard == 'Ks' or fourthcard == 'Kh' or fourthcard == 'Kc' or fourthcard == 'Kd' then
		fourth = 10
	else
	end
end
--Assign values to nextcard
function CardValues5(NPC, Spawn)
	if extracard == 'As' or extracard == 'Ah' or extracard == 'Ac' or extracard == 'Ad' then
		extra = 1
		nextace = 10
	elseif extracard == '2s' or extracard == '2h' or extracard == '2c' or extracard == '2d' then
		extra = 2
	elseif extracard == '3s' or extracard == '3h' or extracard == '3c' or extracard == '3d' then
		extra = 3
	elseif extracard == '4s' or extracard == '4h' or extracard == '4c' or extracard == '4d' then
		extra = 4
	elseif extracard == '5s' or extracard == '5h' or extracard == '5c' or extracard == '5d' then
		extra = 5
	elseif extracard == '6s' or extracard == '6h' or extracard == '6c' or extracard == '6d' then
		extra = 6
	elseif extracard == '7s' or extracard == '7h' or extracard == '7c' or extracard == '7d' then
		extra = 7
	elseif extracard == '8s' or extracard == '8h' or extracard == '8c' or extracard == '8d' then
		extra = 8
	elseif extracard == '9s' or extracard == '9h' or extracard == '9c' or extracard == '9d' then
		extra = 9
	elseif extracard == '10s' or extracard == '10h' or extracard == '10c' or extracard == '10d' then
		extra = 10
	elseif extracard == 'Js' or extracard == 'Jh' or extracard == 'Jc' or extracard == 'Jd' then
		extra = 10
	elseif extracard == 'Qs' or extracard == 'Qh' or extracard == 'Qc' or extracard == 'Qd' then
		extra = 10
	elseif extracard == 'Ks' or extracard == 'Kh' or extracard == 'Kc' or extracard == 'Kd' then
		extra = 10
	else
	end
end
--Deals the cards
function Deal(NPC, Spawn)
	shuffle(NPC, Spawn)
	shuffle(NPC, Spawn)
	
	burncard = table.remove(new, 1) --burns a card off the top
	firstcard = table.remove(new, 1) --1st card goes to player
	secondcard = table.remove(new, 1) --2nd card goes to dealer
	thirdcard = table.remove(new, 1) --3rd card goes to player
	fourthcard = table.remove(new, 1) --4th card goes to dealer
	
	CardValues1()
	CardValues2()
	CardValues3()
	CardValues4() --assigns values
	
	--peeking at what goes on at this junction
        --Say(NPC, "peeking at mychar its " .. mychar .. " and " .. mychar2)
	--Say(NPC, "In deal function firstcard is [" .. firstcard .. "] value of " .. first .. ". Secondcard is [" .. secondcard .. "] value of " .. second .. ".")
	--Say(NPC, "In deal function thirdcard is [" .. thirdcard .. "] value of " .. third .. ". Fourthcard is [" .. fourthcard .. "] value of " .. fourth .. ".")
	
end
--This function combines total, checks for aces logic, and determines if blackjack occured
function Calculates(NPC, Spawn)
	playertotal = first + third
	dealertotal = second + fourth
	if myace == 10 and dealerace == 10 and playertotal == 11 and dealertotal == 11 then
		Bothbj(NPC, Spawn)
	elseif dealerace == 10 and dealertotal == 11 then
		dealertotal = 21
		Dealerbj(NPC, Spawn)
	elseif myace == 10 and playertotal == 11 then
		playertotal = 21
		Playerbj(NPC, Spawn)
	elseif myace == 10 and dealerace == 10 then
		alt = " or "
		alt2 = " or "
		myaces = first + third + 10
		dealeraces = second + fourth + 10
		HitStand1(NPC, Spawn)
	elseif myace == 10 then
		alt = " or "
		alt2 = ""
		dealeraces = ""
		myaces = first + third + 10
		HitStand1(NPC, Spawn)
	elseif dealerace == 10 then
		alt = ""
		alt2 = " or "
		myaces = ""
		dealeraces = second + fourth + 10
		HitStand1(NPC, Spawn)
	else
		alt = ""
		alt2 = ""
		myaces = ""
		dealeraces = ""
		HitStand1(NPC, Spawn)
	end
end
--calculates the next card etc..
function CalcMore(NPC, Spawn)
	playertotal = playertotal + extra
	if myace == 10 then
		alt = " or "
		myaces = playertotal + 10
	elseif nextace == 10 then
		alt = " or "
		myaces = playertotal + 10
	else
		alt = ""
		myaces = ""
	end
end
--Text results
function Bothbj(NPC, Spawn)
	Emote(NPC, "reveals [" .. secondcard .. "][" .. fourthcard .. "]")
	Emote(Spawn, "peeks at [" .. firstcard .. "][" .. thirdcard .. "]")
	Say(NPC, "You both get blackjack, it's a push!")
	SendPopUpMessage(Spawn, "You both get blackjack, it's a push!", 255, 255, 0)
	PushLose1(NPC, Spawn)
	AddCoin(Spawn, coins)  -- Get your money back
	Dumbdoh1(NPC, Spawn)
	Clearvars()
end
function Dealerbj(NPC, Spawn)
	Emote(Spawn, "peeks at [" .. firstcard .. "][" .. thirdcard .. "] for a total of " .. playertotal .. ".")
	Emote(NPC, "reveals [" .. secondcard .. "][" .. fourthcard .. "]")
	Say(NPC, "I'm sorry but dealer hits blackjack!")
	SendPopUpMessage(Spawn, "Dealer hits blackjack! You lose" .. GetCoinMessage(coins) .. "!", 255, 0, 0)
	ApplySpellVisual(Spawn, 874)
	Sorry1(NPC, Spawn)
	Clearvars()
end
function Playerbj(NPC, Spawn)
	Emote(Spawn, "peeks at [" .. firstcard .. "][" .. thirdcard .. "]")
	Say(NPC, "Congratulations, you got blackjack!")
	Winning1(NPC, Spawn)
	PlaySound(NPC, "sounds/test/endquest.wav", GetX(NPC), GetY(NPC), GetZ(NPC)) --Ding!
	ApplySpellVisual(Spawn, 872) --Jackpot style!
	AddCoin(Spawn, coins/2*3)
	SendPopUpMessage(Spawn, "Congratulations " .. GetName(Spawn) .. " you got blackjack! You win" .. GetCoinMessage(coins/2*3) .. "!" , 0, 255, 0)
	Emote(NPC, "reveals [" .. secondcard .. "][" .. fourthcard .. "]")
	Clearvars()
end
-- Agree sounds
function Agree(NPC, Spawn)
	agree1 = math.random(3)
	if agree1 == 1 then
		--PlayFlavor(NPC, "voiceover/english/voice_emotes/agree/agree_1_1006.mp3", "", "agree", 0, 0, Spawn)
		PlaySound(NPC, "voiceover/english/voice_emotes/agree/agree_1_1006.mp3", GetX(NPC), GetY(NPC), GetZ(NPC))
	elseif agree1 == 2 then
		--PlayFlavor(NPC, "voiceover/english/voice_emotes/agree/agree_2_1006.mp3", "", "agree", 0, 0, Spawn)
		PlaySound(NPC, "voiceover/english/voice_emotes/agree/agree_2_1006.mp3", GetX(NPC), GetY(NPC), GetZ(NPC))
	elseif agree1 == 3 then
		--PlayFlavor(NPC, "voiceover/english/voice_emotes/agree/agree_3_1006.mp3", "", "agree", 0, 0, Spawn)
		PlaySound(NPC, "voiceover/english/voice_emotes/agree/agree_3_1006.mp3", GetX(NPC), GetY(NPC), GetZ(NPC))
	end
end
-- dumb doh sounds
function Dumbdoh1(NPC, Spawn)
	randpickv = math.random(3)
	if randpickv == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/doh/doh_1006.mp3", "", "doh", 0, 0, Spawn)
	elseif randpickv == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/doh/doh_1022.mp3", "", "doh", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/doh/doh_1050.mp3", "", "doh", 0, 0, Spawn)
	end
end
-- Sorry sounds
function Sorry1(NPC, Spawn)
	sorrypick = math.random(3)
	if sorrypick == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/apologies/apologies_1_1006.mp3", "", "apologize", 0, 0, Spawn)
	elseif sorrypick == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/apologies/apologies_2_1006.mp3", "", "apologize", 0, 0, Spawn)
	elseif sorrypick == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/apologies/apologies_3_1006.mp3", "", "apologize", 0, 0, Spawn)
	end
end
-- Levels of coin falling function
function CoinFalling1(NPC, Spawn)
	-- if coins == 100 then
	
	if coins == 10000 then
		--Too cheap for falling coins!
	elseif coins == 100000 then
		ApplySpellVisual(Spawn, 869)	
	elseif coins == 500000 then
		ApplySpellVisual(Spawn, 870)
	elseif coins == 10000000 then
		ApplySpellVisual(Spawn, 871)
	end
end
-- Winning emotes function
function Winning1(NPC, Spawn)
	winning = math.random(12)
	if winning == 1 then
		PlayFlavor(Spawn, "", "", "agree", 0, 0, NPC)
	elseif winning == 2 then
		PlayFlavor(Spawn, "", "", "bow", 0, 0, NPC)
	elseif winning == 3 then
		PlayFlavor(Spawn, "", "", "cackle", 0, 0, NPC)
	elseif winning == 4 then
		PlayFlavor(Spawn, "", "", "cheer", 0, 0, NPC)
	elseif winning == 5 then
		PlayFlavor(Spawn, "", "", "chuckle", 0, 0, NPC)
	elseif winning == 6 then
		PlayFlavor(Spawn, "", "", "cutthroat", 0, 0, NPC)
	elseif winning == 7 then
		PlayFlavor(Spawn, "", "", "flex", 0, 0, NPC)
	elseif winning == 8 then
		PlayFlavor(Spawn, "", "", "happy", 0, 0, NPC)
	elseif winning == 9 then
		PlayFlavor(Spawn, "", "", "heartattack", 0, 0, NPC)
	elseif winning == 10 then
		PlayFlavor(Spawn, "", "", "heelclick", 0, 0, NPC)
	elseif winning == 11 then
		PlayFlavor(Spawn, "", "", "howl", 0, 0, NPC)
	elseif winning == 12 then
		PlayFlavor(Spawn, "", "", "laugh", 0, 0, NPC)
	end
end
-- Losing /pushing emotes function
function PushLose1(NPC, Spawn)
	PushLose = math.random(11)
	if PushLose == 1 then
		PlayFlavor(Spawn, "", "", "shrug", 0, 0, NPC)
	elseif PushLose == 2 then
		PlayFlavor(Spawn, "", "", "violin", 0, 0, NPC)
	elseif PushLose == 3 then
		PlayFlavor(Spawn, "", "", "boggle", 0, 0, NPC)
	elseif PushLose == 4 then
		PlayFlavor(Spawn, "", "", "confused", 0, 0, NPC)
	elseif PushLose == 5 then
		PlayFlavor(Spawn, "", "", "cringe", 0, 0, NPC)
	elseif PushLose == 6 then
		PlayFlavor(Spawn, "", "", "doh", 0, 0, NPC)
	elseif PushLose == 7 then
		PlayFlavor(Spawn, "", "", "doubletake", 0, 0, NPC)
	elseif PushLose == 8 then
		PlayFlavor(Spawn, "", "", "hearnoevil", 0, 0, NPC)
	elseif PushLose == 9 then
		PlayFlavor(Spawn, "", "", "speaknoevil", 0, 0, NPC)
	elseif PushLose == 10 then
		PlayFlavor(Spawn, "", "", "lookaway", 0, 0, NPC)
	elseif PushLose == 11 then
		PlayFlavor(Spawn, "", "", "sigh", 0, 0, NPC)
	end
end
-- Busting emotes function
function Busting1(NPC, Spawn)
	Busting = math.random(11)
	if Busting == 1 then
		PlayFlavor(Spawn, "", "", "rude", 0, 0, NPC)
	elseif Busting == 2 then
		PlayFlavor(Spawn, "", "", "heartattack", 0, 0, NPC)
	elseif Busting == 3 then
		PlayFlavor(Spawn, "", "", "curse", 0, 0, NPC)
	elseif Busting == 4 then
		PlayFlavor(Spawn, "", "", "frustrated", 0, 0, NPC)
	elseif Busting == 5 then
		PlayFlavor(Spawn, "", "", "swear", 0, 0, NPC)
	elseif Busting == 6 then
		PlayFlavor(Spawn, "", "", "tantrum", 0, 0, NPC)
	elseif Busting == 7 then
		PlayFlavor(Spawn, "", "", "threaten", 0, 0, NPC)
	elseif Busting == 8 then
		PlayFlavor(Spawn, "", "", "brandish", 0, 0, NPC)
	elseif Busting == 9 then
		PlayFlavor(Spawn, "", "", "crazy", 0, 0, NPC)
	elseif Busting == 10 then
		PlayFlavor(Spawn, "", "", "cry", 0, 0, NPC)
	elseif Busting == 11 then
		PlayFlavor(Spawn, "", "", "sulk", 0, 0, NPC)
	end
end
--This function iterates player hit
function Hit1(NPC, Spawn)
	extracard = table.remove(new, 1)
	CardValues5()
	CalcMore(NPC, Spawn)
	
	if playertotal > 21 then
		Emote(Spawn, "receives a [" .. extracard .. "] for a total of " .. playertotal .. ".")
		Say(NPC, "I'm sorry but you bust!")
		Busting1(NPC, Spawn)
		Sorry1(NPC, Spawn)
		Emote(NPC, "reveals [" .. secondcard .. "][" .. fourthcard .. "]")
		SendPopUpMessage(Spawn, "Player busts! You lose " .. GetCoinMessage(coins) .. "!", 255, 0, 0)
		Clearvars()
	elseif myaces~= "" and myaces < 22 then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Hit!", "Hit1")
		AddConversationOption(conversation, "Stand!", "Stand1")
		StartConversation(conversation, NPC, Spawn, "You HIT!")
		Emote(Spawn, "receives a [" .. extracard .. "] for a total of " .. playertotal .. alt .. myaces .. ".")
	elseif playertotal <= 21 then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Hit!", "Hit1")
		AddConversationOption(conversation, "Stand!", "Stand1")
		StartConversation(conversation, NPC, Spawn, "You HIT!")
		Emote(Spawn, "receives a [" .. extracard .. "] for a total of " .. playertotal .. ".")
	end	
end
--Function for dealer's hit iteration and lower/higher value logic
function DealerHit(NPC, Spawn)
	if dealeraces ~= "" and dealeraces > 16 then
		dealertotal = dealeraces
		Say(NPC, dealertotal .. "!")
	elseif dealeraces~= "" and dealeraces < 17 then
		while dealeraces < 17 do
			extracard = table.remove(new, 1)
			CardValues5()
			Emote(NPC, "next card is [" .. extracard .. "]")
			dealeraces = dealeraces + extra
			dealertotal = dealertotal + extra
			if dealeraces > 21 then
				dealeraces = dealertotal
				Say(NPC, dealeraces .. "!")
			else
				dealertotal = dealeraces
				Say(NPC, dealertotal .. "!")
			end
		end
	elseif dealertotal < 17 then
		while dealertotal < 17 do
			extracard = table.remove(new, 1)
			CardValues5()
			Emote(NPC, "next card is [" .. extracard .. "]")
			dealertotal = dealertotal + extra
			if nextace == 10 then
				dealeraces = dealertotal + 10
				if dealeraces > 21 then
					dealeraces = dealertotal
					Say(NPC, dealeraces .. "!")
				else
					dealertotal = dealeraces
					Say(NPC, dealertotal .. "!")
				end
			else
			Say(NPC, dealertotal .. "!")
			end
		end
	end
	ComparingFinal(NPC, Spawn)
end
--Comparing final values and ending the game
function ComparingFinal(NPC, Spawn)
	if dealertotal > 21 then
		Say(NPC, "Dealer busts and player wins" .. GetCoinMessage(coins) .. "!")
		Winning1(NPC, Spawn)
		CoinFalling1(NPC, Spawn)
		AddCoin(Spawn, coins*2)
		SendPopUpMessage(Spawn, "Dealer busts! You win" .. GetCoinMessage(coins) .. "!", 255, 255, 0)
	elseif myaces~= "" and dealertotal > myaces then
		Say(NPC, "Dealer must stand and Dealer wins!")
		PushLose1(NPC, Spawn)
		SendPopUpMessage(Spawn, "Dealer wins! You lose" .. GetCoinMessage(coins) .. "!", 213, 89, 0)
		Sorry1(NPC, Spawn)
	elseif myaces~= "" and dealertotal < myaces then
		Say(NPC, "Dealer must stand and Player wins!")
		Winning1(NPC, Spawn)
		CoinFalling1(NPC, Spawn)
		AddCoin(Spawn, coins*2)
		SendPopUpMessage(Spawn, "Player wins! You win" .. GetCoinMessage(coins) .. "!", 255, 255, 0)
	elseif myaces~= "" and dealertotal == myaces then
		Say(NPC, "Dealer stands. It's a push, nobody wins!")
		AddCoin(Spawn, coins) -- Get your money back
		SendPopUpMessage(Spawn, "It's a push. You get your money back!", 255, 255, 0)
		PushLose1(NPC, Spawn)
		Dumbdoh1(NPC, Spawn)
	elseif dealertotal > playertotal then
		Say(NPC, "Dealer must stand and Dealer wins!")
		PushLose1(NPC, Spawn)
		SendPopUpMessage(Spawn, "Dealer wins! You lose" .. GetCoinMessage(coins) .. "!", 213, 89, 0)
		Sorry1(NPC, Spawn)
	elseif playertotal > dealertotal then
		Say(NPC, "Dealer must stand and Player wins!")
		Winning1(NPC, Spawn)
		CoinFalling1(NPC, Spawn)
		AddCoin(Spawn, coins*2)
		SendPopUpMessage(Spawn, "Player wins! You win" .. GetCoinMessage(coins) .. "!", 255, 255, 0)
	else
		Say(NPC, "Dealer stands. It's a push, nobody wins!")
		AddCoin(Spawn, coins)  -- Get your money back
		SendPopUpMessage(Spawn, "It's a push. You get your money back!", 255, 255, 0)
		PushLose1(NPC, Spawn)
		Dumbdoh1(NPC, Spawn)
	end
	Clearvars()
end
--Function on STAND now dealer needs to iterate value, determine aces, and compare players total
function Stand1(NPC, Spawn)
	if myaces == "" then
		myaces = ""
	elseif myaces > 21 then
		alt = ""
		myaces = ""
	elseif myaces < 22 then
		alt = ""
		playertotal = ""
	end
	Emote(NPC, "reveals [" .. secondcard .. "][" .. fourthcard .. "]")
	DealerHit(NPC, Spawn)
end

--Function for hit or stand option with cards revealed.
function HitStand1(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Hit!", "Hit1")
	AddConversationOption(conversation, "Stand!", "Stand1")
	StartConversation(conversation, NPC, Spawn, "Dealer's top card is [" .. fourthcard .. "]")
	Emote(Spawn, "peeks at [" .. firstcard .. "][" .. thirdcard .. "] for a total of " .. playertotal .. alt .. myaces .. ".")
end
--Resets variables for the next playthrough
function Clearvars(NPC, Spawn)
	alt = ""
	alt2 = ""
	myaces = ""
	dealeraces = ""
	myace = 0
	dealerace = 0
	playertotal = 0
	dealertotal = 0
	nextace = ""
end
--Start of usual functions
function spawn(NPC)
	SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
end
function respawn(NPC)
	spawn(NPC)
	Clearvars()
end
function InRange(NPC, Spawn)
	Emote(NPC, "shuffles a crisp deck of cards.")
	Say(NPC, "Test your luck mate?")
	Clearvars()
end
function LeaveRange(NPC, Spawn)
	Say(NPC, "See you next time!")
	PlayFlavor(NPC, "", "", "bye", 0, 0, Spawn)
	Clearvars() --Just in case
end
function hailed(NPC, Spawn)
	Clearvars() --Just in case
	conversation = CreateConversation()
	AddConversationOption(conversation, "Let's play.", "Play1")
	AddConversationOption(conversation, "Rules please.", "Rules1")
	StartConversation(conversation, NPC, Spawn, "Ready to play?")
end
function Play1(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I'll bet 10 platinum!", "Plat1")
	AddConversationOption(conversation, "I'll bet 50 gold!", "Gold2")
	AddConversationOption(conversation, "I'll bet 10 gold.", "Gold1")
	AddConversationOption(conversation, "I'll bet 1 gold.", "Silver1")
	-- AddConversationOption(conversation, "I'll bet 100 copper.", "Copper1") -- Too cheap!!
	AddConversationOption(conversation, "I changed my mind, sorry.", "Bye1")
	StartConversation(conversation, NPC, Spawn, "Let's begin! Place your bets please.")
end
--Start of blackjack script
function Plat1(NPC, Spawn)
	conversation = CreateConversation()
	coins = 10000000 -- 10 platinum
	local poolCoins = RemoveCoin(Spawn, coins)
	if(poolCoins) then
		Agree(NPC, Spawn)
		Emote(NPC, "shuffles twice and then begins to deal.")
		--Deal the cards
		Deal(NPC, Spawn) --adding parameters for troubleshooting
		--Do calculations
		Calculates(NPC, Spawn)
	else
		Say(NPC, "I'm sorry but you don't have enough money.")
		PlaySound(NPC, "sounds/combat/impact/leather/impact_metal_to_leather04.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
		PlayFlavor(NPC, "voiceover/english/voice_emotes/apologies/apologies_3_1006.mp3", "", "apologize", 0, 0, Spawn)
		Clearvars()
	end
end
function Gold2(NPC, Spawn)
	conversation = CreateConversation()
	coins = 500000 -- 50 gold
	local poolCoins = RemoveCoin(Spawn, coins)
	if(poolCoins) then
		Agree(NPC, Spawn)
		Emote(NPC, "shuffles twice and then begins to deal.")
		--Deal the cards
		Deal(NPC, Spawn) --adding parameters for troubleshooting
		--Do calculations
		Calculates(NPC, Spawn)
	else
		Say(NPC, "I'm sorry but you don't have enough money.")
		PlaySound(NPC, "sounds/combat/impact/leather/impact_metal_to_leather04.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
		PlayFlavor(NPC, "voiceover/english/voice_emotes/apologies/apologies_3_1006.mp3", "", "apologize", 0, 0, Spawn)
		Clearvars()
	end
end
function Gold1(NPC, Spawn)
	conversation = CreateConversation()
	coins = 100000 -- 10 gold
	local poolCoins = RemoveCoin(Spawn, coins)
	if(poolCoins) then
		Agree(NPC, Spawn)
		Emote(NPC, "shuffles twice and then begins to deal.")
		--Deal the cards
		Deal(NPC, Spawn) --adding parameters for troubleshooting
		--Do calculations
		Calculates(NPC, Spawn)
	else
		Say(NPC, "I'm sorry but you don't have enough money.")
		PlaySound(NPC, "sounds/combat/impact/leather/impact_metal_to_leather04.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
		PlayFlavor(NPC, "voiceover/english/voice_emotes/apologies/apologies_3_1006.mp3", "", "apologize", 0, 0, Spawn)
		Clearvars()
	end
end
function Silver1(NPC, Spawn)
	conversation = CreateConversation()
	coins = 10000 -- 1 gold
	local poolCoins = RemoveCoin(Spawn, coins)
	if(poolCoins) then
		Agree(NPC, Spawn)
		Emote(NPC, "shuffles twice and then begins to deal.")
		--Deal the cards
		Deal(NPC, Spawn) --adding parameters for troubleshooting
		--Do calculations
		Calculates(NPC, Spawn)
	else
		Say(NPC, "I'm sorry but you don't have enough money.")
		PlaySound(NPC, "sounds/combat/impact/leather/impact_metal_to_leather04.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
		PlayFlavor(NPC, "voiceover/english/voice_emotes/apologies/apologies_3_1006.mp3", "", "apologize", 0, 0, Spawn)
		Clearvars()
	end
end
function Copper1(NPC, Spawn) --Omitted for now
	-- conversation = CreateConversation()
	-- coins = 100 -- 1 silver
	-- local poolCoins = RemoveCoin(Spawn, coins)
	-- if(poolCoins) then
		-- Agree(NPC, Spawn)
		-- Emote(NPC, "shuffles twice and then begins to deal.")
		-- --Deal the cards
		-- Deal(NPC, Spawn) --adding parameters for troubleshooting
		-- --Do calculations
		-- Calculates(NPC, Spawn)
	-- else
		-- Say(NPC, "I'm sorry but you don't have enough money.")
		-- PlaySound(NPC, "sounds/combat/impact/leather/impact_metal_to_leather04.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
		-- PlayFlavor(NPC, "voiceover/english/voice_emotes/apologies/apologies_3_1006.mp3", "", "apologize", 0, 0, Spawn)
		-- Clearvars()
	-- end
end
--Rules of blackjack
function Rules1(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I understand.", "Play1")
	AddConversationOption(conversation, "Maybe next time.", "Bye1")
	StartConversation(conversation, NPC, Spawn, "The object of Blackjack is to achieve a hand greater than the dealer to 21 without going over. If you go over 21, it is called a 'bust' and the dealer wins. Winning hands are paid out 1 to 1 and a tie results in a 'push'. Card values are scored from 2 to 9 respectively with 10 and face cards worth 10 points and Ace being worth 1 or 11 points. If you have a 10 point card and an Ace in your starting hand, it is called a natural 21 or 'Blackjack' and it pays 3 to 2. Lastly, dealers must draw to 17.")
end
function Bye1(NPC, Spawn)
	Say(NPC, "Goodbye!")
	PlayFlavor(NPC, "voiceover/english/voice_emotes/goodbye/goodbye_3_1006.mp3", "", "bye", 0, 0, Spawn)
	Clearvars()
end
--END Blackjack.lua