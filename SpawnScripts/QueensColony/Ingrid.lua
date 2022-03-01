--[[
    Script Name    : SpawnScripts/QueensColony/Ingrid.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Ingrid dialog
    Modified Data  : 2020.04.03
    Modified by    : premierio015
    Notes          : Added Animations
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)
	str = tostring(voice)
    emote = math.random(1,3)

    if voice == 1 then
		PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_007.mp3", "Yo ho ho and a bottle of rum!", "", 964088856, 3568852318, Spawn)
	elseif voice == 2 then
		PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_009.mp3", "I hate rats, every time we dock they get on board and eat our supplies.", "", 3636322414, 1973183674, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_008.mp3", "Don't you just love the sea?", "", 541733813, 1294072887, Spawn)
	end

    if emote == 1 then
                PlayAnimation(NPC, 11682)
       	elseif emote == 2 then
                PlayAnimation(NPC, 11882)
	else
                PlayAnimation(NPC, 12285)
        end
end