--Script feito com a ajuda do meus amigos kiojeen e Aklads

bb = nil

iaps = {
	"Close Script",
	"Starter pack",
	"Office Cape",
	"Santa Hat",
	"Bat Cape",
	"Pumpkin Head",
	"Gratitude Furcape Pack",
	"Swing",
	"Earth Cape",
	"White Flower (Live)",
	"KizunaAi Pack (Live)",
	"Lantern",
	"Witch Hat",
	"Web Cape",
	"Pumpkin Head+BatCape",
	"Days of feast Antlers",
	"Snowflake Cape",
	"Orange Head",
	"Woolhat+Blush mask",
	"Fortune Pack",
	"Seesaw Pack",
	"Tea Set",
	"Ocean Cape",
	"Ocean Necklace",
	"Rainbow hair",
	"Prince Scarf",
	"Fox Backpack",
	"Prince Asteroid Pack",
	"Summer Umbrella",
	"Summer Hairpin",
	"Rabbit Accessory",
	"Mischief Antlers",
	"Mischief Witch Jumper",
	"Mischief Spider Hair",
	"Dark Dragon Pumpkin",
	"Feast Snow Globe",
	"Feast Elder Cape",
	"Feast Snowflake Pin",
	"Fortune Fish Accessory",
	"Fortune Fish Cape",
	"Gondola Boat",
	"Wisteria Teaset",
	"Turtle Neck Pack",
	"Turtle Cape",
	"Rainbow Earring",
	"Rainbow Trousers",
	"Triumph Handpan",
	"Triumph DunDun",
	"Triumph Horn",
	"3rd Anniversary Guitar",
	"Double Rainbow Flower",
	"Rhythm Guitar",
	"Fluttering Harp",
	"Rainbow Headphones",
	"Marshmallow Stand",
	"Jellyfish Neck",
	"Cat Costume Pack",
	"Cat Backpack",
	"Aurora Star Horn",
	"Runaway Pack",
	"Aurora Instrument",
	"Aurora Cape",
	"Orange Dress"
}
SNC = {
	":SPASSR",
	":SNC00",
	":SNC01",
	":SNC03",
	":SNC05",
	":SNC06",
	":SNC07",
	":SNC08",
	":SNC09",
	":SNC10",
	":SNC12",
	":SNC13",
	":SNC14",
	":SNC15",
	":SNC16",
	":SNC17",
	":SNC18",
	":SNC19",
	":SNC20",
	":SNC21",
	":SNC22",
	":SNC23",
	":SNC24",
	":SNC25",
	":SNC28",
	":SNC29",
	":SNC30",
	":SNC32",
	":SNC33",
	":SNC34",
	":SNC35",
	":SNC36",
	":SNC37",
	":SNC38",
	":SNC39",
	":SNC40",
	":SNC41",
	":SNC42",
	":SNC43",
	":SNC44",
	":SNC45",
	":SNC46",
	":SNC47",
	":SNC48",
	":SNC49",
	":SNC50",
	":SNC51",
	":SNC52",
	":SNC53",
	":SNC54",
	":SNC55",
	":SNC56",
	":SNC57",
	":SNC58",
	":SNC59",
	":SNC60",
	":SNC61",
	":SNC62",
	":SNC63",
	":SNC64",
	":SNC65",
	":SNC66",
	":SNC67"
}

--function Alrta()
gg.alert(
	[[after you buy something, if you select other IAP, will appear the Season Pass in store
	and if you buy this season pass, the next item you have selected will appear]]
)
gg.alert(
	[[so, if you are playing on live, I advise you to restart the game after buy something]]
)
--end

function Main()
local Choice = gg.choice(iaps,nil,"Open the store to buy")
codigoIap = SNC[Choice]
if Choice == nil then
	Main()
end
gg.toast(iaps[Choice])
end
if Choice == 1 then
	os.exit()
elseif bb == 1 then IAP1()
	else IAP()
end

function IAP()
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER|gg.REGION_C_ALLOC)
    gg.searchNumber(':SPASS', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll('0', 1)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber(':SPASSR', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll(codigoIap, 1)
	bb = 1
end

function IAP1()
	gg.editAll(codigoIap, 1)
end

print[[
	
	By AdielXD
	
	]]

loop = 1
while loop < 10 do
    if gg.isVisible() then
      gg.setVisible(false)
      Main() end
    end
