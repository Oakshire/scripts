--[[
	Script Name	: SpawnScripts/Generic/GearBot.lua
	Script Purpose	: gear bot for testers
	Script Author	: theFoof
	Script Date	: 2013.5.23
	Script Notes	: 
--]]
function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local class = GetClass(Spawn)
    local choice = math.random(1,3)
	if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_6.mp3", "Go now, and begin the trials that I have set for you.", "", 1244918730, 586509135, Spawn)
	elseif choice == 2 then
	    PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_4.mp3", "You show potential, but there are many who seek the auspices of Lucan, and I only have time for champions.", "", 2060818628, 3998142234, Spawn)
	elseif choice == 3 then
	    PlayFlavor(NPC, "voiceover/english/overlord_lucan_d_lere/fprt_west/lucan_isle_speech_9.mp3", "With my guidance, you shall gain power and glory as you have never imagined, but should you turn against me, you will find that my wrath is a terrible thing ... Now go!", "", 3855854568, 2247480313, Spawn)
	end
	if class >= 1 and class <=10 and class  ~= 6 and class ~= 7 then
	    if HasItem(Spawn, 137284) == false then
	        SendPopUpMessage(Spawn, "Check your bags", 0, 255, 255)
	        SummonItem(Spawn, 137284)
	    	SummonItem(Spawn, 137285)
		    SummonItem(Spawn, 137286)
	    	SummonItem(Spawn, 137287)
	    	SummonItem(Spawn, 137288)
	    	SummonItem(Spawn, 137289)
		    SummonItem(Spawn, 137290)
			if class == 1 or class == 2 then
		        SummonItem(Spawn, 72716)
		        SummonItem(Spawn, 72716)
				SummonItem(Spawn, 72682)
				SummonItem(Spawn, 40049)
				SummonItem(Spawn, 50659)
			else
			    SummonItem(Spawn, 72712)
			    SummonItem(Spawn, 50659)
			    SummonItem(Spawn, 70283)
		        SummonItem(Spawn, 40049)
		        SummonItem(Spawn, 72682)
			end
        end			
	elseif class == 6 or class == 7 then
	    if HasItem(Spawn, 72707) == false then
	        SendPopUpMessage(Spawn, "Check your bags", 0, 255, 255)
	        SummonItem(Spawn, 72707)
	        SummonItem(Spawn, 72707)
		    SummonItem(Spawn, 70283)
	    	SummonItem(Spawn, 190164)
	    	SummonItem(Spawn, 190165)
	    	SummonItem(Spawn, 190166)
		    SummonItem(Spawn, 190167)
		    SummonItem(Spawn, 190168)
		    SummonItem(Spawn, 190169)
		    SummonItem(Spawn, 190170)
		end
	elseif class == 13 or class == 14 then
	    if HasItem(Spawn, 137284) == false then
		    SendPopUpMessage(Spawn, "Check your bags", 0, 255, 255)
			SummonItem(Spawn, 137284)
	    	SummonItem(Spawn, 137285)
		    SummonItem(Spawn, 137286)
	    	SummonItem(Spawn, 137287)
	    	SummonItem(Spawn, 137288)
	    	SummonItem(Spawn, 137289)
		    SummonItem(Spawn, 137290)
			SummonItem(Spawn, 50119)
			SummonItem(Spawn, 72734)
			SummonItem(Spawn, 72713)
		end
	elseif class == 16 or class == 17 then
	    if HasItem(Spawn, 190164) == false then
		    SendPopUpMessage(Spawn, "Check your bags", 0, 255, 255)
			SummonItem(Spawn, 190164)
	    	SummonItem(Spawn, 190165)
	    	SummonItem(Spawn, 190166)
		    SummonItem(Spawn, 190167)
		    SummonItem(Spawn, 190168)
		    SummonItem(Spawn, 190169)
		    SummonItem(Spawn, 190170)
			SummonItem(Spawn, 50119)
			SummonItem(Spawn, 72734)
			SummonItem(Spawn, 72713)
		end
	elseif class == 19 or class == 20 then
	    if HasItem(Spawn, 137271) == false then
		    SendPopUpMessage(Spawn, "Check your bags", 0, 255, 255)
			SummonItem(Spawn, 137271)
			SummonItem(Spawn, 137272)
			SummonItem(Spawn, 137273)
			SummonItem(Spawn, 137274)
			SummonItem(Spawn, 137275)
			SummonItem(Spawn, 137276)
			SummonItem(Spawn, 137277)
			SummonItem(Spawn, 72716)
		    SummonItem(Spawn, 72716)
			SummonItem(Spawn, 50119)
			SummonItem(Spawn, 72734)
			SummonItem(Spawn, 72713)
		end
	elseif class >= 22 and class <= 30 then
	    if HasItem(Spawn, 175094) == false then
		    SendPopUpMessage(Spawn, "Check your bags", 0, 255, 255)
			SummonItem(Spawn, 175094)
			SummonItem(Spawn, 175096)
			SummonItem(Spawn, 175097)
			SummonItem(Spawn, 175100)
			SummonItem(Spawn, 175101)
			SummonItem(Spawn, 175105)
			SummonItem(Spawn, 175107)
			SummonItem(Spawn, 175108)
			SummonItem(Spawn, 70287)
		end
	elseif class >= 31 then
	    if HasItem(Spawn, 137271) == false then
		    SendPopUpMessage(Spawn, "Check your bags", 0, 255, 255)
			SummonItem(Spawn, 137271)
			SummonItem(Spawn, 137272)
			SummonItem(Spawn, 137273)
			SummonItem(Spawn, 137274)
			SummonItem(Spawn, 137275)
			SummonItem(Spawn, 137276)
			SummonItem(Spawn, 137277)
			SummonItem(Spawn, 40050)
			SummonItem(Spawn, 72716)
		    SummonItem(Spawn, 72716)
		end
	end
end