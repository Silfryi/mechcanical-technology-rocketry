//Import
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.BlastFurnace;
import mods.immersivetechnology.ElectrolyticCrucibleBattery;
import mods.modularmachinery.RecipeBuilder.newBuilder;
import crafttweaker.oredict.IOreDictEntry;



//Molten slag to slag
var slag = newBuilder("slag", "casting_basin", 200);
slag.addFluidInput(<liquid:moltenslag> * 1200);
slag.addItemOutput(<immersiveengineering:material:7> * 12);
slag.build();

//Aluminium Processing
furnace.addRecipe(<ore:dustAlumina>.firstItem, <ore:dustAluminiumHydroxide>.firstItem);
furnace.addRecipe(<ore:dustAlumina>.firstItem, <mekores:mekanismore:33>);
Mixer.addRecipe(<liquid:moltencryolitesolution> * 100, <liquid:moltencryolite> * 100, [<ore:dustAlumina>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:oxygen> * 4800, <liquid:moltenaluminium> * 3200, <liquid:moltencryolite> * 3200, null, <liquid:moltencryolitesolution> * 3200, 18432000, 1600);
var cast_aluminium_ingot = newBuilder("cast_aluminium_ingot", "casting_basin", 400);
cast_aluminium_ingot.addFluidInput(<liquid:moltenaluminium> * 1600);
cast_aluminium_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
cast_aluminium_ingot.addItemOutput(<immersiveengineering:metal:1> * 16);
cast_aluminium_ingot.build();
var cast_aluminium_plate = newBuilder("cast_aluminium_plate", "casting_basin", 400);
cast_aluminium_plate.addFluidInput(<liquid:moltenaluminium> * 1600);
cast_aluminium_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
cast_aluminium_plate.addItemOutput(<immersiveengineering:metal:31> * 16);
cast_aluminium_plate.build();
var cast_aluminium_rod = newBuilder("cast_aluminium_rod", "casting_basin", 200);
cast_aluminium_rod.addFluidInput(<liquid:moltenaluminium> * 800);
cast_aluminium_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
cast_aluminium_rod.addItemOutput(<immersiveengineering:material:3> * 16);
cast_aluminium_rod.build();


//Uranium processing
Mixer.addRecipe(<liquid:uraniumsulfatesolution> * 100, <liquid:sulfuric_acid> * 100, [<mekores:mekanismore:3>], 4000);
furnace.addRecipe(<ore:dustYellowcake>.firstItem, <ore:dustAmmoniumDiuranate>.firstItem);


//Iron Processing
var crude_iron = newBuilder("crude_iron", "large_blast_furnace", 2400);
crude_iron.addEnergyPerTickInput(3840);
crude_iron.addItemInput(<ore:dustDirtyIron>.firstItem * 192);
crude_iron.addItemInput(<ore:dustAnyCarbon>, 192);
crude_iron.addItemInput(<ore:flux>, 64);
crude_iron.addFluidOutput(<liquid:moltencrudeiron> * 14400);
crude_iron.addFluidOutput(<liquid:moltencrudeiron> * 14400);
crude_iron.addFluidOutput(<liquid:moltenslag> * 7200);
crude_iron.addFluidOutput(<liquid:moltenslag> * 7200);
crude_iron.build();
var steel = newBuilder("steel", "oxygen_converter", 100);
steel.addFluidInput(<liquid:moltencrudeiron> * 1200);
steel.addFluidInput(<liquid:oxygen> * 300);
steel.addFluidInput(<liquid:water> * 1200);
steel.addFluidOutput(<liquid:moltenslag> * 800);
steel.addFluidOutput(<liquid:moltensteel> * 1200);
steel.build();
var steel_magnesium = newBuilder("steel_magnesium", "oxygen_converter", 100);
steel_magnesium.addFluidInput(<liquid:moltencrudeiron> * 1200);
steel_magnesium.addFluidInput(<liquid:oxygen> * 300);
steel_magnesium.addFluidInput(<liquid:water> * 1200);
steel_magnesium.addFluidInput(<liquid:moltenmagnesium> * 100);
steel_magnesium.addFluidOutput(<liquid:moltenslag> * 400);
steel_magnesium.addFluidOutput(<liquid:moltensteel> * 1600);
steel_magnesium.build();
var cast_iron_ingot = newBuilder("cast_iron_ingot", "casting_basin", 400);
cast_iron_ingot.addFluidInput(<liquid:moltencrudeiron> * 1200);
cast_iron_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
cast_iron_ingot.addItemOutput(<minecraft:iron_ingot> * 12);
cast_iron_ingot.build();
var cast_iron_plate = newBuilder("cast_iron_plate", "casting_basin", 400);
cast_iron_plate.addFluidInput(<liquid:moltencrudeiron> * 1200);
cast_iron_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
cast_iron_plate.addItemOutput(<immersiveengineering:metal:39> * 12);
cast_iron_plate.build();
var cast_iron_rod = newBuilder("cast_iron_rod", "casting_basin", 200);
cast_iron_rod.addFluidInput(<liquid:moltencrudeiron> * 600);
cast_iron_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
cast_iron_rod.addItemOutput(<immersiveengineering:material:1> * 12);
cast_iron_rod.build();
var steel_ingot = newBuilder("steel_ingot", "casting_basin", 400);
steel_ingot.addFluidInput(<liquid:moltensteel> * 1200);
steel_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
steel_ingot.addItemOutput(<immersiveengineering:metal:8> * 12);
steel_ingot.build();
var steel_plate = newBuilder("steel_plate", "casting_basin", 400);
steel_plate.addFluidInput(<liquid:moltensteel> * 1200);
steel_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
steel_plate.addItemOutput(<immersiveengineering:metal:38> * 12);
steel_plate.build();
var steel_rod = newBuilder("steel_rod", "casting_basin", 200);
steel_rod.addFluidInput(<liquid:moltensteel> * 600);
steel_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
steel_rod.addItemOutput(<immersiveengineering:material:2> * 12);
steel_rod.build();

//Copper processing
Mixer.addRecipe(<liquid:coppersulfatesolution> * 150, <liquid:sulfuric_acid> * 150, [<ore:dustDirtyCopper>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuric_acid> * 1200, null, <liquid:coppersulfatesolutionresidue> * 400, <immersiveengineering:metal:30> * 16, <liquid:coppersulfatesolution> * 1600, 1536000, 400);

//Nickel Processing
var nickel_matte = newBuilder("nickel_matte", "oxygen_converter", 200);
nickel_matte.addMekanismHeatInput(0, 1350, (1.0/0));
nickel_matte.addItemInput(<mekores:mekanismore:13> * 16);
nickel_matte.addFluidInput(<liquid:oxygen> * 600);
nickel_matte.addFluidInput(<liquid:water> * 2400);
nickel_matte.addFluidOutput(<liquid:moltenslag> * 800);
nickel_matte.addFluidOutput(<liquid:moltennickelmatte> * 2400);
nickel_matte.build();
var nickel_matte_ingot = newBuilder("nickel_matte_ingot", "casting_basin", 400);
nickel_matte_ingot.addFluidInput(<liquid:moltennickelmatte> * 1600);
nickel_matte_ingot.addItemOutput(<ore:slagNickelMatte>.firstItem * 16);
nickel_matte_ingot.build();
Mixer.addRecipe(<liquid:nickelsulfatesolution> * 100, <liquid:sulfuric_acid> * 100, [<ore:slagNickelMatte>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuric_acid> * 1200, null, <liquid:nickelsulfatesolutionresidue> * 400, <immersiveengineering:metal:34> * 16, <liquid:nickelsulfatesolution> * 1600, 1920000, 400);

//Tin processing
var impure_tin = newBuilder("impure_tin", "large_blast_furnace", 2400);
impure_tin.addEnergyPerTickInput(3840);
impure_tin.addItemInput(<ore:dustDirtyTin>.firstItem * 192);
impure_tin.addItemInput(<ore:dustAnyCarbon>, 192);
impure_tin.addItemInput(<ore:flux>, 48);
impure_tin.addFluidOutput(<liquid:impuremoltentin> * 14400);
impure_tin.addFluidOutput(<liquid:impuremoltentin> * 14400);
impure_tin.addFluidOutput(<liquid:moltenslag> * 4800);
impure_tin.addFluidOutput(<liquid:moltenslag> * 4800);
impure_tin.build();
var impure_tin_ingot = newBuilder("impure_tin_ingot", "casting_basin", 400);
impure_tin_ingot.addFluidInput(<liquid:impuremoltentin> * 1600);
impure_tin_ingot.addItemOutput(<ore:slagImpureTin>.firstItem * 16);
impure_tin_ingot.build();
Mixer.addRecipe(<liquid:tinsulfatesolution> * 100, <liquid:sulfuric_acid> * 100, [<ore:slagImpureTin>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuric_acid> * 1600, null, null, <libvulpes:productplate:5> * 16, <liquid:tinsulfatesolution> * 1600, 1920000, 400);

//Lead processing
var molten_lead = newBuilder("molten_lead", "large_blast_furnace", 2400);
molten_lead.addEnergyPerTickInput(3840);
molten_lead.addItemInput(<ore:slagLeadSinter>.firstItem * 192);
molten_lead.addItemInput(<ore:dustAnyCarbon>, 192);
molten_lead.addFluidOutput(<liquid:moltenlead> * 9600);
molten_lead.addFluidOutput(<liquid:moltenlead> * 9600);
molten_lead.addFluidOutput(<liquid:moltenslag> * 7200);
molten_lead.addFluidOutput(<liquid:moltenslag> * 7200);
molten_lead.build();
var lead_ingot = newBuilder("lead_ingot", "casting_basin", 400);
lead_ingot.addFluidInput(<liquid:moltenlead> * 1200);
lead_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
lead_ingot.addItemOutput(<immersiveengineering:metal:2> * 12);
lead_ingot.build();
var lead_plate = newBuilder("lead_plate", "casting_basin", 400);
lead_plate.addFluidInput(<liquid:moltenlead> * 1200);
lead_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
lead_plate.addItemOutput(<immersiveengineering:metal:32> * 12);
lead_plate.build();
var lead_rod = newBuilder("lead_rod", "casting_basin", 200);
lead_rod.addFluidInput(<liquid:moltenlead> * 600);
lead_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
lead_rod.addItemOutput(<immersiveposts:metal_rods:2> * 12);
lead_rod.build();

//Titanium processing
var rutile_dust = newBuilder("rutile_dust", "large_blast_furnace", 7200);
rutile_dust.addEnergyPerTickInput(3840);
rutile_dust.addItemInput(<mekores:mekanismore:88> * 192);
rutile_dust.addItemInput(<ore:dustAnyCarbon>, 288);
rutile_dust.addFluidOutput(<liquid:moltencrudeiron> * 3200);
rutile_dust.addFluidOutput(<liquid:moltencrudeiron> * 3200);
rutile_dust.addFluidOutput(<liquid:moltenslag> * 2400);
rutile_dust.addFluidOutput(<liquid:moltenslag> * 2400);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.build();

//Gold and silver processing
furnace.addRecipe(<minecraft:gold_ingot>, <ore:amalgamMercuryGold>.firstItem);
furnace.addRecipe(<immersiveengineering:metal:3>, <ore:amalgamMercurySilver>.firstItem);
