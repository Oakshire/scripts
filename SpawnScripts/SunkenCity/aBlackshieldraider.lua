--[[
	Script Name	: SpawnScripts/SunkenCity/aBlackshieldraider.lua
	Script Purpose	: a Blackshield raider 
	Script Author	: Scatman
	Script Date	: 2009.08.01
	Script Notes	: 
--]]

local MALE = 1
local FEMALE = 2
local DARK_ELF = 1
local OGRE = 12
local TROLL = 14
local spoke = false

function spawn(NPC)
	spoke = false
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		if GetGender(NPC) == MALE then
			if GetRace(NPC) == DARK_ELF then
				local choice = math.random(1, 4)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gm_10fd87eb.mp3", "There is no escape for you now!", "", 2989643101, 2260454555)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gm_beacbb30.mp3", "I hope you put your affairs in order.", "", 799093996, 16617637)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gm_fe18133.mp3", "Look what strolled into the spider's web!", "", 4178015902, 2202039151)
				elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gm_10fd87eb.mp3", "There is no escape for you now!", "", 3427660043, 2534456197)
				end
			elseif GetRace(NPC) == OGRE then
			elseif GetRace(NPC) == TROLL then
			end
		elseif GetGender(NPC) == FEMALE then
			if GetRace(NPC) == DARK_ELF then
				local choice = math.random(1, 4)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gf_10fd87eb.mp3", "There is no escape for you now!", "", 3641868496, 1960514853)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_8e7390a8.mp3", "Welcome to torment and destruction!", "", 3770648926, 2897017212)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_ded507db.mp3", "More intruders to deal with? Stop them!", "", 338410258, 2808797910)
				elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_fb890c79.mp3", "I have no time for meddlers. Destroy them!", "", 1947039155, 2094447273)
				end
			elseif GetRace(NPC) == OGRE then
				PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_aggro_gf_d4cfd470.mp3", "Feel the might of Rallos!", "", 760635308, 455953200)
			elseif GetRace(NPC) == TROLL then
				local choice = math.random(1, 2)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_d1a345c7.mp3", "I'm gonna give you a smile like ol' one tooth!", "", 1201784314, 2598207561)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_aggro_gf_62fd0e82.mp3", "What smells so good?", "", 3335229907, 713747453)
				end
			end
		end
	end
end

function healthchanged(NPC, Spawn)
	local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
	if hp_percent <= 0.50 and spoke == false then
		spoke = true
		if GetGender(NPC) == MALE then
			if GetRace(NPC) == DARK_ELF then
				local choice = math.random(1, 3)
				if choice == 1 then
						PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gm_577ab333.mp3", "You'll pay for that one, peon!", "", 1420508530, 39058961)
				elseif choice == 2 then
						PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gm_9e244d19.mp3", "How dare you!", "", 3305445355, 1846155898)
				elseif choice == 3 then
						PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_halfhealth_gm_9e244d19.mp3", "How dare you!", "", 2287743179, 1322949627)
				end
			elseif GetRace(NPC) == OGRE then
				local choice = math.random(1, 4)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gm_581c2926.mp3", "You'll pay for that!", "", 2366218696, 2114997045)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gm_aff2b15d.mp3", "Now I'm really angry!", "", 1599348947, 4096819162)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_halfhealth_gm_1ad2d46f.mp3", "Your petty weapons are no match for me!", "", 2269900119, 3290320421)
				elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_halfhealth_gm_5a6c112c.mp3", "Agggggh! There is no pain only death and failure!", "", 2051650869, 1276361533)
				end
			elseif GetRace(NPC) == TROLL then
				local choice = math.random(1, 2)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 675684950, 4088135432)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_f462f6ff.mp3", "Is this supposed to hurt?", "", 4202180867, 1393988988)
				end
			end
		elseif GetGender(NPC) == FEMALE then
			if GetRace(NPC) == DARK_ELF then
				local choice = math.random(1, 5)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gf_577ab333.mp3", "You'll pay for that one, peon!", "", 2534123849, 501758946)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gf_9e244d19.mp3", "How dare you!", "", 2905660023, 2043697886)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_halfhealth_gf_9e244d19.mp3", "How dare you!", "", 2263865273, 2956956838)
				elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_halfhealth_gf_8d198fee.mp3", "You may escape, but we will find you!", "", 1924616636, 4174763308)
				elseif choice == 5 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_halfhealth_gf_d3fcd4c5.mp3", "How dare you strike me!", "", 1224879133, 2564393271)
				end
			elseif GetRace(NPC) == OGRE then
				local choice = math.random(1, 3)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gf_581c2926.mp3", "You'll pay for that!", "", 480032723, 3225416629)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/ogre_base_1/ft/ogre/ogre_base_1_1_halfhealth_gf_aff2b15d.mp3", "Now I'm really angry!", "", 3362643729, 1907494922)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_halfhealth_gf_1ad2d46f.mp3", "Your petty weapons are no match for me!", "", 2285469219, 3359769172)
				end
			elseif GetRace(NPC) == TROLL then
				local choice = math.random(1, 4)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gf_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 70455099, 2953679351)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gf_f462f6ff.mp3", "Is this supposed to hurt?", "", 216769747, 692696120)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_halfhealth_gf_5ba543d6.mp3", "That'll grow back.", "", 4062170117, 809175527)
				elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/optional3/troll_base_2/ft/troll/troll_base_2_1_halfhealth_gf_9e239695.mp3", "I can taste my own blood.", "", 630688016, 620713228)
				end
			end
		end
		AddTimer(NPC, 30000, "ResetSpoke")
	end
end

function ResetSpoke(NPC)
	spoke = false
end

function killed(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		if GetGender(NPC) == MALE then
			if GetRace(NPC) == DARK_ELF then
				local choice = math.random(1, 3)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_dff26fa.mp3", "It is a shame we must end it this way ... I could have used you.", "", 1363661737, 942201815)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f4fc7cf8.mp3", "Did you really think you had a chance?", "", 607143583, 3133144305)
				elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f5088778.mp3", "Get up! Death isn't good enough for you!", "", 3381713633, 2145918189)
				end
			elseif GetRace(NPC) == OGRE then
				PlayFlavor(NPC, "voiceover/english/optional3/ogre_base_2/ft/ogre/ogre_base_2_1_victory_gm_1de29528.mp3", "Death was your only escape from me, coward!", "", 3626940960, 2890932770)
			elseif GetRace(NPC) == TROLL then
				PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_victory_gm_ae6d66e3.mp3", "Teach you to mess with the best.", "", 927528340, 2751002174)
			end
		elseif GetGender(NPC) == FEMALE then
			if GetRace(NPC) == DARK_ELF then
			elseif GetRace(NPC) == OGRE then
			elseif GetRace(NPC) == TROLL then
			end
		end
	end
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 25 then
		if GetGender(NPC) == MALE then
			if GetRace(NPC) == DARK_ELF then
				PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gm_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 2338278515, 1160150777)
			elseif GetRace(NPC) == OGRE then
			elseif GetRace(NPC) == TROLL then
			end
		elseif GetGender(NPC) == FEMALE then
			if GetRace(NPC) == DARK_ELF then
				local choice = math.random(1, 2)
				if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/ghost_darkelf_base_1/ft/ghost/ghost_darkelf_base_1_1_death_gf_b5958785.mp3", "Hold them and I'll return with others like us!", "", 3769472925, 2964757475)
				elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_death_gf_8bbec3e3.mp3", "No matter what I promise, you will not survive!", "", 2832420662, 2950405548)
				end
			elseif GetRace(NPC) == OGRE then
				PlayFlavor(NPC, "voiceover/english/optional3/ghost_ogre_base_2/ft/ghost/ghost_ogre_base_2_1_death_gf_198e9f92.mp3", "Release comes to the favored.", "", 1658205865, 949237847)
			elseif GetRace(NPC) == TROLL then
			end
		end
	end
end