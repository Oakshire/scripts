--[[
These are comments just like # and <!--
Two_Face NPCID: 4701856
Script Name: SpawnScripts/ThunderingSteppes/Two_Face.lua
Script Purpose: Gamble for heads or tails
Script Author: Patrikpatrik
Script Date: August 15 2016
Script Notes: Simple test for functionality
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	--Dont need LeaveRange if you dont want it
end

--always include this when npc dies.
function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "", "Psst, c'mere..", "beckon", 0, 0, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Yes I do.", "Yes1")
	AddConversationOption(conversation, "No I don't.", "No1")
	StartConversation(conversation, NPC, Spawn, "Do you want to play a game? It costs 50 silver to play.")
end

function Yes1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	coins = 5000
	local poolCoins = RemoveCoin(Spawn, coins)
	--[[This little section will pool coins but will only last until player logs out =(
	local npcCoins = GetLootCoin(NPC)
	Say(NPC, "I have " .. npcCoins .. " coins. And I just stole from you.")
	--]]
	if(poolCoins) then
		--[[local totalCoins = npcCoins + coins
		SetLootCoin(NPC, totalCoins)--]]
		PlaySound(NPC, "voiceover/english/voice_emotes/thank/thank_2_1054.mp3", GetX(NPC), GetY(NPC), GetZ(NPC))
		Say(NPC, "Thank you, let's begin!")
		randpick = math.random(1, 2)
		AddConversationOption(conversation, "Heads!", "Heads1")
		AddConversationOption(conversation, "Tails!", "Tails1")
		StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. ", I'm going to flip a coin, call it in the air...")
	else
		Say(NPC, "I'm sorry but you don't have enough money, begone.")
		PlaySound(NPC, "sounds/combat/impact/leather/impact_metal_to_leather04.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
	end
end
--Heads/Tails outcome
function Heads1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if randpick == 1 then
		AddCoin(Spawn, 10000)
		StartConversation(conversation, NPC, Spawn, "Congratulations " .. GetName(Spawn) .. "! You win" .. GetCoinMessage(coins) .. "!")
		ApplySpellVisual(Spawn, 869)
		SendPopUpMessage(Spawn, "Congratulations " .. GetName(Spawn) .. "! You win 50 silver!", 0, 255, 0)
	else
		StartConversation(conversation, NPC, Spawn, "Sorry it's Tails, you lose.")
		PlayFlavor(NPC, "voiceover/english/voice_emotes/laugh/laugh_1002.mp3", "", "laugh", 0, 0, Spawn)
	end
end
function Tails1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if randpick == 2 then
		AddCoin(Spawn, 10000)
		StartConversation(conversation, NPC, Spawn, "Congratulations " .. GetName(Spawn) .. "! You win" .. GetCoinMessage(coins) .. "!")
		ApplySpellVisual(Spawn, 869)
		SendPopUpMessage(Spawn, "Congratulations " .. GetName(Spawn) .. " you win 50 silver!", 0, 255, 0)
	else
		StartConversation(conversation, NPC, Spawn, "Sorry it's Heads, you lose.")
		PlayFlavor(NPC, "voiceover/english/voice_emotes/laugh/laugh_1002.mp3", "", "laugh", 0, 0, Spawn)
	end
end

function No1(NPC, Spawn)
	Say(NPC, "Your loss!")
end