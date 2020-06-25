--[[
	Script Name	: SpawnScripts/Ruins/VisageoftheOverlord.lua
	Script Purpose	: Visage of the Overlord 
	Script Author	: Scatman
	Script Date	: 2009.08.02
	Script Notes	: 
--]]

local choice = 0

function spawn(NPC)
	AddTime(NPC, 300000, "Talk1")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,14)
--[[
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_5.mp3", "Prove yourself, and I shall grant you shelter at the edge of my city, and the chance to earn your place as a proud citizen of Freeport.", "", 4115014723, 2723692261, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_6.mp3", "Go now, and begin the trials that I have set for you.", "", 1244918730, 586509135, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_7.mp3", "Succeed, and you will share the fortunes of Freeport as we reshape this broken world.", "", 2666628260, 1943756642, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_8.mp3", "Together we will restore the glory of ages past, crush the Sons of Zek, and sweep aside the decadent nation of Qeynos!", "", 140890899, 2835297833, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_9.mp3", "With my guidance, you shall gain power and glory as you have never imagined, but should you turn against me, you will find that my wrath is a terrible thing ... Now go!", "", 3855854568, 2247480313, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_speechstrength001_64_64.mp3", "Citizens of Freeport! You have come from distant lands, driven by cataclysm and conflict into the welcoming shelter of my walls. You have proven your strength and your courage, else you would have been left beyond to wither and die. There is no place for mercy in these shattered lands; this is a time of blood and battle, and I only have need of the strong.", "", 2120743827, 2562003808, Spawn)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_speechstrength002_64_64.mp3", "But there are those among you who know little of my past and my glorious deed. I am Lucan D'Lere, and it is my will and steel that brought Freeport safely through the Age of Cataclysms. Even before the land was broken, I was renowned as a warrior, and I was chosen to rule this glorious city.", "", 1988024407, 1968035950, Spawn)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_speechstrength003_64_64.mp3", "No invading army could stand against my sword. Sons of Zek, dragons, and even the gods themselves: none could stand against Lucan. When the moon shattered and fire rained down from the sky, it was my strong hand that held this city together, that forged a nation from rubble and ruin.", "", 3916518155, 2486841924, Spawn)
	elseif choice == 9 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_speechstrength004_64_64.mp3", "I am more than a man. I am a force of destiny, far greater than any god. I am the Overlord of this age, and I shall reshape Norrath in my image. There is much to be done. The lost lands must be found and claimed in my name. We must seize the powers of the past. And we must show the fools who cling to the banner of Qeynos the error of their ways.", "", 1278215101, 3048380263, Spawn)
	elseif choice == 10 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_speechstrength005_64_64.mp3", "This is the defining moment of your existence: the chance to claim your place in the kingdom that is to come. Those who serve me well shall gain glory and power beyond any mortal dream; those who stand in my path shall be swept away and destroyed. Choose wisely. ", "", 3179016276, 1369464691, Spawn)
	elseif choice == 11 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/200_statue_overlord_lucan_dlere_speech_glory_freeport_4_658d5802.mp3", "And in the centuries that followed, it was my strength and my will that raised this city from the ashes and guided its people to the present. Now the Age of Destiny is upon us. The old world is shattered and will never return. As I restored Freeport, I will reshape Norrath.", "", 2738035237, 1024471311, Spawn)
	elseif choice == 12 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/200_statue_overlord_lucan_dlere_speech_glory_freeport_5_cbeaa62e.mp3", "But for all my power, I cannot act alone. I have chosen you, citizens of Freeport, because of your strength, your cunning, and your courage. There is no room for mercy in this broken land: only the strong will survive to seize the destiny of D'Lere.", "", 2788065318, 273884141, Spawn)
	elseif choice == 13 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/200_statue_overlord_lucan_dlere_speech_glory_freeport_6_e760558d.mp3", "In the days that lie ahead I will call upon you to prove your worth and your commitment to my cause. Those who follow me faithfully shall gain glory and power in the kingdom to come, and gold aplenty in world of the moment.", "", 1243249819, 2464345242, Spawn)
	elseif choice == 14 then
		PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/200_statue_overlord_lucan_dlere_speech_glory_freeport_7_3b8ccc31.mp3", "But should you ever betray Freeport, or dare to rise against Lucan, you shall see why even the gods of old feared my wrath. Go, citizens of Freeport, and prepare for the work that lies ahead. The Age of Destiny has begun. ", "", 1852419614, 277309010, Spawn)
	else
	end
--]]
end

function Talk1(NPC)
	choice = math.random(1, 3)
	if choice == 1 then
		Say(NPC, "Teach my enemies of the price of challenging Freeport, and you shall have gold and glory beyond your imagining.")
		AddTimer(NPC, 300000, "Talk1")
	elseif choice == 2 then
		Say(NPC, "I am Lucan D'Lere, and I am the last hope of this shattered world.")
		AddTimer(NPC, 300000, "Talk1")
	elseif choice == 3 then
		Say(NPC, "The strong will always survive and prosper.")
		AddTimer(NPC, 300000, "Talk1")
	end
end