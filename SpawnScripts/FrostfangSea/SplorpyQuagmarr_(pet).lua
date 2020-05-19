--[[
	Script Name	: SpawnScripts/FrostfangSea/SplorpyQuagmarr_(pet).lua
	Script Purpose	: the Splorply Quagmarr pet from the quest "Little Lost Froglok"
	Script Author	: theFoof
	Script Date	: 2013.05.22
	Script Notes	:
--]]

function spawn(NPC)
    AddTimer(NPC, 5000, "chatswitch")
	AddTimer(NPC, 600000, "depop") 
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function chatswitch(NPC)
    choice = math.random(1,6)
	if choice == 1 then
	    Say(NPC, "Did you fight those with your bare hands?")
	elseif choice == 2 then
	    Say(NPC, "It's cold out here!")
	elseif choice == 3 then
	    Say(NPC, "I have to go to the bathroom.")
	elseif choice == 4 then
	    Say(NPC, "Do you know where you are going?")
	elseif choice ==  5 then
	    Say(NPC, "I wonder if I'll get to see Mithaniel Marr!")
	elseif choice == 6 then
	    Say(NPC, "That bear was eating a dead pilgrim!")
	end
	AddTimer(NPC, math.random(15000,30000), "chatswitch")
end

function depop(NPC, Spawn)
	Despawn(NPC)
end
	