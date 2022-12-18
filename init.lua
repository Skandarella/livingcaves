--This creates the livingcaves object.
livingcaves = {}

--This creates the livingcaves.settings object, and fills it with either the menu selected choices as defined in settingtypes.txt, or default values, (In this case, false).
livingcaves.settings = {
	clear_biomes			= minetest.settings:get_bool("livingcaves.clear_biomes") or false,
	clear_decos			= minetest.settings:get_bool("livingcaves.clear_decos") or false,
	clear_ores			= minetest.settings:get_bool("livingcaves.clear_ores") or false,
}

if livingcaves.settings.clear_biomes then
	minetest.clear_registered_biomes()
end
if livingcaves.settings.clear_decos then
	minetest.clear_registered_decorations()
end
if livingcaves.settings.clear_ores then
	minetest.clear_registered_ores()
end

local modname = "livingcaves"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

-- Load support for intllib.
local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

local S = minetest.get_translator and minetest.get_translator("livingcaves") or
		dofile(path .. "intllib.lua")



-- plants
dofile(path .. "cavenodes.lua") -- 
dofile(path .. "decor.lua") -- 
dofile(path .. "water.lua") -- 
dofile(path .. "crafting.lua") -- 
dofile(path .. "dye.lua") -- 
dofile(path .. "hunger.lua") -- 



print (S("[MOD] Caves loaded"))
