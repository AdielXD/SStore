--Script feito com a ajuda do meus amigos kiojeen e Aklads

bb = nil

iaps = {}
SNC = {}

iapc = {
 {
	"Close Script",
	":SPASSR",
 },
 {
	"Starter pack",
	":SNC00",
 },
 {
	"Office Cape",
	":SNC01",
 },
 {
	"Santa Hat",
	":SNC03",
 },
 {
	"Bat Cape",
	":SNC05",
 },
 {
	"Pumpkin Head",
	":SNC06",
 },
 {
	"Gratitude Furcape Pack",
	":SNC07",
 },
 {
	"Swing",
	":SNC08",
 },
 {
	"Earth Cape",
	":SNC09",
 },
 {
	"White Flower (Live)",
	":SNC10",
 },
 {
	"KizunaAi Pack (Live)",
	":SNC12",
 },
 {
	"Lantern",
	":SNC13",
 },
 {
	"Witch Hat",
	":SNC14",
 },
 {
	"Web Cape",
	":SNC15",
 },
 {
	"Pumpkin Head+BatCape",
	":SNC16",
 },
 {
	"Days of feast Antlers",
	":SNC17",
 },
 {
	"Snowflake Cape",
	":SNC18",
 },
 {
	"Orange Head",
	":SNC19",
 },
 {
	"Woolhat+Blush mask",
	":SNC20",
 },
 {
	"Fortune Pack",
	":SNC21",
 },
 {
	"Seesaw Pack",
	":SNC22",
 },
 {
	"Tea Set",
	":SNC23",
 },
 {
	"Ocean Cape",
	":SNC24",
 },
 {
	"Ocean Necklace",
	":SNC25",
 },
 {
	"Rainbow hair",
	":SNC28",
 },
 {
	"Prince Scarf",
	":SNC29",
 },
 {
	"Fox Backpack",
	":SNC30",
 },
 {
	"Prince Asteroid Pack",
	":SNC32",
 },
 {
	"Summer Umbrella",
	":SNC33",
 },
 {
	"Summer Hairpin",
	":SNC34",
 },
 {
	"Rabbit Accessory",
	":SNC35",
 },
 {
	"Mischief Antlers",
	":SNC36",
 },
 {
	"Mischief Witch Jumper",
	":SNC37",
 },
 {
	"Mischief Spider Hair",
	":SNC38",
 },
 {
	"Dark Dragon Pumpkin",
	":SNC39",
 },
 {
	"Feast Snow Globe",
	":SNC40",
 },
 {
	"Feast Elder Cape",
	":SNC41",
 },
 {
	"Feast Snowflake Pin",
	":SNC42",
 },
 {
	"Fortune Fish Accessory",
	":SNC43",
 },
 {
	"Fortune Fish Cape",
	":SNC44",
 },
 {
	"Gondola Boat",
	":SNC45",
 },
 {
	"Wisteria Teaset",
	":SNC46",
 },
 {
	"Turtle Neck Pack",
	":SNC47",
 },
 {
	"Turtle Cape",
	":SNC48",
 },
 {
	"Rainbow Earring",
	":SNC49",
 },
 {
	"Rainbow Trousers",
	":SNC50",
 },
 {
	"Triumph Handpan",
	":SNC51",
 },
 {
	"Triumph DunDun",
	":SNC52",
 },
 {
	"Triumph Horn",
	":SNC53",
 },
 {
	"3rd Anniversary Guitar",
	":SNC54",
 },
 {
	"Double Rainbow Flower",
	":SNC55",
 },
 {
	"Rhythm Guitar",
	":SNC56",
 },
 {
	"Fluttering Harp",
	":SNC57",
 },
 {
	"Rainbow Headphones",
	":SNC58",
 },
 {
	"Marshmallow Stand",
	":SNC59",
 },
 {
	"Jellyfish Neck",
	":SNC60",
 },
 {
	"Cat Costume Pack",
	":SNC61",
 },
 {
	"Cat Backpack",
	":SNC62",
 },
 {
	"Aurora Star Horn",
	":SNC63",
 },
 {
	"Runaway Pack",
	":SNC64",
 },
 {
	"Aurora Instrument",
	":SNC65",
 },
 {
	"Aurora Cape",
	":SNC66",
 },
 {
	"Orange Dress",
	":SNC67",
 },
}

for i, v in ipairs(iapc) do
	table.insert(iaps,v[1])
	table.insert(SNC,v[2])
end

gg.alert(
	[[after you buy something, if you select other IAP, will appear the Season Pass in store
	and if you buy this season pass, the next item you have selected will appear]]
)
gg.alert(
	[[so, if you are playing on live, I advise you to restart the game after buy something]]
)

function Main()
	local adxd = {"method 1","method 2","exit"}
	local Choice = gg.choice(adxd,nil,'choose one method to start')
	if Choice == 1 then
		mtd1()
	elseif Choice == 2 then
		mtd2()
	elseif Choice == 3 then
		os.exit()
	end

end

function mtd1 ()
	gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber(':season', 1,false, gg.SIGN_EQUAL,0, -1)
	gg.getResults(1000)
	gg.editAll(':global', 1)
	gg.clearResults()
    gg.setRanges(gg.REGION_OTHER| gg.REGION_C_ALLOC)
    gg.searchNumber(':global', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll('0', 1)
end

function mtd2 ()
	local Choice = gg.choice(iaps,nil,"Open the store to buy")
codigoIap = SNC[Choice]
if Choice == 1 then
	os.exit()
elseif bb == 1 then IAP1()
	else IAP()
end
end

function IAP()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(':SPASS', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll('0', 1)
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER| gg.REGION_C_ALLOC)
    gg.searchNumber(':SPASSR', 1,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll(codigoIap, 1)
	bb = 1
end

function IAP1()
	gg.editAll(codigoIap, 1)
end

print[[
	
	By Okarin#4708
	
	]]

loop = 1
while loop < 10 do
    if gg.isVisible() then
      gg.setVisible(false)
      Main() end
    end
