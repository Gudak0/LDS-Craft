#loader gregtech

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;
import mods.gregtech.ore.OrePrefix;

var infinity = MaterialBuilder(32026, "infinity")
    .ingot().fluid()
    .color(0x000000).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod", "generate_gear", "generate_long_rod"])
	.cableProperties(2147483647, 64, 0, true)
    .itemPipeProperties(2147483647, 21474836747)
    .build();

var infinity2 = MaterialBuilder(32027, "infinityfluidworkaround")
    .ingot()
    .color(0xFFFFFF).iconSet("shiny")
    .flags(["generate_plate", "generate_dense", "generate_rod", "generate_gear", "generate_long_rod"])
	.fluidPipeProperties(2147483647, 2147483647, true)
    .build();