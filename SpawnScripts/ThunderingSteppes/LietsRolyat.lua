--[[
    Script Name    : SpawnScripts/ThunderingSteppes/LietsRolyat.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 05:06:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,10)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_589bbb80.mp3", "Satisfaction is guaranteed, with all itemses fully refundable...if you can find me again.", "thumbsup", 1525152162, 4224893930, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_8c371df0.mp3", "Don't let these deals slip through your fingers.", "point", 1999119491, 784149819, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_e4bce3ad.mp3", "Psst ... I'm cutting you in on the deal of a lifetime.", "agree", 149052487, 2149887402, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_f2a55e76.mp3", "With these values it's like you're the one committing highway robbery!", "smile", 763799213, 3232955127, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_48e9f7.mp3", "This merchandise is so hot it's still warm to the touch.", "wince", 1094492990, 4101920657, Spawn, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_aoi_gm_7dc06552.mp3", "I know a discerning shopper when I sees one, and they don't come any sharper than you.", "wink", 1215863828, 1711861063, Spawn, 0)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_aoi_gm_25771611.mp3", "You won't find these low, low prices in those fancy city shops.", "heckno", 2149352822, 2911965725, Spawn, 0)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_670060d5.mp3", "Calm down, friend. Just because this looks like your stolen backpack doesn't mean it is.", "boggle", 1357039195, 2717785315, Spawn, 0)
	elseif choice == 9 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_1e754634.mp3", "Of course we deliver! I'll just need an address, key, and the times when you won't be home.", "scheme", 3777485038, 22256427, Spawn, 0)
	elseif choice == 10 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_neutral_2/ft/service/merchant/ratonga_merchant_service_neutral_2_hail_gm_29327bd1.mp3", "I have to dump this stuff and move out tonight. Staying one step ahead of my, uh, happy customers.", "lookaway", 3335550471, 3304609329, Spawn, 0)
	end
end